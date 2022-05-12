#include "Xoodoo.h"
#include "print.h"
#include <stdint.h>

/**
 * @brief function to initialize empty state
 * 
 * @param state pointer to state object
 */
void Xoodoo_InitEmptyState(xoodyak_state *state){
    
    for (int y = 0; y < XOODYAK_NUMOF_PLANES; y++)
        for (int x = 0; x < XOODYAK_NUMOF_SHEETS; x++)
            for (int z = 0; z < XOODYAK_LANESIZE; z++)
                (*state)[y][x][z] = 0;

}

/**
 * @brief function to convert 384 bit vector to xoodyak_state object
 * 
 * @param vector pointer to input vector
 * @param state pointer to output state
 */
void Xoodoo_VectorToState(const unsigned char *vector, xoodyak_state *state){

    for (int y = 0; y < XOODYAK_NUMOF_PLANES; y++)
        for (int x = 0; x < XOODYAK_NUMOF_SHEETS; x++)
            for (int z = 0; z < XOODYAK_LANESIZE; z++)
                (*state)[y][x][z] = *(vector + z + 4*(x + 4*y));

}

/**
 * @brief function to convert xoodyak_state object to 384 bit vector
 * 
 * @param state pointer to input state object
 * @param vector pointer to output vector
 */
void Xoodoo_StateToVector(xoodyak_state *state, unsigned char *vector){

    for (int y = 0; y < XOODYAK_NUMOF_PLANES; y++)
        for (int x = 0; x < XOODYAK_NUMOF_SHEETS; x++)
            for (int z = 0; z < XOODYAK_LANESIZE; z++)
                *(vector + z + 4*(x + 4*y)) = (*state)[y][x][z];

}

/**
 * @brief function to convert xoodyak_state object to array of 32bit words
 * 
 * @param state pointer to input state
 * @param stateAsWords pointer to output array
 */
static void Xoodoo_StateToWords(xoodyak_state *state, uint32_t *stateAsWords){

    for (int y = 0; y < XOODYAK_NUMOF_PLANES; y++)
        for (int x = 0; x < XOODYAK_NUMOF_SHEETS; x++)
            stateAsWords[index(x, y)] = (*state)[y][x][0] | ((*state)[y][x][1] << 8) | ((*state)[y][x][2] << 16) | ((*state)[y][x][3] << 24);

}

/**
 * @brief function to convert state as array of 32bit words to xoodyak_state object
 * 
 * @param stateAsWords pointer to input state array
 * @param state pointer to output xoodyak_state object
 */
static void Xoodoo_WordsToState(uint32_t *stateAsWords, xoodyak_state *state){

    for (int y = 0; y < XOODYAK_NUMOF_PLANES; y++)
        for (int x = 0; x < XOODYAK_NUMOF_SHEETS; x++){
            (*state)[y][x][0] = stateAsWords[index(x, y)];
            (*state)[y][x][1] = stateAsWords[index(x, y)] >> 8;
            (*state)[y][x][2] = stateAsWords[index(x, y)] >> 16;
            (*state)[y][x][3] = stateAsWords[index(x, y)] >> 24;
        }

}

/**
 * @brief function to xor two xoodyak state objects, the result is written to the inout state
 * 
 * @param inout first input for the xor and also the result of the xor
 * @param in2 second argument of the xor
 */
void Xoodoo_xorStates(xoodyak_state *inout, xoodyak_state *in2){

    for (int y = 0; y < XOODYAK_NUMOF_PLANES; y++)
        for (int x = 0; x < XOODYAK_NUMOF_SHEETS; x++)
            for (int z = 0; z < XOODYAK_LANESIZE; z++)
                (*inout)[y][x][z] ^= (*in2)[y][x][z];

}

/**
 * @brief round constants array
 * 
 */
static const uint32_t    RC[XOODYAK_ROUNDS] = {
    _rc12,
    _rc11,
    _rc10,
    _rc9,
    _rc8,
    _rc7,
    _rc6,
    _rc5,
    _rc4,
    _rc3,
    _rc2,
    _rc1
};


