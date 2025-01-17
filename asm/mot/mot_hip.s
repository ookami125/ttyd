.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global mot_hip_post
mot_hip_post:
/* 80185AA4 00182AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80185AA8 00182AA8  7C 08 02 A6 */	mflr r0
/* 80185AAC 00182AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80185AB0 00182AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80185AB4 00182AB4  4B ED 77 61 */	bl marioGetPtr
/* 80185AB8 00182AB8  7C 7F 1B 78 */	mr r31, r3
/* 80185ABC 00182ABC  4B ED 51 F5 */	bl marioOfsRotReset
/* 80185AC0 00182AC0  38 00 00 00 */	li r0, 0
/* 80185AC4 00182AC4  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 80185AC8 00182AC8  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 80185ACC 00182ACC  80 7F 02 A4 */	lwz r3, 0x2a4(r31)
/* 80185AD0 00182AD0  3C 03 00 01 */	addis r0, r3, 1
/* 80185AD4 00182AD4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80185AD8 00182AD8  41 82 00 10 */	beq .L_80185AE8
/* 80185ADC 00182ADC  4B F4 F7 21 */	bl psndSFXOff
/* 80185AE0 00182AE0  38 00 FF FF */	li r0, -1
/* 80185AE4 00182AE4  90 1F 02 A4 */	stw r0, 0x2a4(r31)
.L_80185AE8:
/* 80185AE8 00182AE8  80 7F 02 A8 */	lwz r3, 0x2a8(r31)
/* 80185AEC 00182AEC  3C 03 00 01 */	addis r0, r3, 1
/* 80185AF0 00182AF0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80185AF4 00182AF4  41 82 00 10 */	beq .L_80185B04
/* 80185AF8 00182AF8  4B F4 F7 05 */	bl psndSFXOff
/* 80185AFC 00182AFC  38 00 FF FF */	li r0, -1
/* 80185B00 00182B00  90 1F 02 A8 */	stw r0, 0x2a8(r31)
.L_80185B04:
/* 80185B04 00182B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80185B08 00182B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80185B0C 00182B0C  7C 08 03 A6 */	mtlr r0
/* 80185B10 00182B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80185B14 00182B14  4E 80 00 20 */	blr 

.global U_chkground
U_chkground:
/* 80185B18 00182B18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80185B1C 00182B1C  7C 08 02 A6 */	mflr r0
/* 80185B20 00182B20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80185B24 00182B24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80185B28 00182B28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80185B2C 00182B2C  4B ED 76 E9 */	bl marioGetPtr
/* 80185B30 00182B30  C0 22 CC E0 */	lfs f1, lbl_8041E060@sda21(r2)
/* 80185B34 00182B34  7C 7F 1B 78 */	mr r31, r3
/* 80185B38 00182B38  38 61 00 08 */	addi r3, r1, 8
/* 80185B3C 00182B3C  4B F0 6B 99 */	bl marioChkLandon
/* 80185B40 00182B40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80185B44 00182B44  41 82 00 B4 */	beq .L_80185BF8
/* 80185B48 00182B48  93 DF 01 E4 */	stw r30, 0x1e4(r31)
/* 80185B4C 00182B4C  38 00 00 00 */	li r0, 0
/* 80185B50 00182B50  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80185B54 00182B54  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 80185B58 00182B58  C0 21 00 08 */	lfs f1, 8(r1)
/* 80185B5C 00182B5C  D0 3F 00 90 */	stfs f1, 0x90(r31)
/* 80185B60 00182B60  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
/* 80185B64 00182B64  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 80185B68 00182B68  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 80185B6C 00182B6C  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 80185B70 00182B70  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 80185B74 00182B74  80 1F 00 04 */	lwz r0, 4(r31)
/* 80185B78 00182B78  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80185B7C 00182B7C  90 1F 00 04 */	stw r0, 4(r31)
/* 80185B80 00182B80  80 1F 00 00 */	lwz r0, 0(r31)
/* 80185B84 00182B84  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80185B88 00182B88  90 1F 00 00 */	stw r0, 0(r31)
/* 80185B8C 00182B8C  48 01 D3 9D */	bl camFollowYOn
/* 80185B90 00182B90  7F C3 F3 78 */	mr r3, r30
/* 80185B94 00182B94  4B E8 E4 C5 */	bl hitGetAttr
/* 80185B98 00182B98  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80185B9C 00182B9C  41 82 00 34 */	beq .L_80185BD0
/* 80185BA0 00182BA0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80185BA4 00182BA4  4B FB 05 31 */	bl set_damage_root_ypos
/* 80185BA8 00182BA8  C0 22 CC E8 */	lfs f1, lbl_8041E068@sda21(r2)
/* 80185BAC 00182BAC  38 60 00 1F */	li r3, 0x1f
/* 80185BB0 00182BB0  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80185BB4 00182BB4  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 80185BB8 00182BB8  D0 3F 00 80 */	stfs f1, 0x80(r31)
/* 80185BBC 00182BBC  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80185BC0 00182BC0  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 80185BC4 00182BC4  4B F0 D2 51 */	bl marioChgMot
/* 80185BC8 00182BC8  38 60 00 01 */	li r3, 1
/* 80185BCC 00182BCC  48 00 00 30 */	b .L_80185BFC
.L_80185BD0:
/* 80185BD0 00182BD0  54 60 05 2B */	rlwinm. r0, r3, 0, 0x14, 0x15
/* 80185BD4 00182BD4  41 82 00 1C */	beq .L_80185BF0
/* 80185BD8 00182BD8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80185BDC 00182BDC  4B FB 04 F9 */	bl set_damage_root_ypos
/* 80185BE0 00182BE0  38 60 00 20 */	li r3, 0x20
/* 80185BE4 00182BE4  4B F0 D2 31 */	bl marioChgMot
/* 80185BE8 00182BE8  38 60 00 01 */	li r3, 1
/* 80185BEC 00182BEC  48 00 00 10 */	b .L_80185BFC
.L_80185BF0:
/* 80185BF0 00182BF0  38 60 00 02 */	li r3, 2
/* 80185BF4 00182BF4  48 00 00 08 */	b .L_80185BFC
.L_80185BF8:
/* 80185BF8 00182BF8  38 60 00 00 */	li r3, 0
.L_80185BFC:
/* 80185BFC 00182BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80185C00 00182C00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80185C04 00182C04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80185C08 00182C08  7C 08 03 A6 */	mtlr r0
/* 80185C0C 00182C0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80185C10 00182C10  4E 80 00 20 */	blr 

