#include "types.h"

extern s32 evtGetValue(void *, s32);
extern u32 lbl_80418970;

#pragma push
asm unknown btlevtcmd_AnnounceSetParam()
{// clang-format off
nofralloc
/* 801A5C2C 001A2C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A5C30 001A2C30  7C 08 02 A6 */	mflr r0
/* 801A5C34 001A2C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A5C38 001A2C38  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 801A5C3C 001A2C3C  7C 7D 1B 78 */	mr r29, r3
/* 801A5C40 001A2C40  80 8D 17 10 */	lwz r4, lbl_80418970
/* 801A5C44 001A2C44  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 801A5C48 001A2C48  3F C4 00 02 */	addis r30, r4, 2
/* 801A5C4C 001A2C4C  80 9F 00 00 */	lwz r4, 0(r31)
/* 801A5C50 001A2C50  3B DE 8C 70 */	addi r30, r30, -29584
/* 801A5C54 001A2C54  4B E8 AF 79 */	bl evtGetValue
/* 801A5C58 001A2C58  80 9F 00 04 */	lwz r4, 4(r31)
/* 801A5C5C 001A2C5C  7C 7F 1B 78 */	mr r31, r3
/* 801A5C60 001A2C60  7F A3 EB 78 */	mr r3, r29
/* 801A5C64 001A2C64  4B E8 AF 69 */	bl evtGetValue
/* 801A5C68 001A2C68  57 E0 10 3A */	slwi r0, r31, 2
/* 801A5C6C 001A2C6C  7C 9E 02 14 */	add r4, r30, r0
/* 801A5C70 001A2C70  90 64 00 04 */	stw r3, 4(r4)
/* 801A5C74 001A2C74  38 60 00 02 */	li r3, 2
/* 801A5C78 001A2C78  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 801A5C7C 001A2C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A5C80 001A2C80  7C 08 03 A6 */	mtlr r0
/* 801A5C84 001A2C84  38 21 00 20 */	addi r1, r1, 0x20
/* 801A5C88 001A2C88  4E 80 00 20 */	blr 
} // clang-format on
#pragma pop