/**
 * @brief function for performing a single permutation round
 * 
 * @param stateAsWords pointer to state as array of 32bit vectors
 * @param rc round constant
 */
static void Xoodoo_Round(uint32_t *stateAsWords, uint32_t rc){

    unsigned int x, y;
    uint32_t    B[XOODYAK_NUMOF_SHEETS*XOODYAK_NUMOF_PLANES];
    uint32_t    P[XOODYAK_NUMOF_SHEETS];
    uint32_t    E[XOODYAK_NUMOF_SHEETS];

    //Theta
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x)
        P[x] = stateAsWords[index(x,0)] ^ stateAsWords[index(x,1)] ^ stateAsWords[index(x,2)];
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x)
        E[x] = ROTL32(P[(x-1)%4], 5) ^ ROTL32(P[(x-1)%4], 14);
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x)
        for (y=0; y<XOODYAK_NUMOF_PLANES; ++y)
            stateAsWords[index(x,y)] ^= E[x];

    //Rho-west: plane shift 
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x) {
        B[index(x,1)] = stateAsWords[index(x-1,1)];
        B[index(x,2)] = ROTL32(stateAsWords[index(x,2)], 11);
    }
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x) {
        //copy back into state
        stateAsWords[index(x,1)] = B[index(x,1)];
        stateAsWords[index(x,2)] = B[index(x,2)];
    }
        
    //Iota: round constant 
    stateAsWords[0] ^= rc;

    //Chi: non linear layer 
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x)
        for (y=0; y<XOODYAK_NUMOF_PLANES; ++y)
            B[index(x,y)] = stateAsWords[index(x,y)] ^ (~stateAsWords[index(x,y+1)] & stateAsWords[index(x,y+2)]);
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x)
        for (y=0; y<XOODYAK_NUMOF_PLANES; ++y)
            stateAsWords[index(x, y)] = B[index(x, y)]; //copy back into state

    //Rho-east: plane shift */
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x) {
        B[index(x,1)] = ROTL32(stateAsWords[index(x,1)], 1);
        B[index(x,2)] = ROTL32(stateAsWords[index(x+2,2)], 8);
    }
    for (x=0; x<XOODYAK_NUMOF_SHEETS; ++x) {
        stateAsWords[index(x,1)] = B[index(x,1)];
        stateAsWords[index(x,2)] = B[index(x,2)];
    }

}

/**
 * @brief main permutation function (performs 12 rounds of permutations for hashing)
 * 
 * @param state pointer to state object
 */
void Xoodoo_Permute(xoodyak_state *state){

    //more efficient version of state for permuting by using 32-bit words
    uint32_t stateAsWords[XOODYAK_NUMOF_PLANES*XOODYAK_NUMOF_SHEETS];
    Xoodoo_StateToWords(state, stateAsWords);
    
    xoodoo_clear();                     //initialize module
    Xoodoo_wr_state(stateAsWords);      //write input state
    xoodoo_wr_rounds(XOODYAK_ROUNDS);   //write amount of rounds
    xoodoo_start();                     //start permutation
    while(XOODOO_SR == 0){}             //check if done
    Xoodoo_rd_state(stateAsWords);      //read output state and copy
    xoodoo_clear();

    Xoodoo_WordsToState(stateAsWords, state);

}

void Xoodoo_wr_state(uint32_t *state){

    for (int i = 0; i < XOODYAK_NUMOF_PLANES*XOODYAK_NUMOF_SHEETS; i++){
        (*(volatile unsigned long *) (XOODOO_INSTATE_ADDRESS + i*4)) = state[i];
    }

}

void Xoodoo_rd_state(uint32_t *state){
    for (int i = 0; i < XOODYAK_NUMOF_PLANES*XOODYAK_NUMOF_SHEETS; i++){
        state[i] = (*(volatile unsigned long *) (XOODOO_OUTSTATE_ADDRESS + i*4));
    }
}