.global mot_hip
mot_hip:
/* 80185C14 00182C14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80185C18 00182C18  7C 08 02 A6 */	mflr r0
/* 80185C1C 00182C1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80185C20 00182C20  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80185C24 00182C24  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80185C28 00182C28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80185C2C 00182C2C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80185C30 00182C30  4B ED 75 E5 */	bl marioGetPtr
/* 80185C34 00182C34  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80185C38 00182C38  7C 7F 1B 78 */	mr r31, r3
/* 80185C3C 00182C3C  2C 00 00 02 */	cmpwi r0, 2
/* 80185C40 00182C40  40 82 00 0C */	bne .L_80185C4C
/* 80185C44 00182C44  48 08 DD A1 */	bl kpa_hip
/* 80185C48 00182C48  48 00 07 34 */	b .L_8018637C
.L_80185C4C:
/* 80185C4C 00182C4C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80185C50 00182C50  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80185C54 00182C54  41 82 01 04 */	beq .L_80185D58
/* 80185C58 00182C58  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 80185C5C 00182C5C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80185C60 00182C60  80 1F 00 00 */	lwz r0, 0(r31)
/* 80185C64 00182C64  54 00 04 16 */	rlwinm r0, r0, 0, 0x10, 0xb
/* 80185C68 00182C68  90 1F 00 00 */	stw r0, 0(r31)
/* 80185C6C 00182C6C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80185C70 00182C70  64 00 00 02 */	oris r0, r0, 2
/* 80185C74 00182C74  90 1F 00 00 */	stw r0, 0(r31)
/* 80185C78 00182C78  80 1F 00 00 */	lwz r0, 0(r31)
/* 80185C7C 00182C7C  60 00 00 80 */	ori r0, r0, 0x80
/* 80185C80 00182C80  90 1F 00 00 */	stw r0, 0(r31)
/* 80185C84 00182C84  4B F0 F1 CD */	bl marioAdjustMoveDir
/* 80185C88 00182C88  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80185C8C 00182C8C  38 00 00 00 */	li r0, 0
/* 80185C90 00182C90  C0 02 CC F0 */	lfs f0, lbl_8041E070@sda21(r2)
/* 80185C94 00182C94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80185C98 00182C98  4C 41 13 82 */	cror 2, 1, 2
/* 80185C9C 00182C9C  40 82 00 18 */	bne .L_80185CB4
/* 80185CA0 00182CA0  C0 02 CC F4 */	lfs f0, lbl_8041E074@sda21(r2)
/* 80185CA4 00182CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80185CA8 00182CA8  4C 40 13 82 */	cror 2, 0, 2
/* 80185CAC 00182CAC  40 82 00 08 */	bne .L_80185CB4
/* 80185CB0 00182CB0  38 00 00 01 */	li r0, 1
.L_80185CB4:
/* 80185CB4 00182CB4  2C 00 00 00 */	cmpwi r0, 0
/* 80185CB8 00182CB8  41 82 00 0C */	beq .L_80185CC4
/* 80185CBC 00182CBC  C0 22 CC EC */	lfs f1, lbl_8041E06C@sda21(r2)
/* 80185CC0 00182CC0  48 00 00 08 */	b .L_80185CC8
.L_80185CC4:
/* 80185CC4 00182CC4  C0 22 CC E4 */	lfs f1, lbl_8041E064@sda21(r2)
.L_80185CC8:
/* 80185CC8 00182CC8  4B F0 EF 9D */	bl toMovedir
/* 80185CCC 00182CCC  D0 3F 01 9C */	stfs f1, 0x19c(r31)
/* 80185CD0 00182CD0  3C 60 80 30 */	lis r3, lbl_802F8BF8@ha
/* 80185CD4 00182CD4  38 63 8B F8 */	addi r3, r3, lbl_802F8BF8@l
/* 80185CD8 00182CD8  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80185CDC 00182CDC  D0 1F 01 A0 */	stfs f0, 0x1a0(r31)
/* 80185CE0 00182CE0  4B ED 22 65 */	bl marioChgPose
/* 80185CE4 00182CE4  C0 22 CC F8 */	lfs f1, lbl_8041E078@sda21(r2)
/* 80185CE8 00182CE8  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80185CEC 00182CEC  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 80185CF0 00182CF0  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80185CF4 00182CF4  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80185CF8 00182CF8  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 80185CFC 00182CFC  4B ED 1D A1 */	bl marioGetScale
/* 80185D00 00182D00  C0 02 CC FC */	lfs f0, lbl_8041E07C@sda21(r2)
/* 80185D04 00182D04  C0 42 CD 00 */	lfs f2, lbl_8041E080@sda21(r2)
/* 80185D08 00182D08  EC 20 00 72 */	fmuls f1, f0, f1
/* 80185D0C 00182D0C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80185D10 00182D10  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80185D14 00182D14  EC 00 08 2A */	fadds f0, f0, f1
/* 80185D18 00182D18  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 80185D1C 00182D1C  4B ED 1D 81 */	bl marioGetScale
/* 80185D20 00182D20  C0 02 CD 04 */	lfs f0, lbl_8041E084@sda21(r2)
/* 80185D24 00182D24  38 60 00 00 */	li r3, 0
/* 80185D28 00182D28  C0 42 CD 00 */	lfs f2, lbl_8041E080@sda21(r2)
/* 80185D2C 00182D2C  38 00 FF FF */	li r0, -1
/* 80185D30 00182D30  EC 60 00 72 */	fmuls f3, f0, f1
/* 80185D34 00182D34  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80185D38 00182D38  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80185D3C 00182D3C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80185D40 00182D40  EC 21 10 2A */	fadds f1, f1, f2
/* 80185D44 00182D44  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
/* 80185D48 00182D48  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 80185D4C 00182D4C  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80185D50 00182D50  90 1F 02 A4 */	stw r0, 0x2a4(r31)
/* 80185D54 00182D54  90 1F 02 A8 */	stw r0, 0x2a8(r31)
.L_80185D58:
/* 80185D58 00182D58  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80185D5C 00182D5C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80185D60 00182D60  41 82 03 54 */	beq .L_801860B4
/* 80185D64 00182D64  40 80 00 2C */	bge .L_80185D90
/* 80185D68 00182D68  2C 00 00 02 */	cmpwi r0, 2
/* 80185D6C 00182D6C  41 82 01 80 */	beq .L_80185EEC
/* 80185D70 00182D70  40 80 00 14 */	bge .L_80185D84
/* 80185D74 00182D74  2C 00 00 00 */	cmpwi r0, 0
/* 80185D78 00182D78  41 82 00 34 */	beq .L_80185DAC
/* 80185D7C 00182D7C  40 80 00 64 */	bge .L_80185DE0
/* 80185D80 00182D80  48 00 05 D8 */	b .L_80186358
.L_80185D84:
/* 80185D84 00182D84  2C 00 00 0A */	cmpwi r0, 0xa
/* 80185D88 00182D88  41 82 02 38 */	beq .L_80185FC0
/* 80185D8C 00182D8C  48 00 05 CC */	b .L_80186358
.L_80185D90:
/* 80185D90 00182D90  2C 00 00 32 */	cmpwi r0, 0x32
/* 80185D94 00182D94  41 82 05 64 */	beq .L_801862F8
/* 80185D98 00182D98  40 80 05 C0 */	bge .L_80186358
/* 80185D9C 00182D9C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80185DA0 00182DA0  41 82 04 A8 */	beq .L_80186248
/* 80185DA4 00182DA4  40 80 05 B4 */	bge .L_80186358
/* 80185DA8 00182DA8  48 00 03 20 */	b .L_801860C8
.L_80185DAC:
/* 80185DAC 00182DAC  38 9F 00 8C */	addi r4, r31, 0x8c
/* 80185DB0 00182DB0  38 60 01 58 */	li r3, 0x158
/* 80185DB4 00182DB4  4B F4 F6 99 */	bl psndSFXOn_3D
/* 80185DB8 00182DB8  90 7F 02 A4 */	stw r3, 0x2a4(r31)
/* 80185DBC 00182DBC  38 9F 00 8C */	addi r4, r31, 0x8c
/* 80185DC0 00182DC0  38 60 00 DB */	li r3, 0xdb
/* 80185DC4 00182DC4  4B F4 F6 89 */	bl psndSFXOn_3D
/* 80185DC8 00182DC8  90 7F 02 A8 */	stw r3, 0x2a8(r31)
/* 80185DCC 00182DCC  38 00 00 01 */	li r0, 1
/* 80185DD0 00182DD0  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80185DD4 00182DD4  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
/* 80185DD8 00182DD8  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 80185DDC 00182DDC  90 1F 00 44 */	stw r0, 0x44(r31)
.L_80185DE0:
/* 80185DE0 00182DE0  C0 5F 02 A0 */	lfs f2, 0x2a0(r31)
/* 80185DE4 00182DE4  C0 22 CD 08 */	lfs f1, lbl_8041E088@sda21(r2)
/* 80185DE8 00182DE8  C0 02 CD 0C */	lfs f0, lbl_8041E08C@sda21(r2)
/* 80185DEC 00182DEC  EC 22 08 2A */	fadds f1, f2, f1
/* 80185DF0 00182DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80185DF4 00182DF4  D0 3F 02 A0 */	stfs f1, 0x2a0(r31)
/* 80185DF8 00182DF8  4C 41 13 82 */	cror 2, 1, 2
/* 80185DFC 00182DFC  40 82 00 08 */	bne .L_80185E04
/* 80185E00 00182E00  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
.L_80185E04:
/* 80185E04 00182E04  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80185E08 00182E08  C0 02 CD 10 */	lfs f0, lbl_8041E090@sda21(r2)
/* 80185E0C 00182E0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80185E10 00182E10  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80185E14 00182E14  80 1F 01 F4 */	lwz r0, 0x1f4(r31)
/* 80185E18 00182E18  28 00 00 00 */	cmplwi r0, 0
/* 80185E1C 00182E1C  40 82 00 14 */	bne .L_80185E30
/* 80185E20 00182E20  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80185E24 00182E24  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80185E28 00182E28  EC 01 00 2A */	fadds f0, f1, f0
/* 80185E2C 00182E2C  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
.L_80185E30:
/* 80185E30 00182E30  C0 22 CD 0C */	lfs f1, lbl_8041E08C@sda21(r2)
/* 80185E34 00182E34  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80185E38 00182E38  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80185E3C 00182E3C  40 82 00 30 */	bne .L_80185E6C
/* 80185E40 00182E40  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80185E44 00182E44  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80185E48 00182E48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80185E4C 00182E4C  4C 40 13 82 */	cror 2, 0, 2
/* 80185E50 00182E50  40 82 00 1C */	bne .L_80185E6C
/* 80185E54 00182E54  38 60 00 05 */	li r3, 5
/* 80185E58 00182E58  38 00 00 02 */	li r0, 2
/* 80185E5C 00182E5C  90 7F 00 48 */	stw r3, 0x48(r31)
/* 80185E60 00182E60  C0 02 CD 14 */	lfs f0, lbl_8041E094@sda21(r2)
/* 80185E64 00182E64  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80185E68 00182E68  D0 1F 00 7C */	stfs f0, 0x7c(r31)
.L_80185E6C:
/* 80185E6C 00182E6C  4B FF FC AD */	bl U_chkground
/* 80185E70 00182E70  2C 03 00 02 */	cmpwi r3, 2
/* 80185E74 00182E74  41 82 00 18 */	beq .L_80185E8C
/* 80185E78 00182E78  40 80 04 E0 */	bge .L_80186358
/* 80185E7C 00182E7C  2C 03 00 01 */	cmpwi r3, 1
/* 80185E80 00182E80  40 80 04 FC */	bge .L_8018637C
/* 80185E84 00182E84  48 00 04 D4 */	b .L_80186358
/* 80185E88 00182E88  48 00 04 F4 */	b .L_8018637C
.L_80185E8C:
/* 80185E8C 00182E8C  38 60 00 00 */	li r3, 0
/* 80185E90 00182E90  38 80 00 00 */	li r4, 0
/* 80185E94 00182E94  4B F0 CE 79 */	bl marioChgMotSub
/* 80185E98 00182E98  4B ED 73 7D */	bl marioGetPtr
/* 80185E9C 00182E9C  7C 7E 1B 78 */	mr r30, r3
/* 80185EA0 00182EA0  4B ED 4E 11 */	bl marioOfsRotReset
/* 80185EA4 00182EA4  38 00 00 00 */	li r0, 0
/* 80185EA8 00182EA8  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 80185EAC 00182EAC  B0 1E 00 52 */	sth r0, 0x52(r30)
/* 80185EB0 00182EB0  80 7E 02 A4 */	lwz r3, 0x2a4(r30)
/* 80185EB4 00182EB4  3C 03 00 01 */	addis r0, r3, 1
/* 80185EB8 00182EB8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80185EBC 00182EBC  41 82 00 10 */	beq .L_80185ECC
/* 80185EC0 00182EC0  4B F4 F3 3D */	bl psndSFXOff
/* 80185EC4 00182EC4  38 00 FF FF */	li r0, -1
/* 80185EC8 00182EC8  90 1E 02 A4 */	stw r0, 0x2a4(r30)
.L_80185ECC:
/* 80185ECC 00182ECC  80 7E 02 A8 */	lwz r3, 0x2a8(r30)
/* 80185ED0 00182ED0  3C 03 00 01 */	addis r0, r3, 1
/* 80185ED4 00182ED4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80185ED8 00182ED8  41 82 04 A4 */	beq .L_8018637C
/* 80185EDC 00182EDC  4B F4 F3 21 */	bl psndSFXOff
/* 80185EE0 00182EE0  38 00 FF FF */	li r0, -1
/* 80185EE4 00182EE4  90 1E 02 A8 */	stw r0, 0x2a8(r30)
/* 80185EE8 00182EE8  48 00 04 94 */	b .L_8018637C
.L_80185EEC:
/* 80185EEC 00182EEC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80185EF0 00182EF0  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80185EF4 00182EF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80185EF8 00182EF8  4C 41 13 82 */	cror 2, 1, 2
/* 80185EFC 00182EFC  40 82 00 2C */	bne .L_80185F28
/* 80185F00 00182F00  C0 02 CD 18 */	lfs f0, lbl_8041E098@sda21(r2)
/* 80185F04 00182F04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80185F08 00182F08  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80185F0C 00182F0C  80 1F 01 F4 */	lwz r0, 0x1f4(r31)
/* 80185F10 00182F10  28 00 00 00 */	cmplwi r0, 0
/* 80185F14 00182F14  40 82 00 14 */	bne .L_80185F28
/* 80185F18 00182F18  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80185F1C 00182F1C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80185F20 00182F20  EC 01 00 2A */	fadds f0, f1, f0
/* 80185F24 00182F24  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
.L_80185F28:
/* 80185F28 00182F28  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80185F2C 00182F2C  34 03 FF FF */	addic. r0, r3, -1
/* 80185F30 00182F30  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80185F34 00182F34  41 81 00 0C */	bgt .L_80185F40
/* 80185F38 00182F38  38 00 00 0A */	li r0, 0xa
/* 80185F3C 00182F3C  90 1F 00 44 */	stw r0, 0x44(r31)
.L_80185F40:
/* 80185F40 00182F40  4B FF FB D9 */	bl U_chkground
/* 80185F44 00182F44  2C 03 00 02 */	cmpwi r3, 2
/* 80185F48 00182F48  41 82 00 18 */	beq .L_80185F60
/* 80185F4C 00182F4C  40 80 04 0C */	bge .L_80186358
/* 80185F50 00182F50  2C 03 00 01 */	cmpwi r3, 1
/* 80185F54 00182F54  40 80 04 28 */	bge .L_8018637C
/* 80185F58 00182F58  48 00 04 00 */	b .L_80186358
/* 80185F5C 00182F5C  48 00 04 20 */	b .L_8018637C
.L_80185F60:
/* 80185F60 00182F60  38 60 00 00 */	li r3, 0
/* 80185F64 00182F64  38 80 00 00 */	li r4, 0
/* 80185F68 00182F68  4B F0 CD A5 */	bl marioChgMotSub
/* 80185F6C 00182F6C  4B ED 72 A9 */	bl marioGetPtr
/* 80185F70 00182F70  7C 7E 1B 78 */	mr r30, r3
/* 80185F74 00182F74  4B ED 4D 3D */	bl marioOfsRotReset
/* 80185F78 00182F78  38 00 00 00 */	li r0, 0
/* 80185F7C 00182F7C  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 80185F80 00182F80  B0 1E 00 52 */	sth r0, 0x52(r30)
/* 80185F84 00182F84  80 7E 02 A4 */	lwz r3, 0x2a4(r30)
/* 80185F88 00182F88  3C 03 00 01 */	addis r0, r3, 1
/* 80185F8C 00182F8C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80185F90 00182F90  41 82 00 10 */	beq .L_80185FA0
/* 80185F94 00182F94  4B F4 F2 69 */	bl psndSFXOff
/* 80185F98 00182F98  38 00 FF FF */	li r0, -1
/* 80185F9C 00182F9C  90 1E 02 A4 */	stw r0, 0x2a4(r30)
.L_80185FA0:
/* 80185FA0 00182FA0  80 7E 02 A8 */	lwz r3, 0x2a8(r30)
/* 80185FA4 00182FA4  3C 03 00 01 */	addis r0, r3, 1
/* 80185FA8 00182FA8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80185FAC 00182FAC  41 82 03 D0 */	beq .L_8018637C
/* 80185FB0 00182FB0  4B F4 F2 4D */	bl psndSFXOff
/* 80185FB4 00182FB4  38 00 FF FF */	li r0, -1
/* 80185FB8 00182FB8  90 1E 02 A8 */	stw r0, 0x2a8(r30)
/* 80185FBC 00182FBC  48 00 03 C0 */	b .L_8018637C
.L_80185FC0:
/* 80185FC0 00182FC0  C0 22 CC E4 */	lfs f1, lbl_8041E064@sda21(r2)
/* 80185FC4 00182FC4  38 61 00 10 */	addi r3, r1, 0x10
/* 80185FC8 00182FC8  4B F0 67 0D */	bl marioChkLandon
/* 80185FCC 00182FCC  C0 5F 02 A0 */	lfs f2, 0x2a0(r31)
/* 80185FD0 00182FD0  C0 22 CD 1C */	lfs f1, lbl_8041E09C@sda21(r2)
/* 80185FD4 00182FD4  C0 02 CD 0C */	lfs f0, lbl_8041E08C@sda21(r2)
/* 80185FD8 00182FD8  EC 22 08 2A */	fadds f1, f2, f1
/* 80185FDC 00182FDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80185FE0 00182FE0  D0 3F 02 A0 */	stfs f1, 0x2a0(r31)
/* 80185FE4 00182FE4  4C 41 13 82 */	cror 2, 1, 2
/* 80185FE8 00182FE8  40 82 00 4C */	bne .L_80186034
/* 80185FEC 00182FEC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80185FF0 00182FF0  38 00 00 14 */	li r0, 0x14
/* 80185FF4 00182FF4  C0 62 CC E4 */	lfs f3, lbl_8041E064@sda21(r2)
/* 80185FF8 00182FF8  54 63 04 1C */	rlwinm r3, r3, 0, 0x10, 0xe
/* 80185FFC 00182FFC  C0 42 CD 20 */	lfs f2, lbl_8041E0A0@sda21(r2)
/* 80186000 00183000  90 7F 00 00 */	stw r3, 0(r31)
/* 80186004 00183004  C0 22 CD 24 */	lfs f1, lbl_8041E0A4@sda21(r2)
/* 80186008 00183008  80 7F 00 00 */	lwz r3, 0(r31)
/* 8018600C 0018300C  C0 02 CD 28 */	lfs f0, lbl_8041E0A8@sda21(r2)
/* 80186010 00183010  64 63 00 02 */	oris r3, r3, 2
/* 80186014 00183014  90 7F 00 00 */	stw r3, 0(r31)
/* 80186018 00183018  D0 7F 02 A0 */	stfs f3, 0x2a0(r31)
/* 8018601C 0018301C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80186020 00183020  D0 5F 00 80 */	stfs f2, 0x80(r31)
/* 80186024 00183024  D0 3F 00 84 */	stfs f1, 0x84(r31)
/* 80186028 00183028  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 8018602C 0018302C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80186030 00183030  D0 1F 00 7C */	stfs f0, 0x7c(r31)
.L_80186034:
/* 80186034 00183034  4B FF FA E5 */	bl U_chkground
/* 80186038 00183038  2C 03 00 02 */	cmpwi r3, 2
/* 8018603C 0018303C  41 82 00 18 */	beq .L_80186054
/* 80186040 00183040  40 80 03 18 */	bge .L_80186358
/* 80186044 00183044  2C 03 00 01 */	cmpwi r3, 1
/* 80186048 00183048  40 80 03 34 */	bge .L_8018637C
/* 8018604C 0018304C  48 00 03 0C */	b .L_80186358
/* 80186050 00183050  48 00 03 2C */	b .L_8018637C
.L_80186054:
/* 80186054 00183054  38 60 00 00 */	li r3, 0
/* 80186058 00183058  38 80 00 00 */	li r4, 0
/* 8018605C 0018305C  4B F0 CC B1 */	bl marioChgMotSub
/* 80186060 00183060  4B ED 71 B5 */	bl marioGetPtr
/* 80186064 00183064  7C 7E 1B 78 */	mr r30, r3
/* 80186068 00183068  4B ED 4C 49 */	bl marioOfsRotReset
/* 8018606C 0018306C  38 00 00 00 */	li r0, 0
/* 80186070 00183070  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 80186074 00183074  B0 1E 00 52 */	sth r0, 0x52(r30)
/* 80186078 00183078  80 7E 02 A4 */	lwz r3, 0x2a4(r30)
/* 8018607C 0018307C  3C 03 00 01 */	addis r0, r3, 1
/* 80186080 00183080  28 00 FF FF */	cmplwi r0, 0xffff
/* 80186084 00183084  41 82 00 10 */	beq .L_80186094
/* 80186088 00183088  4B F4 F1 75 */	bl psndSFXOff
/* 8018608C 0018308C  38 00 FF FF */	li r0, -1
/* 80186090 00183090  90 1E 02 A4 */	stw r0, 0x2a4(r30)
.L_80186094:
/* 80186094 00183094  80 7E 02 A8 */	lwz r3, 0x2a8(r30)
/* 80186098 00183098  3C 03 00 01 */	addis r0, r3, 1
/* 8018609C 0018309C  28 00 FF FF */	cmplwi r0, 0xffff
/* 801860A0 001830A0  41 82 02 DC */	beq .L_8018637C
/* 801860A4 001830A4  4B F4 F1 59 */	bl psndSFXOff
/* 801860A8 001830A8  38 00 FF FF */	li r0, -1
/* 801860AC 001830AC  90 1E 02 A8 */	stw r0, 0x2a8(r30)
/* 801860B0 001830B0  48 00 02 CC */	b .L_8018637C
.L_801860B4:
/* 801860B4 001830B4  38 60 00 C8 */	li r3, 0xc8
/* 801860B8 001830B8  4B E7 FA 41 */	bl sysMsec2Frame
/* 801860BC 001830BC  90 7F 00 48 */	stw r3, 0x48(r31)
/* 801860C0 001830C0  38 00 00 15 */	li r0, 0x15
/* 801860C4 001830C4  90 1F 00 44 */	stw r0, 0x44(r31)
.L_801860C8:
/* 801860C8 001830C8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801860CC 001830CC  34 03 FF FF */	addic. r0, r3, -1
/* 801860D0 001830D0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 801860D4 001830D4  41 81 02 84 */	bgt .L_80186358
/* 801860D8 001830D8  4B F0 C8 79 */	bl marioGetFallSpd
/* 801860DC 001830DC  FF E0 08 90 */	fmr f31, f1
/* 801860E0 001830E0  38 61 00 10 */	addi r3, r1, 0x10
/* 801860E4 001830E4  38 81 00 0C */	addi r4, r1, 0xc
/* 801860E8 001830E8  38 A1 00 08 */	addi r5, r1, 8
/* 801860EC 001830EC  FC 40 F8 90 */	fmr f2, f31
/* 801860F0 001830F0  4B F0 70 09 */	bl marioSearchGround
/* 801860F4 001830F4  C0 22 CD 2C */	lfs f1, lbl_8041E0AC@sda21(r2)
/* 801860F8 001830F8  7C 7E 1B 78 */	mr r30, r3
/* 801860FC 001830FC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80186100 00183100  40 80 00 1C */	bge .L_8018611C
/* 80186104 00183104  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80186108 00183108  FF E0 08 90 */	fmr f31, f1
/* 8018610C 0018310C  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 80186110 00183110  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80186114 00183114  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80186118 00183118  D0 3F 00 7C */	stfs f1, 0x7c(r31)
.L_8018611C:
/* 8018611C 0018311C  28 1E 00 00 */	cmplwi r30, 0
/* 80186120 00183120  41 82 00 FC */	beq .L_8018621C
/* 80186124 00183124  38 00 00 11 */	li r0, 0x11
/* 80186128 00183128  3C 60 80 30 */	lis r3, lbl_802F8C00@ha
/* 8018612C 0018312C  B0 1F 00 2E */	sth r0, 0x2e(r31)
/* 80186130 00183130  38 00 00 16 */	li r0, 0x16
/* 80186134 00183134  38 80 00 14 */	li r4, 0x14
/* 80186138 00183138  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 8018613C 0018313C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80186140 00183140  38 00 00 00 */	li r0, 0
/* 80186144 00183144  38 63 8C 00 */	addi r3, r3, lbl_802F8C00@l
/* 80186148 00183148  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8018614C 0018314C  93 DF 01 E4 */	stw r30, 0x1e4(r31)
/* 80186150 00183150  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 80186154 00183154  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80186158 00183158  D0 3F 00 90 */	stfs f1, 0x90(r31)
/* 8018615C 0018315C  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
/* 80186160 00183160  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 80186164 00183164  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 80186168 00183168  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 8018616C 0018316C  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 80186170 00183170  4B ED 1D D5 */	bl marioChgPose
/* 80186174 00183174  7F C3 F3 78 */	mr r3, r30
/* 80186178 00183178  4B E8 DE E1 */	bl hitGetAttr
/* 8018617C 0018317C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80186180 00183180  41 82 00 30 */	beq .L_801861B0
/* 80186184 00183184  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80186188 00183188  4B FA FF 4D */	bl set_damage_root_ypos
/* 8018618C 0018318C  C0 22 CC E8 */	lfs f1, lbl_8041E068@sda21(r2)
/* 80186190 00183190  38 60 00 1F */	li r3, 0x1f
/* 80186194 00183194  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80186198 00183198  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 8018619C 0018319C  D0 3F 00 80 */	stfs f1, 0x80(r31)
/* 801861A0 001831A0  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 801861A4 001831A4  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 801861A8 001831A8  4B F0 CC 6D */	bl marioChgMot
/* 801861AC 001831AC  48 00 01 D0 */	b .L_8018637C
.L_801861B0:
/* 801861B0 001831B0  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 801861B4 001831B4  41 82 00 18 */	beq .L_801861CC
/* 801861B8 001831B8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 801861BC 001831BC  4B FA FF 19 */	bl set_damage_root_ypos
/* 801861C0 001831C0  38 60 00 20 */	li r3, 0x20
/* 801861C4 001831C4  4B F0 CC 51 */	bl marioChgMot
/* 801861C8 001831C8  48 00 01 B4 */	b .L_8018637C
.L_801861CC:
/* 801861CC 001831CC  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 801861D0 001831D0  41 82 00 18 */	beq .L_801861E8
/* 801861D4 001831D4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 801861D8 001831D8  4B FA FE FD */	bl set_damage_root_ypos
/* 801861DC 001831DC  38 60 00 20 */	li r3, 0x20
/* 801861E0 001831E0  4B F0 CC 35 */	bl marioChgMot
/* 801861E4 001831E4  48 00 01 98 */	b .L_8018637C
.L_801861E8:
/* 801861E8 001831E8  38 9F 00 8C */	addi r4, r31, 0x8c
/* 801861EC 001831EC  38 60 01 59 */	li r3, 0x159
/* 801861F0 001831F0  4B F4 F2 5D */	bl psndSFXOn_3D
/* 801861F4 001831F4  4B ED 51 19 */	bl marioBgmodeChk
/* 801861F8 001831F8  2C 03 00 00 */	cmpwi r3, 0
/* 801861FC 001831FC  38 6D B3 A0 */	addi r3, r13, lbl_80412600@sda21
/* 80186200 00183200  40 82 00 08 */	bne .L_80186208
/* 80186204 00183204  38 6D B3 80 */	addi r3, r13, lbl_804125E0@sda21
.L_80186208:
/* 80186208 00183208  38 80 00 00 */	li r4, 0
/* 8018620C 0018320C  38 A0 00 00 */	li r5, 0
/* 80186210 00183210  38 C0 00 00 */	li r6, 0
/* 80186214 00183214  4B EB 09 71 */	bl evtEntryType
/* 80186218 00183218  48 00 00 10 */	b .L_80186228
.L_8018621C:
/* 8018621C 0018321C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80186220 00183220  EC 00 F8 2A */	fadds f0, f0, f31
/* 80186224 00183224  D0 1F 00 90 */	stfs f0, 0x90(r31)
.L_80186228:
/* 80186228 00183228  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 8018622C 0018322C  2C 00 01 90 */	cmpwi r0, 0x190
/* 80186230 00183230  40 81 01 28 */	ble .L_80186358
/* 80186234 00183234  4B ED 50 D9 */	bl marioBgmodeChk
/* 80186238 00183238  2C 03 00 00 */	cmpwi r3, 0
/* 8018623C 0018323C  40 82 01 1C */	bne .L_80186358
/* 80186240 00183240  48 01 CC E9 */	bl camFollowYOn
/* 80186244 00183244  48 00 01 14 */	b .L_80186358
.L_80186248:
/* 80186248 00183248  4B FF F8 D1 */	bl U_chkground
/* 8018624C 0018324C  2C 03 00 01 */	cmpwi r3, 1
/* 80186250 00183250  41 82 01 2C */	beq .L_8018637C
/* 80186254 00183254  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80186258 00183258  34 03 FF FF */	addic. r0, r3, -1
/* 8018625C 0018325C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80186260 00183260  41 81 00 F8 */	bgt .L_80186358
/* 80186264 00183264  80 1F 00 04 */	lwz r0, 4(r31)
/* 80186268 00183268  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 8018626C 0018326C  90 1F 00 04 */	stw r0, 4(r31)
/* 80186270 00183270  4B ED 50 9D */	bl marioBgmodeChk
/* 80186274 00183274  2C 03 00 00 */	cmpwi r3, 0
/* 80186278 00183278  40 82 00 08 */	bne .L_80186280
/* 8018627C 0018327C  48 01 CC AD */	bl camFollowYOn
.L_80186280:
/* 80186280 00183280  80 1F 00 04 */	lwz r0, 4(r31)
/* 80186284 00183284  38 60 00 00 */	li r3, 0
/* 80186288 00183288  38 80 00 00 */	li r4, 0
/* 8018628C 0018328C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80186290 00183290  90 1F 00 04 */	stw r0, 4(r31)
/* 80186294 00183294  80 1F 00 00 */	lwz r0, 0(r31)
/* 80186298 00183298  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8018629C 0018329C  90 1F 00 00 */	stw r0, 0(r31)
/* 801862A0 001832A0  4B F0 CA 6D */	bl marioChgMotSub
/* 801862A4 001832A4  4B ED 6F 71 */	bl marioGetPtr
/* 801862A8 001832A8  7C 7E 1B 78 */	mr r30, r3
/* 801862AC 001832AC  4B ED 4A 05 */	bl marioOfsRotReset
/* 801862B0 001832B0  38 00 00 00 */	li r0, 0
/* 801862B4 001832B4  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 801862B8 001832B8  B0 1E 00 52 */	sth r0, 0x52(r30)
/* 801862BC 001832BC  80 7E 02 A4 */	lwz r3, 0x2a4(r30)
/* 801862C0 001832C0  3C 03 00 01 */	addis r0, r3, 1
/* 801862C4 001832C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 801862C8 001832C8  41 82 00 10 */	beq .L_801862D8
/* 801862CC 001832CC  4B F4 EF 31 */	bl psndSFXOff
/* 801862D0 001832D0  38 00 FF FF */	li r0, -1
/* 801862D4 001832D4  90 1E 02 A4 */	stw r0, 0x2a4(r30)
.L_801862D8:
/* 801862D8 001832D8  80 7E 02 A8 */	lwz r3, 0x2a8(r30)
/* 801862DC 001832DC  3C 03 00 01 */	addis r0, r3, 1
/* 801862E0 001832E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 801862E4 001832E4  41 82 00 74 */	beq .L_80186358
/* 801862E8 001832E8  4B F4 EF 15 */	bl psndSFXOff
/* 801862EC 001832EC  38 00 FF FF */	li r0, -1
/* 801862F0 001832F0  90 1E 02 A8 */	stw r0, 0x2a8(r30)
/* 801862F4 001832F4  48 00 00 64 */	b .L_80186358
.L_801862F8:
/* 801862F8 001832F8  3C 60 80 30 */	lis r3, lbl_802F8BF8@ha
/* 801862FC 001832FC  38 63 8B F8 */	addi r3, r3, lbl_802F8BF8@l
/* 80186300 00183300  4B ED 1C 45 */	bl marioChgPose
/* 80186304 00183304  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80186308 00183308  38 60 00 02 */	li r3, 2
/* 8018630C 0018330C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80186310 00183310  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80186314 00183314  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80186318 00183318  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 8018631C 0018331C  4B E7 FD 59 */	bl keyGetSubStickY
/* 80186320 00183320  7C 63 07 74 */	extsb r3, r3
/* 80186324 00183324  3C 00 43 30 */	lis r0, 0x4330
/* 80186328 00183328  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8018632C 0018332C  3C 80 80 30 */	lis r4, lbl_802F8C08@ha
/* 80186330 00183330  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80186334 00183334  C8 64 8C 08 */	lfd f3, lbl_802F8C08@l(r4)
/* 80186338 00183338  90 01 00 18 */	stw r0, 0x18(r1)
/* 8018633C 0018333C  C0 22 CD 30 */	lfs f1, lbl_8041E0B0@sda21(r2)
/* 80186340 00183340  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80186344 00183344  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 80186348 00183348  EC 42 18 28 */	fsubs f2, f2, f3
/* 8018634C 0018334C  EC 22 08 24 */	fdivs f1, f2, f1
/* 80186350 00183350  EC 00 08 2A */	fadds f0, f0, f1
/* 80186354 00183354  D0 1F 02 A0 */	stfs f0, 0x2a0(r31)
.L_80186358:
/* 80186358 00183358  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 8018635C 0018335C  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 80186360 00183360  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 80186364 00183364  2C 00 00 00 */	cmpwi r0, 0
/* 80186368 00183368  41 82 00 14 */	beq .L_8018637C
/* 8018636C 0018336C  C0 02 CC E4 */	lfs f0, lbl_8041E064@sda21(r2)
/* 80186370 00183370  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 80186374 00183374  D0 1F 01 7C */	stfs f0, 0x17c(r31)
/* 80186378 00183378  D0 1F 01 78 */	stfs f0, 0x178(r31)
.L_8018637C:
/* 8018637C 0018337C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80186380 00183380  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80186384 00183384  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80186388 00183388  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018638C 0018338C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80186390 00183390  7C 08 03 A6 */	mtlr r0
/* 80186394 00183394  38 21 00 40 */	addi r1, r1, 0x40
/* 80186398 00183398  4E 80 00 20 */	blr 

