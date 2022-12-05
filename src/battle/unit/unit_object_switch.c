#include "types.h"

extern void *BattleGetObjectPtr(s32);                      /* extern */
extern void *BattleGetUnitPtr(s32, s32);                   /* extern */
extern s32 BattleTransID(void *, s32);                     /* extern */
extern s32 evtGetValue(s32);                               /* extern */
extern f64 lbl_802F9F50;
extern unknown lbl_8039A364;
extern s32 lbl_80418970;

#pragma push
asm unknown _rumble_switch(void)
{// clang-format off
nofralloc
/* 801A37D4 001A07D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A37D8 001A07D8  7C 08 02 A6 */	mflr r0
/* 801A37DC 001A07DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A37E0 001A07E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A37E4 001A07E4  7C 7F 1B 78 */	mr r31, r3
/* 801A37E8 001A07E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A37EC 001A07EC  7C 9E 23 78 */	mr r30, r4
/* 801A37F0 001A07F0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 801A37F4 001A07F4  80 84 00 00 */	lwz r4, 0(r4)
/* 801A37F8 001A07F8  4B E8 D3 D5 */	bl evtGetValue
/* 801A37FC 001A07FC  7C 60 1B 78 */	mr r0, r3
/* 801A3800 001A0800  7F E3 FB 78 */	mr r3, r31
/* 801A3804 001A0804  7C 04 03 78 */	mr r4, r0
/* 801A3808 001A0808  4B F7 C7 25 */	bl BattleTransID
/* 801A380C 001A080C  7C 64 1B 78 */	mr r4, r3
/* 801A3810 001A0810  80 6D 17 10 */	lwz r3, lbl_80418970
/* 801A3814 001A0814  4B F5 01 65 */	bl BattleGetUnitPtr
/* 801A3818 001A0818  28 03 00 00 */	cmplwi r3, 0
/* 801A381C 001A081C  40 82 00 0C */	bne L_801A3828
/* 801A3820 001A0820  38 60 00 02 */	li r3, 2
/* 801A3824 001A0824  48 00 00 80 */	b L_801A38A4
L_801A3828:
/* 801A3828 001A0828  80 63 0B 2C */	lwz r3, 0xb2c(r3)
/* 801A382C 001A082C  4B FA 19 31 */	bl BattleGetObjectPtr
/* 801A3830 001A0830  2C 1E 00 00 */	cmpwi r30, 0
/* 801A3834 001A0834  41 82 00 0C */	beq L_801A3840
/* 801A3838 001A0838  38 00 00 00 */	li r0, 0
/* 801A383C 001A083C  90 1F 00 78 */	stw r0, 0x78(r31)
L_801A3840:
/* 801A3840 001A0840  80 DF 00 78 */	lwz r6, 0x78(r31)
/* 801A3844 001A0844  3C A0 80 3A */	lis r5, lbl_8039A364@ha
/* 801A3848 001A0848  3C 00 43 30 */	lis r0, 0x4330
/* 801A384C 001A084C  3C 80 80 30 */	lis r4, lbl_802F9F50@ha
/* 801A3850 001A0850  54 C6 10 3A */	slwi r6, r6, 2
/* 801A3854 001A0854  38 A5 A3 64 */	addi r5, r5, lbl_8039A364@l
/* 801A3858 001A0858  7C A5 30 2E */	lwzx r5, r5, r6
/* 801A385C 001A085C  90 01 00 08 */	stw r0, 8(r1)
/* 801A3860 001A0860  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801A3864 001A0864  C8 24 9F 50 */	lfd f1, lbl_802F9F50@l(r4)
/* 801A3868 001A0868  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A386C 001A086C  C0 43 00 08 */	lfs f2, 8(r3)
/* 801A3870 001A0870  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A3874 001A0874  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A3878 001A0878  EC 02 00 2A */	fadds f0, f2, f0
/* 801A387C 001A087C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A3880 001A0880  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 801A3884 001A0884  38 03 00 01 */	addi r0, r3, 1
/* 801A3888 001A0888  90 1F 00 78 */	stw r0, 0x78(r31)
/* 801A388C 001A088C  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 801A3890 001A0890  28 00 00 22 */	cmplwi r0, 0x22
/* 801A3894 001A0894  41 80 00 0C */	blt L_801A38A0
/* 801A3898 001A0898  38 60 00 02 */	li r3, 2
/* 801A389C 001A089C  48 00 00 08 */	b L_801A38A4
L_801A38A0:
/* 801A38A0 001A08A0  38 60 00 00 */	li r3, 0
L_801A38A4:
/* 801A38A4 001A08A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A38A8 001A08A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A38AC 001A08AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A38B0 001A08B0  7C 08 03 A6 */	mtlr r0
/* 801A38B4 001A08B4  38 21 00 20 */	addi r1, r1, 0x20
/* 801A38B8 001A08B8  4E 80 00 20 */	blr 
} // clang-format on
#pragma pop