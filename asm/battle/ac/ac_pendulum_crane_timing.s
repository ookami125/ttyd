.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global _get_angle_hp
_get_angle_hp:
/* 802059A0 002029A0  38 8D CF 50 */	addi r4, r13, lbl_804141B0-_SDA_BASE_
/* 802059A4 002029A4  48 00 00 08 */	b lbl_802059AC
lbl_802059A8:
/* 802059A8 002029A8  38 84 00 04 */	addi r4, r4, 4
lbl_802059AC:
/* 802059AC 002029AC  A0 04 00 00 */	lhz r0, 0(r4)
/* 802059B0 002029B0  7C 03 00 00 */	cmpw r3, r0
/* 802059B4 002029B4  41 81 FF F4 */	bgt lbl_802059A8
/* 802059B8 002029B8  A0 64 00 02 */	lhz r3, 2(r4)
/* 802059BC 002029BC  4E 80 00 20 */	blr 

.global _get_angle_rate
_get_angle_rate:
/* 802059C0 002029C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802059C4 002029C4  7C 08 02 A6 */	mflr r0
/* 802059C8 002029C8  FC 40 08 90 */	fmr f2, f1
/* 802059CC 002029CC  C0 22 F5 F8 */	lfs f1, lbl_80420978-_SDA2_BASE_(r2)
/* 802059D0 002029D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802059D4 002029D4  4B E0 17 9D */	bl compAngle
/* 802059D8 002029D8  C0 02 F5 FC */	lfs f0, lbl_8042097C-_SDA2_BASE_(r2)
/* 802059DC 002029DC  C0 62 F6 00 */	lfs f3, lbl_80420980-_SDA2_BASE_(r2)
/* 802059E0 002029E0  EC 41 00 2A */	fadds f2, f1, f0
/* 802059E4 002029E4  C0 02 F6 04 */	lfs f0, lbl_80420984-_SDA2_BASE_(r2)
/* 802059E8 002029E8  EC 23 00 B2 */	fmuls f1, f3, f2
/* 802059EC 002029EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 802059F0 002029F0  FC 00 00 1E */	fctiwz f0, f0
/* 802059F4 002029F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 802059F8 002029F8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802059FC 002029FC  2C 03 00 00 */	cmpwi r3, 0
/* 80205A00 00202A00  40 80 00 08 */	bge lbl_80205A08
/* 80205A04 00202A04  38 60 00 00 */	li r3, 0
lbl_80205A08:
/* 80205A08 00202A08  2C 03 00 64 */	cmpwi r3, 0x64
/* 80205A0C 00202A0C  40 81 00 08 */	ble lbl_80205A14
/* 80205A10 00202A10  38 60 00 64 */	li r3, 0x64
lbl_80205A14:
/* 80205A14 00202A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80205A18 00202A18  7C 08 03 A6 */	mtlr r0
/* 80205A1C 00202A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80205A20 00202A20  4E 80 00 20 */	blr 

