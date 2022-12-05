#include "types.h"

extern void *BattleGetObjectPtr(s32);                      /* extern */
extern void *BattleGetUnitPtr(s32, s32);                   /* extern */
extern s32 BattleTransID(void);                               /* extern */
extern s32 evtGetValue(s32);                               /* extern */
extern f64 lbl_802F9EC8;
extern unknown lbl_8039A10C;
extern s32 lbl_80418970;
extern f32 lbl_8041E790;

#pragma push
asm unknown _turn_tree(void)
{// clang-format off
nofralloc
/* 801A3638 001A0638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A363C 001A063C  7C 08 02 A6 */	mflr r0
/* 801A3640 001A0640  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A3644 001A0644  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A3648 001A0648  7C 9F 23 78 */	mr r31, r4
/* 801A364C 001A064C  38 80 FF FE */	li r4, -2
/* 801A3650 001A0650  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A3654 001A0654  7C 7E 1B 78 */	mr r30, r3
/* 801A3658 001A0658  4B F7 C8 D5 */	bl BattleTransID
/* 801A365C 001A065C  7C 60 1B 78 */	mr r0, r3
/* 801A3660 001A0660  80 6D 17 10 */	lwz r3, lbl_80418970
/* 801A3664 001A0664  7C 04 03 78 */	mr r4, r0
/* 801A3668 001A0668  4B F5 03 11 */	bl BattleGetUnitPtr
/* 801A366C 001A066C  80 63 0B 2C */	lwz r3, 0xb2c(r3)
/* 801A3670 001A0670  4B FA 1A ED */	bl BattleGetObjectPtr
/* 801A3674 001A0674  2C 1F 00 00 */	cmpwi r31, 0
/* 801A3678 001A0678  41 82 00 0C */	beq L_801A3684
/* 801A367C 001A067C  38 00 00 00 */	li r0, 0
/* 801A3680 001A0680  90 1E 00 78 */	stw r0, 0x78(r30)
L_801A3684:
/* 801A3684 001A0684  80 9E 00 78 */	lwz r4, 0x78(r30)
/* 801A3688 001A0688  38 04 00 03 */	addi r0, r4, 3
/* 801A368C 001A068C  90 1E 00 78 */	stw r0, 0x78(r30)
/* 801A3690 001A0690  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 801A3694 001A0694  2C 00 00 5A */	cmpwi r0, 0x5a
/* 801A3698 001A0698  40 81 00 14 */	ble L_801A36AC
/* 801A369C 001A069C  C0 02 D4 10 */	lfs f0, lbl_8041E790
/* 801A36A0 001A06A0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801A36A4 001A06A4  38 60 00 02 */	li r3, 2
/* 801A36A8 001A06A8  48 00 00 2C */	b L_801A36D4
L_801A36AC:
/* 801A36AC 001A06AC  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 801A36B0 001A06B0  3C 00 43 30 */	lis r0, 0x4330
/* 801A36B4 001A06B4  90 81 00 0C */	stw r4, 0xc(r1)
/* 801A36B8 001A06B8  3C A0 80 30 */	lis r5, lbl_802F9EC8@ha
/* 801A36BC 001A06BC  C8 25 9E C8 */	lfd f1, lbl_802F9EC8@l(r5)
/* 801A36C0 001A06C0  90 01 00 08 */	stw r0, 8(r1)
/* 801A36C4 001A06C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A36C8 001A06C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A36CC 001A06CC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801A36D0 001A06D0  38 60 00 00 */	li r3, 0
L_801A36D4:
/* 801A36D4 001A06D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A36D8 001A06D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A36DC 001A06DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A36E0 001A06E0  7C 08 03 A6 */	mtlr r0
/* 801A36E4 001A06E4  38 21 00 20 */	addi r1, r1, 0x20
/* 801A36E8 001A06E8  4E 80 00 20 */	blr  
} // clang-format on
#pragma pop

