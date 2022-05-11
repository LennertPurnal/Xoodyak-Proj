#ifndef _Xoodoo_h_
#define _Xoodoo_h_

#define XOODYAK_NUMOF_SHEETS 4 // this is the X coordinate
#define XOODYAK_NUMOF_PLANES 3 // this is the Y coordinate
#define XOODYAK_LANESIZE 4 // this is the Z coordinate
#define XOODYAK_STATESIZE (XOODYAK_NUMOF_SHEETS*XOODYAK_NUMOF_PLANES*XOODYAK_LANESIZE)

#define XOODYAK_ROUNDS 12 //amount of xoodoo rounds for xoodyak

typedef unsigned char xoodyak_lane[XOODYAK_LANESIZE];
typedef xoodyak_lane xoodyak_plane[XOODYAK_NUMOF_SHEETS];
typedef xoodyak_plane xoodyak_state[XOODYAK_NUMOF_PLANES];

/*    Round constants    */
#define _rc12   0x00000058
#define _rc11   0x00000038
#define _rc10   0x000003C0
#define _rc9    0x000000D0
#define _rc8    0x00000120
#define _rc7    0x00000014
#define _rc6    0x00000060
#define _rc5    0x0000002C
#define _rc4    0x00000380
#define _rc3    0x000000F0
#define _rc2    0x000001A0
#define _rc1    0x00000012

//utilities for operations on lanes. idea from: https://github.com/XKCP/XKCP
#define ROTL32(a, offset)       ((((uint32_t)a) << ((offset)%32)) ^ (((uint32_t)a) >> ((32-(offset))%32)))
#define index(__x,__y)          ((((__y) % XOODYAK_NUMOF_PLANES) * XOODYAK_NUMOF_SHEETS) + ((__x) % XOODYAK_NUMOF_SHEETS))

void Xoodoo_InitEmptyState(xoodyak_state *state);
void Xoodoo_VectorToState(const unsigned char *vector, xoodyak_state *state);
void Xoodoo_StateToVector(xoodyak_state *state, unsigned char *vector);
void Xoodoo_Permute(xoodyak_state *state);
void Xoodoo_xorStates(xoodyak_state *inout, xoodyak_state *in2);

#endif