.global actionCommandDisp_DUPE_80205a24
actionCommandDisp_DUPE_80205a24:
/* 80205A24 00202A24  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80205A28 00202A28  7C 08 02 A6 */	mflr r0
/* 80205A2C 00202A2C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80205A30 00202A30  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80205A34 00202A34  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 80205A38 00202A38  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80205A3C 00202A3C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 80205A40 00202A40  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80205A44 00202A44  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 80205A48 00202A48  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80205A4C 00202A4C  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 80205A50 00202A50  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80205A54 00202A54  F3 61 00 68 */	psq_st f27, 104(r1), 0, qr0
/* 80205A58 00202A58  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 80205A5C 00202A5C  F3 41 00 58 */	psq_st f26, 88(r1), 0, qr0
/* 80205A60 00202A60  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 80205A64 00202A64  F3 21 00 48 */	psq_st f25, 72(r1), 0, qr0
/* 80205A68 00202A68  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 80205A6C 00202A6C  FF A0 08 90 */	fmr f29, f1
/* 80205A70 00202A70  83 ED 17 10 */	lwz r31, lbl_80418970-_SDA_BASE_(r13)
/* 80205A74 00202A74  FF C0 10 90 */	fmr f30, f2
/* 80205A78 00202A78  38 60 00 08 */	li r3, 8
/* 80205A7C 00202A7C  4B E0 96 D5 */	bl camGetPtr
/* 80205A80 00202A80  3C 60 80 30 */	lis r3, lbl_802FDBA0@ha
/* 80205A84 00202A84  C0 22 F6 08 */	lfs f1, lbl_80420988-_SDA2_BASE_(r2)
/* 80205A88 00202A88  38 A3 DB A0 */	addi r5, r3, lbl_802FDBA0@l
/* 80205A8C 00202A8C  C0 02 F6 0C */	lfs f0, lbl_8042098C-_SDA2_BASE_(r2)
/* 80205A90 00202A90  80 05 00 00 */	lwz r0, 0(r5)
/* 80205A94 00202A94  EF 21 E8 2A */	fadds f25, f1, f29
/* 80205A98 00202A98  80 85 00 04 */	lwz r4, 4(r5)
/* 80205A9C 00202A9C  EC 00 F0 2A */	fadds f0, f0, f30
/* 80205AA0 00202AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80205AA4 00202AA4  38 61 00 14 */	addi r3, r1, 0x14
/* 80205AA8 00202AA8  80 05 00 08 */	lwz r0, 8(r5)
/* 80205AAC 00202AAC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80205AB0 00202AB0  38 80 00 10 */	li r4, 0x10
/* 80205AB4 00202AB4  C0 22 F6 10 */	lfs f1, lbl_80420990-_SDA2_BASE_(r2)
/* 80205AB8 00202AB8  38 A0 00 8C */	li r5, 0x8c
/* 80205ABC 00202ABC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80205AC0 00202AC0  D3 21 00 14 */	stfs f25, 0x14(r1)
/* 80205AC4 00202AC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80205AC8 00202AC8  4B E1 4A 6D */	bl iconDispGx
/* 80205ACC 00202ACC  38 60 00 08 */	li r3, 8
/* 80205AD0 00202AD0  4B E0 96 81 */	bl camGetPtr
/* 80205AD4 00202AD4  7C 7C 1B 78 */	mr r28, r3
/* 80205AD8 00202AD8  4B EF 90 F1 */	bl btlDispGXInit2DRasta
/* 80205ADC 00202ADC  38 7C 01 1C */	addi r3, r28, 0x11c
/* 80205AE0 00202AE0  38 80 00 00 */	li r4, 0
/* 80205AE4 00202AE4  48 0A EA 15 */	bl GXLoadPosMtxImm
/* 80205AE8 00202AE8  C0 02 F6 18 */	lfs f0, lbl_80420998-_SDA2_BASE_(r2)
/* 80205AEC 00202AEC  3C 60 80 30 */	lis r3, lbl_802FDBB8@ha
/* 80205AF0 00202AF0  C0 22 F6 14 */	lfs f1, lbl_80420994-_SDA2_BASE_(r2)
/* 80205AF4 00202AF4  3B C0 00 00 */	li r30, 0
/* 80205AF8 00202AF8  EF E0 F0 2A */	fadds f31, f0, f30
/* 80205AFC 00202AFC  C0 02 F6 1C */	lfs f0, lbl_8042099C-_SDA2_BASE_(r2)
/* 80205B00 00202B00  EF 59 08 28 */	fsubs f26, f25, f1
/* 80205B04 00202B04  CB 63 DB B8 */	lfd f27, lbl_802FDBB8@l(r3)
/* 80205B08 00202B08  C3 82 F6 00 */	lfs f28, lbl_80420980-_SDA2_BASE_(r2)
/* 80205B0C 00202B0C  3B A0 00 00 */	li r29, 0
/* 80205B10 00202B10  EF 3F 00 28 */	fsubs f25, f31, f0
/* 80205B14 00202B14  3F 80 43 30 */	lis r28, 0x4330
lbl_80205B18:
/* 80205B18 00202B18  2C 1E 00 00 */	cmpwi r30, 0
/* 80205B1C 00202B1C  40 82 00 0C */	bne lbl_80205B28
/* 80205B20 00202B20  FC 20 D0 90 */	fmr f1, f26
/* 80205B24 00202B24  48 00 00 40 */	b lbl_80205B64
lbl_80205B28:
/* 80205B28 00202B28  38 1D FF FC */	addi r0, r29, -4
/* 80205B2C 00202B2C  38 6D CF 50 */	addi r3, r13, lbl_804141B0-_SDA_BASE_
/* 80205B30 00202B30  7C 83 02 2E */	lhzx r4, r3, r0
/* 80205B34 00202B34  3C 00 43 30 */	lis r0, 0x4330
/* 80205B38 00202B38  90 01 00 20 */	stw r0, 0x20(r1)
/* 80205B3C 00202B3C  3C 60 80 30 */	lis r3, lbl_802FDBB8@ha
/* 80205B40 00202B40  1C 04 00 AF */	mulli r0, r4, 0xaf
/* 80205B44 00202B44  C8 43 DB B8 */	lfd f2, lbl_802FDBB8@l(r3)
/* 80205B48 00202B48  C0 02 F6 00 */	lfs f0, lbl_80420980-_SDA2_BASE_(r2)
/* 80205B4C 00202B4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80205B50 00202B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80205B54 00202B54  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80205B58 00202B58  EC 21 10 28 */	fsubs f1, f1, f2
/* 80205B5C 00202B5C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80205B60 00202B60  EC 3A 00 2A */	fadds f1, f26, f0
lbl_80205B64:
/* 80205B64 00202B64  38 6D CF 50 */	addi r3, r13, lbl_804141B0-_SDA_BASE_
/* 80205B68 00202B68  20 DE 00 03 */	subfic r6, r30, 3
/* 80205B6C 00202B6C  7C 83 EA 2E */	lhzx r4, r3, r29
/* 80205B70 00202B70  7C C3 FE 70 */	srawi r3, r6, 0x1f
/* 80205B74 00202B74  7C 60 32 78 */	xor r0, r3, r6
/* 80205B78 00202B78  93 81 00 28 */	stw r28, 0x28(r1)
/* 80205B7C 00202B7C  1C A4 00 AF */	mulli r5, r4, 0xaf
/* 80205B80 00202B80  FC 40 F8 90 */	fmr f2, f31
/* 80205B84 00202B84  7C 03 00 50 */	subf r0, r3, r0
/* 80205B88 00202B88  FC 80 C8 90 */	fmr f4, f25
/* 80205B8C 00202B8C  38 80 00 00 */	li r4, 0
/* 80205B90 00202B90  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 80205B94 00202B94  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80205B98 00202B98  20 A0 00 03 */	subfic r5, r0, 3
/* 80205B9C 00202B9C  7C C3 FE 70 */	srawi r3, r6, 0x1f
/* 80205BA0 00202BA0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80205BA4 00202BA4  7C 60 32 78 */	xor r0, r3, r6
/* 80205BA8 00202BA8  7C 03 00 50 */	subf r0, r3, r0
/* 80205BAC 00202BAC  38 C0 00 FF */	li r6, 0xff
/* 80205BB0 00202BB0  EC 00 D8 28 */	fsubs f0, f0, f27
/* 80205BB4 00202BB4  20 00 00 03 */	subfic r0, r0, 3
/* 80205BB8 00202BB8  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 80205BBC 00202BBC  EC 00 E0 24 */	fdivs f0, f0, f28
/* 80205BC0 00202BC0  1C 65 00 3C */	mulli r3, r5, 0x3c
/* 80205BC4 00202BC4  20 00 00 B4 */	subfic r0, r0, 0xb4
/* 80205BC8 00202BC8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80205BCC 00202BCC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80205BD0 00202BD0  EC 7A 00 2A */	fadds f3, f26, f0
/* 80205BD4 00202BD4  4B EF 8D C5 */	bl btlDispGXQuads2DRasta
/* 80205BD8 00202BD8  3B DE 00 01 */	addi r30, r30, 1
/* 80205BDC 00202BDC  3B BD 00 04 */	addi r29, r29, 4
/* 80205BE0 00202BE0  2C 1E 00 07 */	cmpwi r30, 7
/* 80205BE4 00202BE4  41 80 FF 34 */	blt lbl_80205B18
/* 80205BE8 00202BE8  3C 60 80 30 */	lis r3, lbl_802FDBAC@ha
/* 80205BEC 00202BEC  3C 00 43 30 */	lis r0, 0x4330
/* 80205BF0 00202BF0  38 83 DB AC */	addi r4, r3, lbl_802FDBAC@l
/* 80205BF4 00202BF4  3C 60 80 30 */	lis r3, lbl_802FDBB8@ha
/* 80205BF8 00202BF8  80 A4 00 00 */	lwz r5, 0(r4)
/* 80205BFC 00202BFC  38 C3 DB B8 */	addi r6, r3, lbl_802FDBB8@l
/* 80205C00 00202C00  81 04 00 04 */	lwz r8, 4(r4)
/* 80205C04 00202C04  38 61 00 08 */	addi r3, r1, 8
/* 80205C08 00202C08  80 E4 00 08 */	lwz r7, 8(r4)
/* 80205C0C 00202C0C  38 80 00 10 */	li r4, 0x10
/* 80205C10 00202C10  90 A1 00 08 */	stw r5, 8(r1)
/* 80205C14 00202C14  38 A0 00 96 */	li r5, 0x96
/* 80205C18 00202C18  C0 22 F6 20 */	lfs f1, lbl_804209A0-_SDA2_BASE_(r2)
/* 80205C1C 00202C1C  91 01 00 0C */	stw r8, 0xc(r1)
/* 80205C20 00202C20  C0 02 F5 FC */	lfs f0, lbl_8042097C-_SDA2_BASE_(r2)
/* 80205C24 00202C24  EC 81 E8 2A */	fadds f4, f1, f29
/* 80205C28 00202C28  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80205C2C 00202C2C  C8 66 00 00 */	lfd f3, 0(r6)
/* 80205C30 00202C30  EC 00 F0 2A */	fadds f0, f0, f30
/* 80205C34 00202C34  80 DF 1F 8C */	lwz r6, 0x1f8c(r31)
/* 80205C38 00202C38  90 01 00 28 */	stw r0, 0x28(r1)
/* 80205C3C 00202C3C  1C 06 00 B0 */	mulli r0, r6, 0xb0
/* 80205C40 00202C40  C0 42 F6 00 */	lfs f2, lbl_80420980-_SDA2_BASE_(r2)
/* 80205C44 00202C44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80205C48 00202C48  C0 22 F6 10 */	lfs f1, lbl_80420990-_SDA2_BASE_(r2)
/* 80205C4C 00202C4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80205C50 00202C50  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80205C54 00202C54  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80205C58 00202C58  EC 00 18 28 */	fsubs f0, f0, f3
/* 80205C5C 00202C5C  EC 00 10 24 */	fdivs f0, f0, f2
/* 80205C60 00202C60  EC 04 00 2A */	fadds f0, f4, f0
/* 80205C64 00202C64  D0 01 00 08 */	stfs f0, 8(r1)
/* 80205C68 00202C68  4B E1 48 CD */	bl iconDispGx
/* 80205C6C 00202C6C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80205C70 00202C70  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80205C74 00202C74  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 80205C78 00202C78  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80205C7C 00202C7C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 80205C80 00202C80  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80205C84 00202C84  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 80205C88 00202C88  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 80205C8C 00202C8C  E3 61 00 68 */	psq_l f27, 104(r1), 0, qr0
/* 80205C90 00202C90  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 80205C94 00202C94  E3 41 00 58 */	psq_l f26, 88(r1), 0, qr0
/* 80205C98 00202C98  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 80205C9C 00202C9C  E3 21 00 48 */	psq_l f25, 72(r1), 0, qr0
/* 80205CA0 00202CA0  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 80205CA4 00202CA4  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 80205CA8 00202CA8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80205CAC 00202CAC  7C 08 03 A6 */	mtlr r0
/* 80205CB0 00202CB0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80205CB4 00202CB4  4E 80 00 20 */	blr 

