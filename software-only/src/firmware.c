#include "Xoodoo.h"
#include "Xoodyak.h"
//#include "print.h"

#define MESSAGE_LENGTH 40
#define XOODYAK_DIGEST_SIZE 32

void main(void){


    /* unsigned char input[48];
    unsigned char output[48];

    xoodyak_state* state = malloc(sizeof(xoodyak_state));
    Xoodoo_InitEmptyState(state);
    //Xoodoo_VectorToState(input, state);

    Xoodoo_StateToVector(state, input);
    printf("input = ");
    for (int i = 0; i < 12; i++)
        printf("0x%02x%02x%02x%02x ", input[i*4+3], input[i*4+2], input[i*4+1], input[i*4]); //back to front because endiannes
    printf("\n");

    for (int i = 0; i < 384; i++)
        Xoodoo_Permute(state); 

    Xoodoo_StateToVector(state, output);
    printf("output = ");
    for (int i = 0; i < 12; i++)
        printf("0x%02x%02x%02x%02x ", output[i*4+3], output[i*4+2], output[i*4+1], output[i*4]); //back to front because endiannes
    printf("\n");  */

    //**************************************************************************//

    struct cyclist cy;
    unsigned char message[MESSAGE_LENGTH] = "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x0B\x0C\x0D\x0E\x0F\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1A\x1B\x1C\x1D\x1E\x1F\x20\x21\x22\x23\x24\x25\x26\x27";
    unsigned char digest[XOODYAK_DIGEST_SIZE];

    // HASHING
    /* create a cyclist */
    cyclist_initialise_hash(&cy);

    /* absorb the message*/
    cyclist_absorb(&cy, message, MESSAGE_LENGTH);

    /* squeeze out the digest */
    cyclist_squeeze(&cy, digest, XOODYAK_DIGEST_SIZE, 0x40);

    /* printf("MSG = ");
    for (int i = 0; i < MESSAGE_LENGTH; i++)
        printf("%02x", message[i]);
    
    printf("\nMD = ");
    for (int i = 0; i < XOODYAK_DIGEST_SIZE; i++)
        printf("%02x", digest[i]);
    printf("\n"); */
}