#pragma push
asm unknown _rumble_tree(void)
{// clang-format off
nofralloc
//.global _rumble_tree
//_rumble_tree:
/* 801A36EC 001A06EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A36F0 001A06F0  7C 08 02 A6 */	mflr r0
/* 801A36F4 001A06F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A36F8 001A06F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801A36FC 001A06FC  7C 7F 1B 78 */	mr r31, r3
/* 801A3700 001A0700  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801A3704 001A0704  7C 9E 23 78 */	mr r30, r4
/* 801A3708 001A0708  80 83 00 18 */	lwz r4, 0x18(r3)
/* 801A370C 001A070C  80 84 00 00 */	lwz r4, 0(r4)
/* 801A3710 001A0710  4B E8 D4 BD */	bl evtGetValue
/* 801A3714 001A0714  7C 60 1B 78 */	mr r0, r3
/* 801A3718 001A0718  7F E3 FB 78 */	mr r3, r31
/* 801A371C 001A071C  7C 04 03 78 */	mr r4, r0
/* 801A3720 001A0720  4B F7 C8 0D */	bl BattleTransID
/* 801A3724 001A0724  7C 64 1B 78 */	mr r4, r3
/* 801A3728 001A0728  80 6D 17 10 */	lwz r3, lbl_80418970
/* 801A372C 001A072C  4B F5 02 4D */	bl BattleGetUnitPtr
/* 801A3730 001A0730  28 03 00 00 */	cmplwi r3, 0
/* 801A3734 001A0734  40 82 00 0C */	bne L_801A3740
/* 801A3738 001A0738  38 60 00 02 */	li r3, 2
/* 801A373C 001A073C  48 00 00 80 */	b L_801A37BC
L_801A3740:
/* 801A3740 001A0740  80 63 0B 2C */	lwz r3, 0xb2c(r3)
/* 801A3744 001A0744  4B FA 1A 19 */	bl BattleGetObjectPtr
/* 801A3748 001A0748  2C 1E 00 00 */	cmpwi r30, 0
/* 801A374C 001A074C  41 82 00 0C */	beq L_801A3758
/* 801A3750 001A0750  38 00 00 00 */	li r0, 0
/* 801A3754 001A0754  90 1F 00 78 */	stw r0, 0x78(r31)
L_801A3758:
/* 801A3758 001A0758  80 DF 00 78 */	lwz r6, 0x78(r31)
/* 801A375C 001A075C  3C A0 80 3A */	lis r5, lbl_8039A10C@ha
/* 801A3760 001A0760  3C 00 43 30 */	lis r0, 0x4330
/* 801A3764 001A0764  3C 80 80 30 */	lis r4, lbl_802F9EC8@ha
/* 801A3768 001A0768  54 C6 10 3A */	slwi r6, r6, 2
/* 801A376C 001A076C  38 A5 A1 0C */	addi r5, r5, lbl_8039A10C@l
/* 801A3770 001A0770  7C A5 30 2E */	lwzx r5, r5, r6
/* 801A3774 001A0774  90 01 00 08 */	stw r0, 8(r1)
/* 801A3778 001A0778  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801A377C 001A077C  C8 24 9E C8 */	lfd f1, lbl_802F9EC8@l(r4)
/* 801A3780 001A0780  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A3784 001A0784  C0 43 00 08 */	lfs f2, 8(r3)
/* 801A3788 001A0788  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A378C 001A078C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A3790 001A0790  EC 02 00 2A */	fadds f0, f2, f0
/* 801A3794 001A0794  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A3798 001A0798  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 801A379C 001A079C  38 03 00 01 */	addi r0, r3, 1
/* 801A37A0 001A07A0  90 1F 00 78 */	stw r0, 0x78(r31)
/* 801A37A4 001A07A4  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 801A37A8 001A07A8  28 00 00 22 */	cmplwi r0, 0x22
/* 801A37AC 001A07AC  41 80 00 0C */	blt L_801A37B8
/* 801A37B0 001A07B0  38 60 00 02 */	li r3, 2
/* 801A37B4 001A07B4  48 00 00 08 */	b L_801A37BC
L_801A37B8:
/* 801A37B8 001A07B8  38 60 00 00 */	li r3, 0
L_801A37BC:
/* 801A37BC 001A07BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A37C0 001A07C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801A37C4 001A07C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801A37C8 001A07C8  7C 08 03 A6 */	mtlr r0
/* 801A37CC 001A07CC  38 21 00 20 */	addi r1, r1, 0x20
/* 801A37D0 001A07D0  4E 80 00 20 */	blr 
} // clang-format on
#pragma pop