.global battleAcDelete_PendulumCraneTiming
battleAcDelete_PendulumCraneTiming:
/* 80205CB8 00202CB8  80 03 1C C0 */	lwz r0, 0x1cc0(r3)
/* 80205CBC 00202CBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80205CC0 00202CC0  4C 82 00 20 */	bnelr 
/* 80205CC4 00202CC4  38 00 03 EA */	li r0, 0x3ea
/* 80205CC8 00202CC8  90 03 1C 9C */	stw r0, 0x1c9c(r3)
/* 80205CCC 00202CCC  4E 80 00 20 */	blr 

.global battleAcDisp_PendulumCraneTiming
battleAcDisp_PendulumCraneTiming:
/* 80205CD0 00202CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80205CD4 00202CD4  7C 08 02 A6 */	mflr r0
/* 80205CD8 00202CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80205CDC 00202CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80205CE0 00202CE0  80 6D 17 10 */	lwz r3, lbl_80418970-_SDA_BASE_(r13)
/* 80205CE4 00202CE4  80 03 1C 9C */	lwz r0, 0x1c9c(r3)
/* 80205CE8 00202CE8  3B E3 1F 20 */	addi r31, r3, 0x1f20
/* 80205CEC 00202CEC  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80205CF0 00202CF0  41 82 00 54 */	beq lbl_80205D44
/* 80205CF4 00202CF4  40 80 00 1C */	bge lbl_80205D10
/* 80205CF8 00202CF8  2C 00 00 64 */	cmpwi r0, 0x64
/* 80205CFC 00202CFC  41 82 00 48 */	beq lbl_80205D44
/* 80205D00 00202D00  40 80 00 BC */	bge lbl_80205DBC
/* 80205D04 00202D04  2C 00 00 63 */	cmpwi r0, 0x63
/* 80205D08 00202D08  40 80 00 1C */	bge lbl_80205D24
/* 80205D0C 00202D0C  48 00 00 B0 */	b lbl_80205DBC
lbl_80205D10:
/* 80205D10 00202D10  2C 00 03 EC */	cmpwi r0, 0x3ec
/* 80205D14 00202D14  40 80 00 A8 */	bge lbl_80205DBC
/* 80205D18 00202D18  2C 00 03 EA */	cmpwi r0, 0x3ea
/* 80205D1C 00202D1C  40 80 00 4C */	bge lbl_80205D68
/* 80205D20 00202D20  48 00 00 9C */	b lbl_80205DBC
lbl_80205D24:
/* 80205D24 00202D24  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80205D28 00202D28  38 60 00 04 */	li r3, 4
/* 80205D2C 00202D2C  C0 22 F6 24 */	lfs f1, lbl_804209A4-_SDA2_BASE_(r2)
/* 80205D30 00202D30  38 A0 00 14 */	li r5, 0x14
/* 80205D34 00202D34  C0 42 F6 28 */	lfs f2, lbl_804209A8-_SDA2_BASE_(r2)
/* 80205D38 00202D38  20 80 00 14 */	subfic r4, r0, 0x14
/* 80205D3C 00202D3C  4B E0 0E D1 */	bl intplGetValue
/* 80205D40 00202D40  D0 3F 00 14 */	stfs f1, 0x14(r31)
lbl_80205D44:
/* 80205D44 00202D44  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80205D48 00202D48  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80205D4C 00202D4C  4B FF FC D9 */	bl actionCommandDisp_DUPE_80205a24
/* 80205D50 00202D50  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80205D54 00202D54  2C 03 00 00 */	cmpwi r3, 0
/* 80205D58 00202D58  40 81 00 64 */	ble lbl_80205DBC
/* 80205D5C 00202D5C  38 03 FF FF */	addi r0, r3, -1
/* 80205D60 00202D60  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80205D64 00202D64  48 00 00 58 */	b lbl_80205DBC
lbl_80205D68:
/* 80205D68 00202D68  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80205D6C 00202D6C  2C 03 00 28 */	cmpwi r3, 0x28
/* 80205D70 00202D70  41 80 00 24 */	blt lbl_80205D94
/* 80205D74 00202D74  C0 22 F6 28 */	lfs f1, lbl_804209A8-_SDA2_BASE_(r2)
/* 80205D78 00202D78  38 83 FF D8 */	addi r4, r3, -40
/* 80205D7C 00202D7C  C0 42 F6 24 */	lfs f2, lbl_804209A4-_SDA2_BASE_(r2)
/* 80205D80 00202D80  38 60 00 04 */	li r3, 4
/* 80205D84 00202D84  38 A0 00 14 */	li r5, 0x14
/* 80205D88 00202D88  4B E0 0E 85 */	bl intplGetValue
/* 80205D8C 00202D8C  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 80205D90 00202D90  48 00 00 0C */	b lbl_80205D9C
lbl_80205D94:
/* 80205D94 00202D94  C0 02 F6 28 */	lfs f0, lbl_804209A8-_SDA2_BASE_(r2)
/* 80205D98 00202D98  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_80205D9C:
/* 80205D9C 00202D9C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80205DA0 00202DA0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80205DA4 00202DA4  4B FF FC 81 */	bl actionCommandDisp_DUPE_80205a24
/* 80205DA8 00202DA8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80205DAC 00202DAC  2C 03 00 3C */	cmpwi r3, 0x3c
/* 80205DB0 00202DB0  40 80 00 0C */	bge lbl_80205DBC
/* 80205DB4 00202DB4  38 03 00 01 */	addi r0, r3, 1
/* 80205DB8 00202DB8  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80205DBC:
/* 80205DBC 00202DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80205DC0 00202DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80205DC4 00202DC4  7C 08 03 A6 */	mtlr r0
/* 80205DC8 00202DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80205DCC 00202DCC  4E 80 00 20 */	blr 

