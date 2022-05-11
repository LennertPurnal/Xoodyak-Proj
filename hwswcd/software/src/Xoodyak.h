#ifndef _Xoodyak_h_
#define _Xoodyak_h_

#include "Xoodoo.h"

#define MODE_HASH 1
#define MODE_KEYED 2 //will not be used in this project

#define PHASE_DOWN 1
#define PHASE_UP 2

#define R_ABSORB_HASH 16
#define R_SQUEEZE_HASH 16

#define minimum(a, b) ((a < b) ? a : b) //return minimum of two numbers

struct cyclist {
    xoodyak_state state;
    unsigned char phase;
    unsigned char mode;
    unsigned char Rabsorb;
    unsigned char Rsqueeze;
};

void cyclist_initialise_hash(struct cyclist *c);
void cyclist_absorb(struct cyclist *c, unsigned char *m, int mlen);
void cyclist_squeeze(struct cyclist *c, unsigned char *m, int mlen, unsigned char breadcrumb);

#endif