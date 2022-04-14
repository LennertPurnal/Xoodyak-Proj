#include "Xoodyak.h"

static void cyclist_absorbAny(struct cyclist *c, unsigned char *m, unsigned int mlen, unsigned int r, unsigned int cd);
static void cyclist_squeezeAny(struct cyclist *c, unsigned char *Y, unsigned int Y_len, unsigned char cu);
static void cyclist_down(struct cyclist *c, unsigned char *Xi, unsigned int Xi_len, unsigned int cd);
static void cyclist_up(struct cyclist *c, unsigned char *Yi, unsigned int Yi_len, unsigned char cu);

/**
 * @brief Construct a new cyclist object in hash mode
 * 
 * @param c pointer to the cyclist struct
 */
void cyclist_initialise_hash(struct cyclist *c){
    Xoodoo_InitEmptyState(&(c->state));
    c->phase = PHASE_UP;
    c->mode = MODE_HASH;
    c->Rabsorb = R_ABSORB_HASH;
    c->Rsqueeze = R_SQUEEZE_HASH;
}

/**
 * @brief function for absorbing message
 * 
 * @param c pointer to cyclist struct
 * @param m pointer to message
 * @param mlen message length
 */
void cyclist_absorb(struct cyclist *c, unsigned char *m, int mlen){
    
    cyclist_absorbAny(c, m, mlen, c->Rabsorb, 0x03);

}

/**
 * @brief fucntion for squeezing message
 * 
 * @param c pointer to cyclist struct
 * @param m pointer to output message
 * @param mlen requested message length
 * @param breadcrumb breadcrumb (0x40 for hashing)
 */
void cyclist_squeeze(struct cyclist *c, unsigned char *m, int mlen, unsigned char breadcrumb){

    cyclist_squeezeAny(c, m, mlen, breadcrumb);

}

/**
 * @brief internal function for DOWN operation
 * 
 */
static void cyclist_down(struct cyclist *c, unsigned char *Xi, unsigned int Xi_len, unsigned int cd){

    //create vector for the temporary state
    unsigned char tempState[XOODYAK_STATESIZE];
    // first bytes are |Xi|
    for (int i = 0; i < Xi_len; i++){
        tempState[i] = Xi[i];
    }
    //followed by 0x01
    tempState[Xi_len] = 0x01;
    //fill rest of bytes up to the third last with 0x0
    for (int i = (Xi_len+1); i < (XOODYAK_STATESIZE-1); i++){
        tempState[i] = 0x00;
    }
    //last byte depends if this is first input. the breadcrumb is xor'ed with 0x01 if mode is hashed (which it always is for this project) 
    tempState[XOODYAK_STATESIZE-1] = (c->mode == MODE_HASH) ? (cd & 0x01) : cd;

    //convert the tempState vector to xoodyak_state object
    xoodyak_state tempStateObj;
    Xoodoo_VectorToState(tempState, &tempStateObj);
    //xor the cyclist state with the tempstate
    Xoodoo_xorStates(&(c->state), &tempStateObj);

    c->phase = PHASE_DOWN;

}

/**
 * @brief internal function for UP operation
 * 
 */
static void cyclist_up(struct cyclist *c, unsigned char *Yi, unsigned int Yi_len, unsigned char cu){

    Xoodoo_Permute(&(c->state));

    //return correct bytes for squeeze
    unsigned char intermediate[XOODYAK_STATESIZE];
    Xoodoo_StateToVector(&(c->state), intermediate);

    for (int i = 0; i < Yi_len; i++)
        Yi[i] = intermediate[i];

    c->phase = PHASE_UP;
}

/**
 * @brief internal interface for absorbing
 * 
 * @param c pointer to cyclist structure
 * @param m pointer to message
 * @param mlen message length
 * @param r bitrate
 * @param cd breadcrumb
 */
static void cyclist_absorbAny(struct cyclist *c, unsigned char *m, unsigned int mlen, unsigned int r, unsigned int cd){

    unsigned int splitLen; //amount of bytes that have to be taken from the message
    unsigned char* discard; //pointer to output of up operation (that is to be discarded)

    do {
        if (c->phase != PHASE_UP){
            cyclist_up(c, discard, 0, 0);
        }  
        splitLen = (unsigned int)minimum(mlen, r);
        cyclist_down(c, m, splitLen, cd);
        cd = 0;
        m += splitLen; //point to next block to be processed
        mlen -= splitLen;

    } while ( mlen != 0);
    
}

/**
 * @brief internal interface for squeezing
 * 
 * @param c pointer to cyclist structure
 * @param Y pointer to output message
 * @param Y_len required output length in bytes
 * @param cu breadcrumb
 */
static void cyclist_squeezeAny(struct cyclist *c, unsigned char *Y, unsigned int Y_len, unsigned char cu){

    unsigned int len;
    unsigned char* nothing; //for pointing to nothing in down operation

    len = (unsigned int)minimum(Y_len, c->Rsqueeze);
    cyclist_up(c, Y, len, cu);
    Y += len;
    Y_len -= len;
    while (Y_len != 0){
        cyclist_down(c, nothing, 0, 0);
        len = (unsigned int)minimum(Y_len, c->Rsqueeze);
        cyclist_up(c, Y, len, 0);
        Y += len;
        Y_len -= len;
    }

}