.global marioChkHipBump
marioChkHipBump:
/* 8018639C 0018339C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801863A0 001833A0  7C 08 02 A6 */	mflr r0
/* 801863A4 001833A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801863A8 001833A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801863AC 001833AC  3B E0 00 00 */	li r31, 0
/* 801863B0 001833B0  4B ED 6E 65 */	bl marioGetPtr
/* 801863B4 001833B4  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 801863B8 001833B8  28 00 00 11 */	cmplwi r0, 0x11
/* 801863BC 001833BC  40 82 00 08 */	bne .L_801863C4
/* 801863C0 001833C0  3B E0 00 01 */	li r31, 1
.L_801863C4:
/* 801863C4 001833C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801863C8 001833C8  7F E3 FB 78 */	mr r3, r31
/* 801863CC 001833CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801863D0 001833D0  7C 08 03 A6 */	mtlr r0
/* 801863D4 001833D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801863D8 001833D8  4E 80 00 20 */	blr 

.global marioChkHipAttack
marioChkHipAttack:
/* 801863DC 001833DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801863E0 001833E0  7C 08 02 A6 */	mflr r0
/* 801863E4 001833E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801863E8 001833E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801863EC 001833EC  3B E0 00 00 */	li r31, 0
/* 801863F0 001833F0  4B ED 6E 25 */	bl marioGetPtr
/* 801863F4 001833F4  A8 03 00 52 */	lha r0, 0x52(r3)
/* 801863F8 001833F8  2C 00 00 0A */	cmpwi r0, 0xa
/* 801863FC 001833FC  41 80 00 20 */	blt .L_8018641C
/* 80186400 00183400  A0 03 02 48 */	lhz r0, 0x248(r3)
/* 80186404 00183404  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80186408 00183408  41 82 00 14 */	beq .L_8018641C
/* 8018640C 0018340C  4B F4 95 C9 */	bl pouchGetJumpLv
/* 80186410 00183410  2C 03 00 02 */	cmpwi r3, 2
/* 80186414 00183414  41 80 00 08 */	blt .L_8018641C
/* 80186418 00183418  3B E0 00 01 */	li r31, 1
.L_8018641C:
/* 8018641C 0018341C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80186420 00183420  7F E3 FB 78 */	mr r3, r31
/* 80186424 00183424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80186428 00183428  7C 08 03 A6 */	mtlr r0
/* 8018642C 0018342C  38 21 00 10 */	addi r1, r1, 0x10
/* 80186430 00183430  4E 80 00 20 */	blr 