.global battleAcResult_PendulumCraneTiming
battleAcResult_PendulumCraneTiming:
/* 80205DD0 00202DD0  80 63 1C B8 */	lwz r3, 0x1cb8(r3)
/* 80205DD4 00202DD4  4E 80 00 20 */	blr 

.global battleAcMain_PendulumCraneTiming
battleAcMain_PendulumCraneTiming:
/* 80205DD8 00202DD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80205DDC 00202DDC  7C 08 02 A6 */	mflr r0
/* 80205DE0 00202DE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80205DE4 00202DE4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80205DE8 00202DE8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80205DEC 00202DEC  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 80205DF0 00202DF0  7C 7D 1B 78 */	mr r29, r3
/* 80205DF4 00202DF4  3B C0 00 00 */	li r30, 0
/* 80205DF8 00202DF8  80 63 1C 90 */	lwz r3, 0x1c90(r3)
/* 80205DFC 00202DFC  3B 9D 1F 20 */	addi r28, r29, 0x1f20
/* 80205E00 00202E00  88 03 03 03 */	lbz r0, 0x303(r3)
/* 80205E04 00202E04  28 00 00 00 */	cmplwi r0, 0
/* 80205E08 00202E08  41 82 00 08 */	beq lbl_80205E10
/* 80205E0C 00202E0C  3B C0 00 01 */	li r30, 1
lbl_80205E10:
/* 80205E10 00202E10  80 9D 1C CC */	lwz r4, 0x1ccc(r29)
/* 80205E14 00202E14  7F A3 EB 78 */	mr r3, r29
/* 80205E18 00202E18  4B EE DB 61 */	bl BattleGetUnitPtr
/* 80205E1C 00202E1C  80 9D 1C D0 */	lwz r4, 0x1cd0(r29)
/* 80205E20 00202E20  7C 7F 1B 78 */	mr r31, r3
/* 80205E24 00202E24  4B F1 D9 D1 */	bl BtlUnit_GetPartsPtr
/* 80205E28 00202E28  80 1D 1C 9C */	lwz r0, 0x1c9c(r29)
/* 80205E2C 00202E2C  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80205E30 00202E30  41 82 01 74 */	beq lbl_80205FA4
/* 80205E34 00202E34  40 80 00 1C */	bge lbl_80205E50
/* 80205E38 00202E38  2C 00 00 64 */	cmpwi r0, 0x64
/* 80205E3C 00202E3C  41 82 00 D0 */	beq lbl_80205F0C
/* 80205E40 00202E40  40 80 05 90 */	bge lbl_802063D0
/* 80205E44 00202E44  2C 00 00 00 */	cmpwi r0, 0
/* 80205E48 00202E48  41 82 00 2C */	beq lbl_80205E74
/* 80205E4C 00202E4C  48 00 05 84 */	b lbl_802063D0
lbl_80205E50:
/* 80205E50 00202E50  2C 00 03 EB */	cmpwi r0, 0x3eb
/* 80205E54 00202E54  41 82 05 3C */	beq lbl_80206390
/* 80205E58 00202E58  40 80 00 10 */	bge lbl_80205E68
/* 80205E5C 00202E5C  2C 00 03 EA */	cmpwi r0, 0x3ea
/* 80205E60 00202E60  40 80 05 00 */	bge lbl_80206360
/* 80205E64 00202E64  48 00 05 6C */	b lbl_802063D0
lbl_80205E68:
/* 80205E68 00202E68  2C 00 03 ED */	cmpwi r0, 0x3ed
/* 80205E6C 00202E6C  40 80 05 64 */	bge lbl_802063D0
/* 80205E70 00202E70  48 00 05 44 */	b lbl_802063B4
lbl_80205E74:
/* 80205E74 00202E74  7F 83 E3 78 */	mr r3, r28
/* 80205E78 00202E78  38 80 00 00 */	li r4, 0
/* 80205E7C 00202E7C  38 A0 00 2C */	li r5, 0x2c
/* 80205E80 00202E80  4B DF F2 35 */	bl func_800050B4
/* 80205E84 00202E84  C0 02 F6 24 */	lfs f0, lbl_804209A4-_SDA2_BASE_(r2)
/* 80205E88 00202E88  38 A0 00 14 */	li r5, 0x14
/* 80205E8C 00202E8C  C0 22 F5 F8 */	lfs f1, lbl_80420978-_SDA2_BASE_(r2)
/* 80205E90 00202E90  38 C0 00 00 */	li r6, 0
/* 80205E94 00202E94  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 80205E98 00202E98  38 80 FF FF */	li r4, -1
/* 80205E9C 00202E9C  C0 02 F6 2C */	lfs f0, lbl_804209AC-_SDA2_BASE_(r2)
/* 80205EA0 00202EA0  38 00 01 00 */	li r0, 0x100
/* 80205EA4 00202EA4  D0 3C 00 18 */	stfs f1, 0x18(r28)
/* 80205EA8 00202EA8  38 60 00 32 */	li r3, 0x32
/* 80205EAC 00202EAC  90 BC 00 20 */	stw r5, 0x20(r28)
/* 80205EB0 00202EB0  90 DD 1F 50 */	stw r6, 0x1f50(r29)
/* 80205EB4 00202EB4  D0 3D 1F 78 */	stfs f1, 0x1f78(r29)
/* 80205EB8 00202EB8  80 BD 1C D8 */	lwz r5, 0x1cd8(r29)
/* 80205EBC 00202EBC  90 BD 1F 80 */	stw r5, 0x1f80(r29)
/* 80205EC0 00202EC0  90 DD 1F 84 */	stw r6, 0x1f84(r29)
/* 80205EC4 00202EC4  D0 1D 1F 74 */	stfs f0, 0x1f74(r29)
/* 80205EC8 00202EC8  90 9D 1F 94 */	stw r4, 0x1f94(r29)
/* 80205ECC 00202ECC  90 1D 1F 4C */	stw r0, 0x1f4c(r29)
/* 80205ED0 00202ED0  90 DD 1C E8 */	stw r6, 0x1ce8(r29)
/* 80205ED4 00202ED4  4B FF FA CD */	bl _get_angle_hp
/* 80205ED8 00202ED8  90 7D 1C EC */	stw r3, 0x1cec(r29)
/* 80205EDC 00202EDC  38 60 00 00 */	li r3, 0
/* 80205EE0 00202EE0  4B FF FA C1 */	bl _get_angle_hp
/* 80205EE4 00202EE4  90 7D 1C F0 */	stw r3, 0x1cf0(r29)
/* 80205EE8 00202EE8  38 00 00 32 */	li r0, 0x32
/* 80205EEC 00202EEC  38 80 00 63 */	li r4, 0x63
/* 80205EF0 00202EF0  38 60 00 01 */	li r3, 1
/* 80205EF4 00202EF4  90 1D 1F 8C */	stw r0, 0x1f8c(r29)
/* 80205EF8 00202EF8  38 00 FF FF */	li r0, -1
/* 80205EFC 00202EFC  90 9D 1C 9C */	stw r4, 0x1c9c(r29)
/* 80205F00 00202F00  90 7D 1C B8 */	stw r3, 0x1cb8(r29)
/* 80205F04 00202F04  90 1D 1F 90 */	stw r0, 0x1f90(r29)
/* 80205F08 00202F08  48 00 04 C8 */	b lbl_802063D0
lbl_80205F0C:
/* 80205F0C 00202F0C  80 7D 1C D4 */	lwz r3, 0x1cd4(r29)
/* 80205F10 00202F10  3C 00 43 30 */	lis r0, 0x4330
/* 80205F14 00202F14  3C 80 80 30 */	lis r4, lbl_802FDBB8@ha
/* 80205F18 00202F18  C0 22 F5 F8 */	lfs f1, lbl_80420978-_SDA2_BASE_(r2)
/* 80205F1C 00202F1C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80205F20 00202F20  90 01 00 08 */	stw r0, 8(r1)
/* 80205F24 00202F24  C8 44 DB B8 */	lfd f2, lbl_802FDBB8@l(r4)
/* 80205F28 00202F28  FC 60 08 90 */	fmr f3, f1
/* 80205F2C 00202F2C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80205F30 00202F30  7F E3 FB 78 */	mr r3, r31
/* 80205F34 00202F34  C8 01 00 08 */	lfd f0, 8(r1)
/* 80205F38 00202F38  EC 40 10 28 */	fsubs f2, f0, f2
/* 80205F3C 00202F3C  4B F1 D1 E5 */	bl BtlUnit_SetRotateOffset
/* 80205F40 00202F40  80 9D 1C CC */	lwz r4, 0x1ccc(r29)
/* 80205F44 00202F44  7F A3 EB 78 */	mr r3, r29
/* 80205F48 00202F48  4B EE DA 31 */	bl BattleGetUnitPtr
/* 80205F4C 00202F4C  80 9D 1C D0 */	lwz r4, 0x1cd0(r29)
/* 80205F50 00202F50  7C 7F 1B 78 */	mr r31, r3
/* 80205F54 00202F54  4B F1 D8 A1 */	bl BtlUnit_GetPartsPtr
/* 80205F58 00202F58  7F E3 FB 78 */	mr r3, r31
/* 80205F5C 00202F5C  38 9D 1F 60 */	addi r4, r29, 0x1f60
/* 80205F60 00202F60  38 BD 1F 64 */	addi r5, r29, 0x1f64
/* 80205F64 00202F64  38 DD 1F 68 */	addi r6, r29, 0x1f68
/* 80205F68 00202F68  4B F1 D8 31 */	bl func_80123798
/* 80205F6C 00202F6C  80 DD 1F 60 */	lwz r6, 0x1f60(r29)
/* 80205F70 00202F70  38 80 00 00 */	li r4, 0
/* 80205F74 00202F74  80 BD 1F 64 */	lwz r5, 0x1f64(r29)
/* 80205F78 00202F78  38 60 00 01 */	li r3, 1
/* 80205F7C 00202F7C  C0 02 F6 30 */	lfs f0, lbl_804209B0-_SDA2_BASE_(r2)
/* 80205F80 00202F80  38 00 03 E8 */	li r0, 0x3e8
/* 80205F84 00202F84  90 DD 1F 54 */	stw r6, 0x1f54(r29)
/* 80205F88 00202F88  90 BD 1F 58 */	stw r5, 0x1f58(r29)
/* 80205F8C 00202F8C  80 BD 1F 68 */	lwz r5, 0x1f68(r29)
/* 80205F90 00202F90  90 BD 1F 5C */	stw r5, 0x1f5c(r29)
/* 80205F94 00202F94  90 9D 1F 50 */	stw r4, 0x1f50(r29)
/* 80205F98 00202F98  D0 1D 1F 6C */	stfs f0, 0x1f6c(r29)
/* 80205F9C 00202F9C  90 7D 1F 88 */	stw r3, 0x1f88(r29)
/* 80205FA0 00202FA0  90 1D 1C 9C */	stw r0, 0x1c9c(r29)
lbl_80205FA4:
/* 80205FA4 00202FA4  80 9D 1F 50 */	lwz r4, 0x1f50(r29)
/* 80205FA8 00202FA8  3C 00 43 30 */	lis r0, 0x4330
/* 80205FAC 00202FAC  90 01 00 08 */	stw r0, 8(r1)
/* 80205FB0 00202FB0  3C 60 80 30 */	lis r3, lbl_802FDBB8@ha
/* 80205FB4 00202FB4  38 04 00 01 */	addi r0, r4, 1
/* 80205FB8 00202FB8  C8 23 DB B8 */	lfd f1, lbl_802FDBB8@l(r3)
/* 80205FBC 00202FBC  90 1D 1F 50 */	stw r0, 0x1f50(r29)
/* 80205FC0 00202FC0  80 9D 1C D8 */	lwz r4, 0x1cd8(r29)
/* 80205FC4 00202FC4  80 7D 1F 80 */	lwz r3, 0x1f80(r29)
/* 80205FC8 00202FC8  80 1D 1F 84 */	lwz r0, 0x1f84(r29)
/* 80205FCC 00202FCC  54 84 08 3C */	slwi r4, r4, 1
/* 80205FD0 00202FD0  7C 63 02 14 */	add r3, r3, r0
/* 80205FD4 00202FD4  7C 03 23 D6 */	divw r0, r3, r4
/* 80205FD8 00202FD8  7C 00 21 D6 */	mullw r0, r0, r4
/* 80205FDC 00202FDC  7C 00 18 50 */	subf r0, r0, r3
/* 80205FE0 00202FE0  1C 00 01 68 */	mulli r0, r0, 0x168
/* 80205FE4 00202FE4  7C 00 23 D6 */	divw r0, r0, r4
/* 80205FE8 00202FE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80205FEC 00202FEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80205FF0 00202FF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80205FF4 00202FF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80205FF8 00202FF8  D0 1D 1F 7C */	stfs f0, 0x1f7c(r29)
/* 80205FFC 00202FFC  C0 3D 1F 7C */	lfs f1, 0x1f7c(r29)
/* 80206000 00203000  4B F1 A8 15 */	bl func_80120814
/* 80206004 00203004  C0 02 F5 FC */	lfs f0, lbl_8042097C-_SDA2_BASE_(r2)
/* 80206008 00203008  EC 20 00 72 */	fmuls f1, f0, f1
/* 8020600C 0020300C  4B E0 12 9D */	bl reviseAngle
/* 80206010 00203010  D0 3D 1F 78 */	stfs f1, 0x1f78(r29)
/* 80206014 00203014  C0 02 F6 04 */	lfs f0, lbl_80420984-_SDA2_BASE_(r2)
/* 80206018 00203018  C0 3D 1F 7C */	lfs f1, 0x1f7c(r29)
/* 8020601C 0020301C  80 6D 17 10 */	lwz r3, lbl_80418970-_SDA_BASE_(r13)
/* 80206020 00203020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80206024 00203024  C0 62 F5 F8 */	lfs f3, lbl_80420978-_SDA2_BASE_(r2)
/* 80206028 00203028  4C 41 13 82 */	cror 2, 1, 2
/* 8020602C 0020302C  40 82 00 18 */	bne lbl_80206044
/* 80206030 00203030  C0 02 F6 34 */	lfs f0, lbl_804209B4-_SDA2_BASE_(r2)
/* 80206034 00203034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80206038 00203038  40 80 00 0C */	bge lbl_80206044
/* 8020603C 0020303C  C0 22 F6 38 */	lfs f1, lbl_804209B8-_SDA2_BASE_(r2)
/* 80206040 00203040  48 00 00 08 */	b lbl_80206048
lbl_80206044:
/* 80206044 00203044  C0 22 F6 10 */	lfs f1, lbl_80420990-_SDA2_BASE_(r2)
lbl_80206048:
/* 80206048 00203048  80 1D 1C C4 */	lwz r0, 0x1cc4(r29)
/* 8020604C 0020304C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80206050 00203050  41 82 00 DC */	beq lbl_8020612C
/* 80206054 00203054  88 83 0F 33 */	lbz r4, 0xf33(r3)
/* 80206058 00203058  28 04 00 0A */	cmplwi r4, 0xa
/* 8020605C 0020305C  40 81 00 68 */	ble lbl_802060C4
/* 80206060 00203060  88 03 0F 32 */	lbz r0, 0xf32(r3)
/* 80206064 00203064  28 00 00 0A */	cmplwi r0, 0xa
/* 80206068 00203068  40 80 00 5C */	bge lbl_802060C4
/* 8020606C 0020306C  C0 02 F5 F8 */	lfs f0, lbl_80420978-_SDA2_BASE_(r2)
/* 80206070 00203070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80206074 00203074  40 80 00 B8 */	bge lbl_8020612C
/* 80206078 00203078  3C 00 43 30 */	lis r0, 0x4330
/* 8020607C 0020307C  3C 60 80 30 */	lis r3, lbl_802FDBD8@ha
/* 80206080 00203080  90 81 00 0C */	stw r4, 0xc(r1)
/* 80206084 00203084  C8 63 DB D8 */	lfd f3, lbl_802FDBD8@l(r3)
/* 80206088 00203088  90 01 00 08 */	stw r0, 8(r1)
/* 8020608C 0020308C  C0 22 F6 3C */	lfs f1, lbl_804209BC-_SDA2_BASE_(r2)
/* 80206090 00203090  C8 41 00 08 */	lfd f2, 8(r1)
/* 80206094 00203094  C0 02 F6 10 */	lfs f0, lbl_80420990-_SDA2_BASE_(r2)
/* 80206098 00203098  EC 42 18 28 */	fsubs f2, f2, f3
/* 8020609C 0020309C  EC 42 00 72 */	fmuls f2, f2, f1
/* 802060A0 002030A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802060A4 002030A4  40 81 00 08 */	ble lbl_802060AC
/* 802060A8 002030A8  FC 40 00 90 */	fmr f2, f0
lbl_802060AC:
/* 802060AC 002030AC  C0 1D 1F 74 */	lfs f0, 0x1f74(r29)
/* 802060B0 002030B0  C0 22 F6 40 */	lfs f1, lbl_804209C0-_SDA2_BASE_(r2)
/* 802060B4 002030B4  FC 00 00 50 */	fneg f0, f0
/* 802060B8 002030B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 802060BC 002030BC  EC 60 00 B2 */	fmuls f3, f0, f2
/* 802060C0 002030C0  48 00 00 6C */	b lbl_8020612C
lbl_802060C4:
/* 802060C4 002030C4  28 04 00 0A */	cmplwi r4, 0xa
/* 802060C8 002030C8  40 80 00 64 */	bge lbl_8020612C
/* 802060CC 002030CC  88 83 0F 32 */	lbz r4, 0xf32(r3)
/* 802060D0 002030D0  28 04 00 0A */	cmplwi r4, 0xa
/* 802060D4 002030D4  40 81 00 58 */	ble lbl_8020612C
/* 802060D8 002030D8  C0 02 F5 F8 */	lfs f0, lbl_80420978-_SDA2_BASE_(r2)
/* 802060DC 002030DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802060E0 002030E0  40 81 00 4C */	ble lbl_8020612C
/* 802060E4 002030E4  3C 00 43 30 */	lis r0, 0x4330
/* 802060E8 002030E8  3C 60 80 30 */	lis r3, lbl_802FDBD8@ha
/* 802060EC 002030EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 802060F0 002030F0  C8 63 DB D8 */	lfd f3, lbl_802FDBD8@l(r3)
/* 802060F4 002030F4  90 01 00 08 */	stw r0, 8(r1)
/* 802060F8 002030F8  C0 22 F6 3C */	lfs f1, lbl_804209BC-_SDA2_BASE_(r2)
/* 802060FC 002030FC  C8 41 00 08 */	lfd f2, 8(r1)
/* 80206100 00203100  C0 02 F6 10 */	lfs f0, lbl_80420990-_SDA2_BASE_(r2)
/* 80206104 00203104  EC 42 18 28 */	fsubs f2, f2, f3
/* 80206108 00203108  EC 42 00 72 */	fmuls f2, f2, f1
/* 8020610C 0020310C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80206110 00203110  40 81 00 08 */	ble lbl_80206118
/* 80206114 00203114  FC 40 00 90 */	fmr f2, f0
lbl_80206118:
/* 80206118 00203118  C0 1D 1F 74 */	lfs f0, 0x1f74(r29)
/* 8020611C 0020311C  C0 22 F6 40 */	lfs f1, lbl_804209C0-_SDA2_BASE_(r2)
/* 80206120 00203120  FC 00 00 50 */	fneg f0, f0
/* 80206124 00203124  EC 01 00 32 */	fmuls f0, f1, f0
/* 80206128 00203128  EC 60 00 B2 */	fmuls f3, f0, f2
lbl_8020612C:
/* 8020612C 0020312C  80 9D 1F 84 */	lwz r4, 0x1f84(r29)
/* 80206130 00203130  3C 00 43 30 */	lis r0, 0x4330
/* 80206134 00203134  90 01 00 08 */	stw r0, 8(r1)
/* 80206138 00203138  3C 60 80 30 */	lis r3, lbl_802FDBB8@ha
/* 8020613C 0020313C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80206140 00203140  C8 43 DB B8 */	lfd f2, lbl_802FDBB8@l(r3)
/* 80206144 00203144  90 01 00 0C */	stw r0, 0xc(r1)
/* 80206148 00203148  C0 02 F6 04 */	lfs f0, lbl_80420984-_SDA2_BASE_(r2)
/* 8020614C 0020314C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80206150 00203150  EC 21 10 28 */	fsubs f1, f1, f2
/* 80206154 00203154  EC 21 18 2A */	fadds f1, f1, f3
/* 80206158 00203158  FC 20 08 1E */	fctiwz f1, f1
/* 8020615C 0020315C  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80206160 00203160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80206164 00203164  90 1D 1F 84 */	stw r0, 0x1f84(r29)
/* 80206168 00203168  C0 3D 1F 7C */	lfs f1, 0x1f7c(r29)
/* 8020616C 0020316C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80206170 00203170  4C 41 13 82 */	cror 2, 1, 2
/* 80206174 00203174  40 82 00 18 */	bne lbl_8020618C
/* 80206178 00203178  C0 02 F6 34 */	lfs f0, lbl_804209B4-_SDA2_BASE_(r2)
/* 8020617C 0020317C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80206180 00203180  40 80 00 0C */	bge lbl_8020618C
/* 80206184 00203184  C3 E2 F6 38 */	lfs f31, lbl_804209B8-_SDA2_BASE_(r2)
/* 80206188 00203188  48 00 00 08 */	b lbl_80206190
lbl_8020618C:
/* 8020618C 0020318C  C3 E2 F6 10 */	lfs f31, lbl_80420990-_SDA2_BASE_(r2)
lbl_80206190:
/* 80206190 00203190  80 7D 1F 80 */	lwz r3, 0x1f80(r29)
/* 80206194 00203194  3C 00 43 30 */	lis r0, 0x4330
/* 80206198 00203198  3C 80 80 30 */	lis r4, lbl_802FDBB8@ha
/* 8020619C 0020319C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802061A0 002031A0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802061A4 002031A4  C8 44 DB B8 */	lfd f2, lbl_802FDBB8@l(r4)
/* 802061A8 002031A8  90 61 00 14 */	stw r3, 0x14(r1)
/* 802061AC 002031AC  C0 1D 1F 74 */	lfs f0, 0x1f74(r29)
/* 802061B0 002031B0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802061B4 002031B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802061B8 002031B8  EC 21 10 28 */	fsubs f1, f1, f2
/* 802061BC 002031BC  EC 01 00 2A */	fadds f0, f1, f0
/* 802061C0 002031C0  FC 00 00 1E */	fctiwz f0, f0
/* 802061C4 002031C4  D8 01 00 08 */	stfd f0, 8(r1)
/* 802061C8 002031C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802061CC 002031CC  90 1D 1F 80 */	stw r0, 0x1f80(r29)
/* 802061D0 002031D0  80 9D 1C D8 */	lwz r4, 0x1cd8(r29)
/* 802061D4 002031D4  80 7D 1F 80 */	lwz r3, 0x1f80(r29)
/* 802061D8 002031D8  80 1D 1F 84 */	lwz r0, 0x1f84(r29)
/* 802061DC 002031DC  54 84 08 3C */	slwi r4, r4, 1
/* 802061E0 002031E0  7C 63 02 14 */	add r3, r3, r0
/* 802061E4 002031E4  7C 03 23 D6 */	divw r0, r3, r4
/* 802061E8 002031E8  7C 00 21 D6 */	mullw r0, r0, r4
/* 802061EC 002031EC  7C 00 18 50 */	subf r0, r0, r3
/* 802061F0 002031F0  1C 00 01 68 */	mulli r0, r0, 0x168
/* 802061F4 002031F4  7C 00 23 D6 */	divw r0, r0, r4
/* 802061F8 002031F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802061FC 002031FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80206200 00203200  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80206204 00203204  EC 00 10 28 */	fsubs f0, f0, f2
/* 80206208 00203208  D0 1D 1F 7C */	stfs f0, 0x1f7c(r29)
/* 8020620C 0020320C  C0 3D 1F 7C */	lfs f1, 0x1f7c(r29)
/* 80206210 00203210  4B F1 A6 05 */	bl func_80120814
/* 80206214 00203214  C0 02 F5 FC */	lfs f0, lbl_8042097C-_SDA2_BASE_(r2)
/* 80206218 00203218  EC 20 00 72 */	fmuls f1, f0, f1
/* 8020621C 0020321C  4B E0 10 8D */	bl reviseAngle
/* 80206220 00203220  D0 3D 1F 78 */	stfs f1, 0x1f78(r29)
/* 80206224 00203224  7F E3 FB 78 */	mr r3, r31
/* 80206228 00203228  C0 22 F5 F8 */	lfs f1, lbl_80420978-_SDA2_BASE_(r2)
/* 8020622C 0020322C  C0 7D 1F 78 */	lfs f3, 0x1f78(r29)
/* 80206230 00203230  FC 40 08 90 */	fmr f2, f1
/* 80206234 00203234  4B F1 D1 9D */	bl BtlUnit_SetRotate
/* 80206238 00203238  C0 3D 1F 7C */	lfs f1, 0x1f7c(r29)
/* 8020623C 0020323C  C0 02 F6 04 */	lfs f0, lbl_80420984-_SDA2_BASE_(r2)
/* 80206240 00203240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80206244 00203244  4C 41 13 82 */	cror 2, 1, 2
/* 80206248 00203248  40 82 00 18 */	bne lbl_80206260
/* 8020624C 0020324C  C0 02 F6 34 */	lfs f0, lbl_804209B4-_SDA2_BASE_(r2)
/* 80206250 00203250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80206254 00203254  40 80 00 0C */	bge lbl_80206260
/* 80206258 00203258  C0 02 F6 38 */	lfs f0, lbl_804209B8-_SDA2_BASE_(r2)
/* 8020625C 0020325C  48 00 00 08 */	b lbl_80206264
lbl_80206260:
/* 80206260 00203260  C0 02 F6 10 */	lfs f0, lbl_80420990-_SDA2_BASE_(r2)
lbl_80206264:
/* 80206264 00203264  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80206268 00203268  41 82 00 0C */	beq lbl_80206274
/* 8020626C 0020326C  38 00 00 00 */	li r0, 0
/* 80206270 00203270  90 1D 1F 88 */	stw r0, 0x1f88(r29)
lbl_80206274:
/* 80206274 00203274  C0 3D 1F 78 */	lfs f1, 0x1f78(r29)
/* 80206278 00203278  4B FF F7 49 */	bl _get_angle_rate
/* 8020627C 0020327C  7C 7F 1B 78 */	mr r31, r3
/* 80206280 00203280  4B FF F7 21 */	bl _get_angle_hp
/* 80206284 00203284  90 7D 1C EC */	stw r3, 0x1cec(r29)
/* 80206288 00203288  93 FD 1F 8C */	stw r31, 0x1f8c(r29)
/* 8020628C 0020328C  C0 3D 1F 78 */	lfs f1, 0x1f78(r29)
/* 80206290 00203290  4B FF F7 31 */	bl _get_angle_rate
/* 80206294 00203294  2C 03 00 05 */	cmpwi r3, 5
/* 80206298 00203298  3B 80 FF FF */	li r28, -1
/* 8020629C 0020329C  41 81 00 0C */	bgt lbl_802062A8
/* 802062A0 002032A0  3B 80 00 00 */	li r28, 0
/* 802062A4 002032A4  48 00 00 10 */	b lbl_802062B4
lbl_802062A8:
/* 802062A8 002032A8  2C 03 00 5F */	cmpwi r3, 0x5f
/* 802062AC 002032AC  41 80 00 08 */	blt lbl_802062B4
/* 802062B0 002032B0  3B 80 00 01 */	li r28, 1
lbl_802062B4:
/* 802062B4 002032B4  2C 1C FF FF */	cmpwi r28, -1
/* 802062B8 002032B8  41 82 00 20 */	beq lbl_802062D8
/* 802062BC 002032BC  80 1D 1F 94 */	lwz r0, 0x1f94(r29)
/* 802062C0 002032C0  7C 1C 00 00 */	cmpw r28, r0
/* 802062C4 002032C4  41 82 00 14 */	beq lbl_802062D8
/* 802062C8 002032C8  3C 60 80 30 */	lis r3, lbl_802FDBC0@ha
/* 802062CC 002032CC  38 63 DB C0 */	addi r3, r3, lbl_802FDBC0@l
/* 802062D0 002032D0  4B EC F1 F1 */	bl psndSFXOn
/* 802062D4 002032D4  93 9D 1F 94 */	stw r28, 0x1f94(r29)
lbl_802062D8:
/* 802062D8 002032D8  2C 1E 00 00 */	cmpwi r30, 0
/* 802062DC 002032DC  3B 80 00 00 */	li r28, 0
/* 802062E0 002032E0  41 82 00 1C */	beq lbl_802062FC
/* 802062E4 002032E4  38 60 00 32 */	li r3, 0x32
/* 802062E8 002032E8  4B FF F6 B9 */	bl _get_angle_hp
/* 802062EC 002032EC  80 1D 1C EC */	lwz r0, 0x1cec(r29)
/* 802062F0 002032F0  7C 00 18 00 */	cmpw r0, r3
/* 802062F4 002032F4  41 80 00 08 */	blt lbl_802062FC
/* 802062F8 002032F8  3B 80 00 01 */	li r28, 1
lbl_802062FC:
/* 802062FC 002032FC  80 7D 1F 4C */	lwz r3, 0x1f4c(r29)
/* 80206300 00203300  4B F0 E9 3D */	bl func_80114C3C
/* 80206304 00203304  2C 03 00 00 */	cmpwi r3, 0
/* 80206308 00203308  40 82 00 0C */	bne lbl_80206314
/* 8020630C 0020330C  2C 1C 00 00 */	cmpwi r28, 0
/* 80206310 00203310  41 82 00 2C */	beq lbl_8020633C
lbl_80206314:
/* 80206314 00203314  38 00 00 01 */	li r0, 1
/* 80206318 00203318  38 60 00 02 */	li r3, 2
/* 8020631C 0020331C  90 1D 1C E8 */	stw r0, 0x1ce8(r29)
/* 80206320 00203320  38 00 03 EA */	li r0, 0x3ea
/* 80206324 00203324  90 7D 1C B8 */	stw r3, 0x1cb8(r29)
/* 80206328 00203328  80 7D 1C B4 */	lwz r3, 0x1cb4(r29)
/* 8020632C 0020332C  38 63 00 01 */	addi r3, r3, 1
/* 80206330 00203330  90 7D 1C B4 */	stw r3, 0x1cb4(r29)
/* 80206334 00203334  90 1D 1C 9C */	stw r0, 0x1c9c(r29)
/* 80206338 00203338  48 00 00 98 */	b lbl_802063D0
lbl_8020633C:
/* 8020633C 0020333C  80 7D 1F 50 */	lwz r3, 0x1f50(r29)
/* 80206340 00203340  80 1D 1C DC */	lwz r0, 0x1cdc(r29)
/* 80206344 00203344  7C 03 00 00 */	cmpw r3, r0
/* 80206348 00203348  40 81 00 88 */	ble lbl_802063D0
/* 8020634C 0020334C  38 60 00 00 */	li r3, 0
/* 80206350 00203350  38 00 03 EA */	li r0, 0x3ea
/* 80206354 00203354  90 7D 1C B8 */	stw r3, 0x1cb8(r29)
/* 80206358 00203358  90 1D 1C 9C */	stw r0, 0x1c9c(r29)
/* 8020635C 0020335C  48 00 00 74 */	b lbl_802063D0
lbl_80206360:
/* 80206360 00203360  80 7D 1C C0 */	lwz r3, 0x1cc0(r29)
/* 80206364 00203364  38 00 00 3C */	li r0, 0x3c
/* 80206368 00203368  60 63 00 01 */	ori r3, r3, 1
/* 8020636C 0020336C  90 7D 1C C0 */	stw r3, 0x1cc0(r29)
/* 80206370 00203370  90 1D 1F 98 */	stw r0, 0x1f98(r29)
/* 80206374 00203374  80 7D 1F 90 */	lwz r3, 0x1f90(r29)
/* 80206378 00203378  3C 03 00 01 */	addis r0, r3, 1
/* 8020637C 0020337C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80206380 00203380  41 82 00 08 */	beq lbl_80206388
/* 80206384 00203384  4B EC EE 79 */	bl psndSFXOff
lbl_80206388:
/* 80206388 00203388  38 00 03 EB */	li r0, 0x3eb
/* 8020638C 0020338C  90 1D 1C 9C */	stw r0, 0x1c9c(r29)
lbl_80206390:
/* 80206390 00203390  80 7D 1F 98 */	lwz r3, 0x1f98(r29)
/* 80206394 00203394  38 03 FF FF */	addi r0, r3, -1
/* 80206398 00203398  90 1D 1F 98 */	stw r0, 0x1f98(r29)
/* 8020639C 0020339C  80 1D 1F 98 */	lwz r0, 0x1f98(r29)
/* 802063A0 002033A0  2C 00 00 00 */	cmpwi r0, 0
/* 802063A4 002033A4  41 81 00 2C */	bgt lbl_802063D0
/* 802063A8 002033A8  38 00 03 EC */	li r0, 0x3ec
/* 802063AC 002033AC  90 1D 1C 9C */	stw r0, 0x1c9c(r29)
/* 802063B0 002033B0  48 00 00 20 */	b lbl_802063D0
lbl_802063B4:
/* 802063B4 002033B4  38 00 00 00 */	li r0, 0
/* 802063B8 002033B8  38 60 00 00 */	li r3, 0
/* 802063BC 002033BC  90 1D 1C A0 */	stw r0, 0x1ca0(r29)
/* 802063C0 002033C0  90 1D 1C A8 */	stw r0, 0x1ca8(r29)
/* 802063C4 002033C4  90 1D 1C A4 */	stw r0, 0x1ca4(r29)
/* 802063C8 002033C8  90 1D 1C AC */	stw r0, 0x1cac(r29)
/* 802063CC 002033CC  48 00 00 08 */	b lbl_802063D4
lbl_802063D0:
/* 802063D0 002033D0  38 60 00 01 */	li r3, 1
lbl_802063D4:
/* 802063D4 002033D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 802063D8 002033D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802063DC 002033DC  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 802063E0 002033E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802063E4 002033E4  7C 08 03 A6 */	mtlr r0
/* 802063E8 002033E8  38 21 00 40 */	addi r1, r1, 0x40
/* 802063EC 002033EC  4E 80 00 20 */	blr 