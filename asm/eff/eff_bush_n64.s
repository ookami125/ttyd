.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effBushDisp
effBushDisp:
/* 801AE44C 001AB44C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801AE450 001AB450  7C 08 02 A6 */	mflr r0
/* 801AE454 001AB454  90 01 01 14 */	stw r0, 0x114(r1)
/* 801AE458 001AB458  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 801AE45C 001AB45C  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 801AE460 001AB460  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 801AE464 001AB464  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 801AE468 001AB468  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 801AE46C 001AB46C  7C 9D 23 78 */	mr r29, r4
/* 801AE470 001AB470  4B E6 0C E1 */	bl camGetPtr
/* 801AE474 001AB474  83 DD 00 0C */	lwz r30, 0xc(r29)
/* 801AE478 001AB478  7C 7F 1B 78 */	mr r31, r3
/* 801AE47C 001AB47C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801AE480 001AB480  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801AE484 001AB484  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801AE488 001AB488  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 801AE48C 001AB48C  48 0E 9F A1 */	bl PSMTXTrans
/* 801AE490 001AB490  38 60 00 04 */	li r3, 4
/* 801AE494 001AB494  4B E6 0C BD */	bl camGetPtr
/* 801AE498 001AB498  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 801AE49C 001AB49C  38 61 00 60 */	addi r3, r1, 0x60
/* 801AE4A0 001AB4A0  C0 02 D7 9C */	lfs f0, lbl_8041EB1C@sda21(r2)
/* 801AE4A4 001AB4A4  38 80 00 79 */	li r4, 0x79
/* 801AE4A8 001AB4A8  FC 20 08 50 */	fneg f1, f1
/* 801AE4AC 001AB4AC  EC 20 00 72 */	fmuls f1, f0, f1
/* 801AE4B0 001AB4B0  48 0E 9D 3D */	bl PSMTXRotRad
/* 801AE4B4 001AB4B4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801AE4B8 001AB4B8  38 81 00 60 */	addi r4, r1, 0x60
/* 801AE4BC 001AB4BC  38 A1 00 30 */	addi r5, r1, 0x30
/* 801AE4C0 001AB4C0  48 0E 9A A1 */	bl PSMTXConcat
/* 801AE4C4 001AB4C4  38 81 00 30 */	addi r4, r1, 0x30
/* 801AE4C8 001AB4C8  38 7F 01 1C */	addi r3, r31, 0x11c
/* 801AE4CC 001AB4CC  7C 85 23 78 */	mr r5, r4
/* 801AE4D0 001AB4D0  48 0E 9A 91 */	bl PSMTXConcat
/* 801AE4D4 001AB4D4  80 A2 D7 98 */	lwz r5, lbl_8041EB18@sda21(r2)
/* 801AE4D8 001AB4D8  38 81 00 0C */	addi r4, r1, 0xc
/* 801AE4DC 001AB4DC  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 801AE4E0 001AB4E0  38 60 00 01 */	li r3, 1
/* 801AE4E4 001AB4E4  90 A1 00 08 */	stw r5, 8(r1)
/* 801AE4E8 001AB4E8  98 01 00 0B */	stb r0, 0xb(r1)
/* 801AE4EC 001AB4EC  80 01 00 08 */	lwz r0, 8(r1)
/* 801AE4F0 001AB4F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AE4F4 001AB4F4  48 10 47 C1 */	bl GXSetTevColor
/* 801AE4F8 001AB4F8  38 60 00 01 */	li r3, 1
/* 801AE4FC 001AB4FC  3B DE 00 34 */	addi r30, r30, 0x34
/* 801AE500 001AB500  48 10 2C 39 */	bl GXSetNumChans
/* 801AE504 001AB504  38 60 00 04 */	li r3, 4
/* 801AE508 001AB508  38 80 00 00 */	li r4, 0
/* 801AE50C 001AB50C  38 A0 00 00 */	li r5, 0
/* 801AE510 001AB510  38 C0 00 01 */	li r6, 1
/* 801AE514 001AB514  38 E0 00 00 */	li r7, 0
/* 801AE518 001AB518  39 00 00 00 */	li r8, 0
/* 801AE51C 001AB51C  39 20 00 02 */	li r9, 2
/* 801AE520 001AB520  48 10 2C 55 */	bl GXSetChanCtrl
/* 801AE524 001AB524  38 60 00 01 */	li r3, 1
/* 801AE528 001AB528  48 10 0D 59 */	bl GXSetNumTexGens
/* 801AE52C 001AB52C  38 60 00 00 */	li r3, 0
/* 801AE530 001AB530  38 80 00 01 */	li r4, 1
/* 801AE534 001AB534  38 A0 00 04 */	li r5, 4
/* 801AE538 001AB538  38 C0 00 1E */	li r6, 0x1e
/* 801AE53C 001AB53C  38 E0 00 00 */	li r7, 0
/* 801AE540 001AB540  39 00 00 7D */	li r8, 0x7d
/* 801AE544 001AB544  48 10 0A BD */	bl GXSetTexCoordGen2
/* 801AE548 001AB548  C0 22 D7 A0 */	lfs f1, lbl_8041EB20@sda21(r2)
/* 801AE54C 001AB54C  38 61 00 90 */	addi r3, r1, 0x90
/* 801AE550 001AB550  C0 42 D7 A4 */	lfs f2, lbl_8041EB24@sda21(r2)
/* 801AE554 001AB554  C0 62 D7 A8 */	lfs f3, lbl_8041EB28@sda21(r2)
/* 801AE558 001AB558  48 0E 9F 55 */	bl PSMTXScale
/* 801AE55C 001AB55C  38 61 00 90 */	addi r3, r1, 0x90
/* 801AE560 001AB560  38 80 00 1E */	li r4, 0x1e
/* 801AE564 001AB564  38 A0 00 01 */	li r5, 1
/* 801AE568 001AB568  48 10 60 65 */	bl GXLoadTexMtxImm
/* 801AE56C 001AB56C  38 81 00 10 */	addi r4, r1, 0x10
/* 801AE570 001AB570  38 60 00 2A */	li r3, 0x2a
/* 801AE574 001AB574  48 02 32 D1 */	bl effGetTexObjN64
/* 801AE578 001AB578  38 61 00 10 */	addi r3, r1, 0x10
/* 801AE57C 001AB57C  38 80 00 00 */	li r4, 0
/* 801AE580 001AB580  48 10 34 FD */	bl GXLoadTexObj
/* 801AE584 001AB584  38 60 00 01 */	li r3, 1
/* 801AE588 001AB588  48 10 4C 41 */	bl GXSetNumTevStages
/* 801AE58C 001AB58C  38 60 00 00 */	li r3, 0
/* 801AE590 001AB590  38 80 00 00 */	li r4, 0
/* 801AE594 001AB594  38 A0 00 00 */	li r5, 0
/* 801AE598 001AB598  38 C0 00 04 */	li r6, 4
/* 801AE59C 001AB59C  48 10 4A 91 */	bl GXSetTevOrder
/* 801AE5A0 001AB5A0  38 60 00 00 */	li r3, 0
/* 801AE5A4 001AB5A4  38 80 00 00 */	li r4, 0
/* 801AE5A8 001AB5A8  38 A0 00 00 */	li r5, 0
/* 801AE5AC 001AB5AC  38 C0 00 00 */	li r6, 0
/* 801AE5B0 001AB5B0  38 E0 00 01 */	li r7, 1
/* 801AE5B4 001AB5B4  39 00 00 00 */	li r8, 0
/* 801AE5B8 001AB5B8  48 10 46 2D */	bl GXSetTevColorOp
/* 801AE5BC 001AB5BC  38 60 00 00 */	li r3, 0
/* 801AE5C0 001AB5C0  38 80 00 00 */	li r4, 0
/* 801AE5C4 001AB5C4  38 A0 00 00 */	li r5, 0
/* 801AE5C8 001AB5C8  38 C0 00 00 */	li r6, 0
/* 801AE5CC 001AB5CC  38 E0 00 01 */	li r7, 1
/* 801AE5D0 001AB5D0  39 00 00 00 */	li r8, 0
/* 801AE5D4 001AB5D4  48 10 46 79 */	bl GXSetTevAlphaOp
/* 801AE5D8 001AB5D8  38 60 00 00 */	li r3, 0
/* 801AE5DC 001AB5DC  38 80 00 0F */	li r4, 0xf
/* 801AE5E0 001AB5E0  38 A0 00 0A */	li r5, 0xa
/* 801AE5E4 001AB5E4  38 C0 00 08 */	li r6, 8
/* 801AE5E8 001AB5E8  38 E0 00 0F */	li r7, 0xf
/* 801AE5EC 001AB5EC  48 10 45 71 */	bl GXSetTevColorIn
/* 801AE5F0 001AB5F0  38 60 00 00 */	li r3, 0
/* 801AE5F4 001AB5F4  38 80 00 07 */	li r4, 7
/* 801AE5F8 001AB5F8  38 A0 00 01 */	li r5, 1
/* 801AE5FC 001AB5FC  38 C0 00 04 */	li r6, 4
/* 801AE600 001AB600  38 E0 00 07 */	li r7, 7
/* 801AE604 001AB604  48 10 45 9D */	bl GXSetTevAlphaIn
/* 801AE608 001AB608  38 60 00 00 */	li r3, 0
/* 801AE60C 001AB60C  48 10 18 7D */	bl GXSetCullMode
/* 801AE610 001AB610  48 10 01 0D */	bl GXClearVtxDesc
/* 801AE614 001AB614  38 60 00 09 */	li r3, 9
/* 801AE618 001AB618  38 80 00 03 */	li r4, 3
/* 801AE61C 001AB61C  48 0F F7 E9 */	bl GXSetVtxDesc
/* 801AE620 001AB620  38 60 00 0B */	li r3, 0xb
/* 801AE624 001AB624  38 80 00 03 */	li r4, 3
/* 801AE628 001AB628  48 0F F7 DD */	bl GXSetVtxDesc
/* 801AE62C 001AB62C  38 60 00 0D */	li r3, 0xd
/* 801AE630 001AB630  38 80 00 03 */	li r4, 3
/* 801AE634 001AB634  48 0F F7 D1 */	bl GXSetVtxDesc
/* 801AE638 001AB638  38 60 00 00 */	li r3, 0
/* 801AE63C 001AB63C  38 80 00 09 */	li r4, 9
/* 801AE640 001AB640  38 A0 00 01 */	li r5, 1
/* 801AE644 001AB644  38 C0 00 03 */	li r6, 3
/* 801AE648 001AB648  38 E0 00 00 */	li r7, 0
/* 801AE64C 001AB64C  48 10 01 09 */	bl GXSetVtxAttrFmt
/* 801AE650 001AB650  38 60 00 00 */	li r3, 0
/* 801AE654 001AB654  38 80 00 0B */	li r4, 0xb
/* 801AE658 001AB658  38 A0 00 01 */	li r5, 1
/* 801AE65C 001AB65C  38 C0 00 05 */	li r6, 5
/* 801AE660 001AB660  38 E0 00 00 */	li r7, 0
/* 801AE664 001AB664  48 10 00 F1 */	bl GXSetVtxAttrFmt
/* 801AE668 001AB668  38 60 00 00 */	li r3, 0
/* 801AE66C 001AB66C  38 80 00 0D */	li r4, 0xd
/* 801AE670 001AB670  38 A0 00 01 */	li r5, 1
/* 801AE674 001AB674  38 C0 00 03 */	li r6, 3
/* 801AE678 001AB678  38 E0 00 0C */	li r7, 0xc
/* 801AE67C 001AB67C  48 10 00 D9 */	bl GXSetVtxAttrFmt
/* 801AE680 001AB680  3C 80 80 3A */	lis r4, lbl_8039B4A8@ha
/* 801AE684 001AB684  38 60 00 09 */	li r3, 9
/* 801AE688 001AB688  38 84 B4 A8 */	addi r4, r4, lbl_8039B4A8@l
/* 801AE68C 001AB68C  38 A0 00 0E */	li r5, 0xe
/* 801AE690 001AB690  48 10 09 1D */	bl GXSetArray
/* 801AE694 001AB694  3C 80 80 3A */	lis r4, lbl_8039B4A8@ha
/* 801AE698 001AB698  38 60 00 0B */	li r3, 0xb
/* 801AE69C 001AB69C  38 84 B4 A8 */	addi r4, r4, lbl_8039B4A8@l
/* 801AE6A0 001AB6A0  38 A0 00 0E */	li r5, 0xe
/* 801AE6A4 001AB6A4  38 84 00 0A */	addi r4, r4, 0xa
/* 801AE6A8 001AB6A8  48 10 09 05 */	bl GXSetArray
/* 801AE6AC 001AB6AC  3C 80 80 3A */	lis r4, lbl_8039B4A8@ha
/* 801AE6B0 001AB6B0  38 60 00 0D */	li r3, 0xd
/* 801AE6B4 001AB6B4  38 84 B4 A8 */	addi r4, r4, lbl_8039B4A8@l
/* 801AE6B8 001AB6B8  38 A0 00 0E */	li r5, 0xe
/* 801AE6BC 001AB6BC  38 84 00 06 */	addi r4, r4, 6
/* 801AE6C0 001AB6C0  48 10 08 ED */	bl GXSetArray
/* 801AE6C4 001AB6C4  C3 E2 D7 9C */	lfs f31, lbl_8041EB1C@sda21(r2)
/* 801AE6C8 001AB6C8  3B E0 00 01 */	li r31, 1
/* 801AE6CC 001AB6CC  48 00 00 E4 */	b .L_801AE7B0
.L_801AE6D0:
/* 801AE6D0 001AB6D0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801AE6D4 001AB6D4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801AE6D8 001AB6D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801AE6DC 001AB6DC  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 801AE6E0 001AB6E0  48 0E 9D 4D */	bl PSMTXTrans
/* 801AE6E4 001AB6E4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 801AE6E8 001AB6E8  38 61 00 60 */	addi r3, r1, 0x60
/* 801AE6EC 001AB6EC  38 80 00 7A */	li r4, 0x7a
/* 801AE6F0 001AB6F0  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801AE6F4 001AB6F4  48 0E 9A F9 */	bl PSMTXRotRad
/* 801AE6F8 001AB6F8  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801AE6FC 001AB6FC  38 81 00 60 */	addi r4, r1, 0x60
/* 801AE700 001AB700  7C 65 1B 78 */	mr r5, r3
/* 801AE704 001AB704  48 0E 98 5D */	bl PSMTXConcat
/* 801AE708 001AB708  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 801AE70C 001AB70C  38 61 00 60 */	addi r3, r1, 0x60
/* 801AE710 001AB710  38 80 00 79 */	li r4, 0x79
/* 801AE714 001AB714  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801AE718 001AB718  48 0E 9A D5 */	bl PSMTXRotRad
/* 801AE71C 001AB71C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801AE720 001AB720  38 81 00 60 */	addi r4, r1, 0x60
/* 801AE724 001AB724  7C 65 1B 78 */	mr r5, r3
/* 801AE728 001AB728  48 0E 98 39 */	bl PSMTXConcat
/* 801AE72C 001AB72C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 801AE730 001AB730  38 61 00 30 */	addi r3, r1, 0x30
/* 801AE734 001AB734  7C 85 23 78 */	mr r5, r4
/* 801AE738 001AB738  48 0E 98 29 */	bl PSMTXConcat
/* 801AE73C 001AB73C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801AE740 001AB740  38 80 00 00 */	li r4, 0
/* 801AE744 001AB744  48 10 5D B5 */	bl GXLoadPosMtxImm
/* 801AE748 001AB748  38 60 00 00 */	li r3, 0
/* 801AE74C 001AB74C  48 10 5E 4D */	bl GXSetCurrentMtx
/* 801AE750 001AB750  38 60 00 90 */	li r3, 0x90
/* 801AE754 001AB754  38 80 00 00 */	li r4, 0
/* 801AE758 001AB758  38 A0 00 0C */	li r5, 0xc
/* 801AE75C 001AB75C  48 10 15 0D */	bl GXBegin
/* 801AE760 001AB760  38 60 00 00 */	li r3, 0
/* 801AE764 001AB764  38 80 00 01 */	li r4, 1
/* 801AE768 001AB768  38 A0 00 02 */	li r5, 2
/* 801AE76C 001AB76C  38 C0 00 00 */	li r6, 0
/* 801AE770 001AB770  38 E0 00 00 */	li r7, 0
/* 801AE774 001AB774  39 00 00 02 */	li r8, 2
/* 801AE778 001AB778  39 20 00 03 */	li r9, 3
/* 801AE77C 001AB77C  39 40 00 00 */	li r10, 0
/* 801AE780 001AB780  48 02 2E B5 */	bl tri2
/* 801AE784 001AB784  38 60 00 06 */	li r3, 6
/* 801AE788 001AB788  38 80 00 05 */	li r4, 5
/* 801AE78C 001AB78C  38 A0 00 04 */	li r5, 4
/* 801AE790 001AB790  38 C0 00 04 */	li r6, 4
/* 801AE794 001AB794  38 E0 00 07 */	li r7, 7
/* 801AE798 001AB798  39 00 00 06 */	li r8, 6
/* 801AE79C 001AB79C  39 20 00 04 */	li r9, 4
/* 801AE7A0 001AB7A0  39 40 00 04 */	li r10, 4
/* 801AE7A4 001AB7A4  48 02 2E 91 */	bl tri2
/* 801AE7A8 001AB7A8  3B FF 00 01 */	addi r31, r31, 1
/* 801AE7AC 001AB7AC  3B DE 00 34 */	addi r30, r30, 0x34
.L_801AE7B0:
/* 801AE7B0 001AB7B0  80 1D 00 08 */	lwz r0, 8(r29)
/* 801AE7B4 001AB7B4  7C 1F 00 00 */	cmpw r31, r0
/* 801AE7B8 001AB7B8  41 80 FF 18 */	blt .L_801AE6D0
/* 801AE7BC 001AB7BC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 801AE7C0 001AB7C0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801AE7C4 001AB7C4  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 801AE7C8 001AB7C8  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801AE7CC 001AB7CC  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 801AE7D0 001AB7D0  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 801AE7D4 001AB7D4  7C 08 03 A6 */	mtlr r0
/* 801AE7D8 001AB7D8  38 21 01 10 */	addi r1, r1, 0x110
/* 801AE7DC 001AB7DC  4E 80 00 20 */	blr 
effBushMain:
/* 801AE7E0 001AB7E0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801AE7E4 001AB7E4  7C 08 02 A6 */	mflr r0
/* 801AE7E8 001AB7E8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801AE7EC 001AB7EC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 801AE7F0 001AB7F0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 801AE7F4 001AB7F4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 801AE7F8 001AB7F8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 801AE7FC 001AB7FC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 801AE800 001AB800  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 801AE804 001AB804  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 801AE808 001AB808  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 801AE80C 001AB80C  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 801AE810 001AB810  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 801AE814 001AB814  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 801AE818 001AB818  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 801AE81C 001AB81C  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 801AE820 001AB820  F3 21 00 78 */	psq_st f25, 120(r1), 0, qr0
/* 801AE824 001AB824  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 801AE828 001AB828  F3 01 00 68 */	psq_st f24, 104(r1), 0, qr0
/* 801AE82C 001AB82C  DA E1 00 50 */	stfd f23, 0x50(r1)
/* 801AE830 001AB830  F2 E1 00 58 */	psq_st f23, 88(r1), 0, qr0
/* 801AE834 001AB834  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 801AE838 001AB838  3C 80 80 30 */	lis r4, lbl_802FA378@ha
/* 801AE83C 001AB83C  7C 7D 1B 78 */	mr r29, r3
/* 801AE840 001AB840  38 A4 A3 78 */	addi r5, r4, lbl_802FA378@l
/* 801AE844 001AB844  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 801AE848 001AB848  80 85 00 00 */	lwz r4, 0(r5)
/* 801AE84C 001AB84C  80 65 00 04 */	lwz r3, 4(r5)
/* 801AE850 001AB850  80 05 00 08 */	lwz r0, 8(r5)
/* 801AE854 001AB854  90 81 00 08 */	stw r4, 8(r1)
/* 801AE858 001AB858  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801AE85C 001AB85C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801AE860 001AB860  C0 3F 00 08 */	lfs f1, 8(r31)
/* 801AE864 001AB864  D0 01 00 08 */	stfs f0, 8(r1)
/* 801AE868 001AB868  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801AE86C 001AB86C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801AE870 001AB870  80 81 00 08 */	lwz r4, 8(r1)
/* 801AE874 001AB874  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801AE878 001AB878  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801AE87C 001AB87C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801AE880 001AB880  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801AE884 001AB884  90 81 00 14 */	stw r4, 0x14(r1)
/* 801AE888 001AB888  90 61 00 18 */	stw r3, 0x18(r1)
/* 801AE88C 001AB88C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801AE890 001AB890  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 801AE894 001AB894  83 DF 00 00 */	lwz r30, 0(r31)
/* 801AE898 001AB898  2C 00 00 05 */	cmpwi r0, 5
/* 801AE89C 001AB89C  41 80 00 34 */	blt .L_801AE8D0
/* 801AE8A0 001AB8A0  2C 00 00 0F */	cmpwi r0, 0xf
/* 801AE8A4 001AB8A4  40 80 00 2C */	bge .L_801AE8D0
/* 801AE8A8 001AB8A8  2C 1E 00 01 */	cmpwi r30, 1
/* 801AE8AC 001AB8AC  41 82 00 24 */	beq .L_801AE8D0
/* 801AE8B0 001AB8B0  40 80 00 20 */	bge .L_801AE8D0
/* 801AE8B4 001AB8B4  2C 1E 00 00 */	cmpwi r30, 0
/* 801AE8B8 001AB8B8  40 80 00 08 */	bge .L_801AE8C0
/* 801AE8BC 001AB8BC  48 00 00 14 */	b .L_801AE8D0
.L_801AE8C0:
/* 801AE8C0 001AB8C0  4B EA E9 55 */	bl marioGetPtr
/* 801AE8C4 001AB8C4  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 801AE8C8 001AB8C8  28 00 00 00 */	cmplwi r0, 0
/* 801AE8CC 001AB8CC  41 82 02 AC */	beq .L_801AEB78
.L_801AE8D0:
/* 801AE8D0 001AB8D0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 801AE8D4 001AB8D4  3C 60 00 05 */	lis r3, 0x0004F1A0@ha
/* 801AE8D8 001AB8D8  38 03 F1 A0 */	addi r0, r3, 0x0004F1A0@l
/* 801AE8DC 001AB8DC  38 64 FF FF */	addi r3, r4, -1
/* 801AE8E0 001AB8E0  90 7F 00 28 */	stw r3, 0x28(r31)
/* 801AE8E4 001AB8E4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801AE8E8 001AB8E8  38 63 00 01 */	addi r3, r3, 1
/* 801AE8EC 001AB8EC  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 801AE8F0 001AB8F0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801AE8F4 001AB8F4  7C 03 00 00 */	cmpw r3, r0
/* 801AE8F8 001AB8F8  40 81 00 0C */	ble .L_801AE904
/* 801AE8FC 001AB8FC  38 00 01 00 */	li r0, 0x100
/* 801AE900 001AB900  90 1F 00 2C */	stw r0, 0x2c(r31)
.L_801AE904:
/* 801AE904 001AB904  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 801AE908 001AB908  2C 06 00 00 */	cmpwi r6, 0
/* 801AE90C 001AB90C  40 80 00 10 */	bge .L_801AE91C
/* 801AE910 001AB910  7F A3 EB 78 */	mr r3, r29
/* 801AE914 001AB914  4B EA F2 71 */	bl effDelete
/* 801AE918 001AB918  48 00 02 60 */	b .L_801AEB78
.L_801AE91C:
/* 801AE91C 001AB91C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 801AE920 001AB920  2C 00 00 0A */	cmpwi r0, 0xa
/* 801AE924 001AB924  40 80 00 58 */	bge .L_801AE97C
/* 801AE928 001AB928  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801AE92C 001AB92C  3C 60 43 30 */	lis r3, 0x4330
/* 801AE930 001AB930  3C A0 80 30 */	lis r5, lbl_802FA388@ha
/* 801AE934 001AB934  90 61 00 20 */	stw r3, 0x20(r1)
/* 801AE938 001AB938  20 80 00 FF */	subfic r4, r0, 0xff
/* 801AE93C 001AB93C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AE940 001AB940  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801AE944 001AB944  C8 45 A3 88 */	lfd f2, lbl_802FA388@l(r5)
/* 801AE948 001AB948  90 81 00 24 */	stw r4, 0x24(r1)
/* 801AE94C 001AB94C  C0 62 D7 AC */	lfs f3, lbl_8041EB2C@sda21(r2)
/* 801AE950 001AB950  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801AE954 001AB954  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801AE958 001AB958  EC 20 10 28 */	fsubs f1, f0, f2
/* 801AE95C 001AB95C  90 61 00 28 */	stw r3, 0x28(r1)
/* 801AE960 001AB960  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801AE964 001AB964  EC 00 10 28 */	fsubs f0, f0, f2
/* 801AE968 001AB968  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 801AE96C 001AB96C  FC 00 00 1E */	fctiwz f0, f0
/* 801AE970 001AB970  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801AE974 001AB974  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AE978 001AB978  90 1F 00 24 */	stw r0, 0x24(r31)
.L_801AE97C:
/* 801AE97C 001AB97C  2C 06 00 0A */	cmpwi r6, 0xa
/* 801AE980 001AB980  40 80 00 40 */	bge .L_801AE9C0
/* 801AE984 001AB984  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801AE988 001AB988  3C 00 43 30 */	lis r0, 0x4330
/* 801AE98C 001AB98C  90 01 00 30 */	stw r0, 0x30(r1)
/* 801AE990 001AB990  3C 60 80 30 */	lis r3, lbl_802FA388@ha
/* 801AE994 001AB994  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801AE998 001AB998  C8 43 A3 88 */	lfd f2, lbl_802FA388@l(r3)
/* 801AE99C 001AB99C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AE9A0 001AB9A0  C0 02 D7 B0 */	lfs f0, lbl_8041EB30@sda21(r2)
/* 801AE9A4 001AB9A4  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 801AE9A8 001AB9A8  EC 21 10 28 */	fsubs f1, f1, f2
/* 801AE9AC 001AB9AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AE9B0 001AB9B0  FC 00 00 1E */	fctiwz f0, f0
/* 801AE9B4 001AB9B4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 801AE9B8 001AB9B8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801AE9BC 001AB9BC  90 1F 00 24 */	stw r0, 0x24(r31)
.L_801AE9C0:
/* 801AE9C0 001AB9C0  3C 60 80 30 */	lis r3, lbl_802FA388@ha
/* 801AE9C4 001AB9C4  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 801AE9C8 001AB9C8  C2 E2 D7 B4 */	lfs f23, lbl_8041EB34@sda21(r2)
/* 801AE9CC 001AB9CC  3B 64 85 1F */	addi r27, r4, 0x51EB851F@l
/* 801AE9D0 001AB9D0  C3 02 D7 B8 */	lfs f24, lbl_8041EB38@sda21(r2)
/* 801AE9D4 001AB9D4  3B 40 00 01 */	li r26, 1
/* 801AE9D8 001AB9D8  C3 22 D7 BC */	lfs f25, lbl_8041EB3C@sda21(r2)
/* 801AE9DC 001AB9DC  3F 80 43 30 */	lis r28, 0x4330
/* 801AE9E0 001AB9E0  C3 42 D7 C0 */	lfs f26, lbl_8041EB40@sda21(r2)
/* 801AE9E4 001AB9E4  3B FF 00 34 */	addi r31, r31, 0x34
/* 801AE9E8 001AB9E8  C3 62 D7 C4 */	lfs f27, lbl_8041EB44@sda21(r2)
/* 801AE9EC 001AB9EC  CB 83 A3 88 */	lfd f28, lbl_802FA388@l(r3)
/* 801AE9F0 001AB9F0  C3 A2 D7 D8 */	lfs f29, lbl_8041EB58@sda21(r2)
/* 801AE9F4 001AB9F4  C3 C2 D7 DC */	lfs f30, lbl_8041EB5C@sda21(r2)
/* 801AE9F8 001AB9F8  C3 E2 D7 E0 */	lfs f31, lbl_8041EB60@sda21(r2)
/* 801AE9FC 001AB9FC  48 00 01 50 */	b .L_801AEB4C
.L_801AEA00:
/* 801AEA00 001ABA00  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 801AEA04 001ABA04  EC 18 00 32 */	fmuls f0, f24, f0
/* 801AEA08 001ABA08  EC 17 00 32 */	fmuls f0, f23, f0
/* 801AEA0C 001ABA0C  EC 20 C8 24 */	fdivs f1, f0, f25
/* 801AEA10 001ABA10  48 0B D9 E9 */	bl sin
/* 801AEA14 001ABA14  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801AEA18 001ABA18  FC 40 08 18 */	frsp f2, f1
/* 801AEA1C 001ABA1C  2C 1E 00 00 */	cmpwi r30, 0
/* 801AEA20 001ABA20  EC 20 D0 2A */	fadds f1, f0, f26
/* 801AEA24 001ABA24  EC 1B 00 B2 */	fmuls f0, f27, f2
/* 801AEA28 001ABA28  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 801AEA2C 001ABA2C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801AEA30 001ABA30  EC 01 00 2A */	fadds f0, f1, f0
/* 801AEA34 001ABA34  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 801AEA38 001ABA38  40 82 00 4C */	bne .L_801AEA84
/* 801AEA3C 001ABA3C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801AEA40 001ABA40  C0 02 D7 C8 */	lfs f0, lbl_8041EB48@sda21(r2)
/* 801AEA44 001ABA44  C0 42 D7 B4 */	lfs f2, lbl_8041EB34@sda21(r2)
/* 801AEA48 001ABA48  EC 21 00 32 */	fmuls f1, f1, f0
/* 801AEA4C 001ABA4C  C0 02 D7 BC */	lfs f0, lbl_8041EB3C@sda21(r2)
/* 801AEA50 001ABA50  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 801AEA54 001ABA54  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 801AEA58 001ABA58  EC 22 00 72 */	fmuls f1, f2, f1
/* 801AEA5C 001ABA5C  EC 21 00 24 */	fdivs f1, f1, f0
/* 801AEA60 001ABA60  48 0B D9 99 */	bl sin
/* 801AEA64 001ABA64  FC 60 08 18 */	frsp f3, f1
/* 801AEA68 001ABA68  C0 22 D7 D0 */	lfs f1, lbl_8041EB50@sda21(r2)
/* 801AEA6C 001ABA6C  C0 02 D7 CC */	lfs f0, lbl_8041EB4C@sda21(r2)
/* 801AEA70 001ABA70  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 801AEA74 001ABA74  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 801AEA78 001ABA78  EC 02 00 32 */	fmuls f0, f2, f0
/* 801AEA7C 001ABA7C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 801AEA80 001ABA80  48 00 00 20 */	b .L_801AEAA0
.L_801AEA84:
/* 801AEA84 001ABA84  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 801AEA88 001ABA88  C0 02 D7 D4 */	lfs f0, lbl_8041EB54@sda21(r2)
/* 801AEA8C 001ABA8C  EC 21 D0 2A */	fadds f1, f1, f26
/* 801AEA90 001ABA90  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 801AEA94 001ABA94  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801AEA98 001ABA98  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AEA9C 001ABA9C  D0 1F 00 10 */	stfs f0, 0x10(r31)
.L_801AEAA0:
/* 801AEAA0 001ABAA0  48 0B 78 D5 */	bl rand
/* 801AEAA4 001ABAA4  7C 1B 18 96 */	mulhw r0, r27, r3
/* 801AEAA8 001ABAA8  93 81 00 30 */	stw r28, 0x30(r1)
/* 801AEAAC 001ABAAC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 801AEAB0 001ABAB0  7C 00 26 70 */	srawi r0, r0, 4
/* 801AEAB4 001ABAB4  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801AEAB8 001ABAB8  7C 00 22 14 */	add r0, r0, r4
/* 801AEABC 001ABABC  1C 00 00 32 */	mulli r0, r0, 0x32
/* 801AEAC0 001ABAC0  7C 00 18 50 */	subf r0, r0, r3
/* 801AEAC4 001ABAC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AEAC8 001ABAC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AEACC 001ABACC  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 801AEAD0 001ABAD0  EC 21 E0 28 */	fsubs f1, f1, f28
/* 801AEAD4 001ABAD4  EC 21 E8 28 */	fsubs f1, f1, f29
/* 801AEAD8 001ABAD8  EC 00 08 2A */	fadds f0, f0, f1
/* 801AEADC 001ABADC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 801AEAE0 001ABAE0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 801AEAE4 001ABAE4  EC 17 00 32 */	fmuls f0, f23, f0
/* 801AEAE8 001ABAE8  EC 20 C8 24 */	fdivs f1, f0, f25
/* 801AEAEC 001ABAEC  48 0B D9 0D */	bl sin
/* 801AEAF0 001ABAF0  FC 20 08 18 */	frsp f1, f1
/* 801AEAF4 001ABAF4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 801AEAF8 001ABAF8  EC 1E 00 7A */	fmadds f0, f30, f1, f0
/* 801AEAFC 001ABAFC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 801AEB00 001ABB00  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 801AEB04 001ABB04  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801AEB08 001ABB08  EC 17 00 32 */	fmuls f0, f23, f0
/* 801AEB0C 001ABB0C  EC 20 C8 24 */	fdivs f1, f0, f25
/* 801AEB10 001ABB10  48 0B D3 81 */	bl cos
/* 801AEB14 001ABB14  FC 20 08 18 */	frsp f1, f1
/* 801AEB18 001ABB18  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 801AEB1C 001ABB1C  3B 5A 00 01 */	addi r26, r26, 1
/* 801AEB20 001ABB20  EC 1E 00 7A */	fmadds f0, f30, f1, f0
/* 801AEB24 001ABB24  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 801AEB28 001ABB28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801AEB2C 001ABB2C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 801AEB30 001ABB30  EC 01 00 2A */	fadds f0, f1, f0
/* 801AEB34 001ABB34  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801AEB38 001ABB38  C0 3F 00 08 */	lfs f1, 8(r31)
/* 801AEB3C 001ABB3C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801AEB40 001ABB40  EC 01 00 2A */	fadds f0, f1, f0
/* 801AEB44 001ABB44  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801AEB48 001ABB48  3B FF 00 34 */	addi r31, r31, 0x34
.L_801AEB4C:
/* 801AEB4C 001ABB4C  80 1D 00 08 */	lwz r0, 8(r29)
/* 801AEB50 001ABB50  7C 1A 00 00 */	cmpw r26, r0
/* 801AEB54 001ABB54  41 80 FE AC */	blt .L_801AEA00
/* 801AEB58 001ABB58  38 61 00 14 */	addi r3, r1, 0x14
/* 801AEB5C 001ABB5C  4B E6 1B 65 */	bl dispCalcZ
/* 801AEB60 001ABB60  3C 60 80 1B */	lis r3, effBushDisp@ha
/* 801AEB64 001ABB64  7F A6 EB 78 */	mr r6, r29
/* 801AEB68 001ABB68  38 A3 E4 4C */	addi r5, r3, effBushDisp@l
/* 801AEB6C 001ABB6C  38 80 00 02 */	li r4, 2
/* 801AEB70 001ABB70  38 60 00 04 */	li r3, 4
/* 801AEB74 001ABB74  4B E6 1E A5 */	bl dispEntry
.L_801AEB78:
/* 801AEB78 001ABB78  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 801AEB7C 001ABB7C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 801AEB80 001ABB80  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 801AEB84 001ABB84  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 801AEB88 001ABB88  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 801AEB8C 001ABB8C  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 801AEB90 001ABB90  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 801AEB94 001ABB94  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 801AEB98 001ABB98  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 801AEB9C 001ABB9C  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 801AEBA0 001ABBA0  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 801AEBA4 001ABBA4  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 801AEBA8 001ABBA8  E3 21 00 78 */	psq_l f25, 120(r1), 0, qr0
/* 801AEBAC 001ABBAC  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 801AEBB0 001ABBB0  E3 01 00 68 */	psq_l f24, 104(r1), 0, qr0
/* 801AEBB4 001ABBB4  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 801AEBB8 001ABBB8  E2 E1 00 58 */	psq_l f23, 88(r1), 0, qr0
/* 801AEBBC 001ABBBC  CA E1 00 50 */	lfd f23, 0x50(r1)
/* 801AEBC0 001ABBC0  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 801AEBC4 001ABBC4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801AEBC8 001ABBC8  7C 08 03 A6 */	mtlr r0
/* 801AEBCC 001ABBCC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801AEBD0 001ABBD0  4E 80 00 20 */	blr 

.global effBushN64Entry
effBushN64Entry:
/* 801AEBD4 001ABBD4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801AEBD8 001ABBD8  7C 08 02 A6 */	mflr r0
/* 801AEBDC 001ABBDC  90 01 00 84 */	stw r0, 0x84(r1)
/* 801AEBE0 001ABBE0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801AEBE4 001ABBE4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801AEBE8 001ABBE8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801AEBEC 001ABBEC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801AEBF0 001ABBF0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801AEBF4 001ABBF4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 801AEBF8 001ABBF8  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 801AEBFC 001ABBFC  FF C0 08 90 */	fmr f30, f1
/* 801AEC00 001ABC00  7C 79 1B 78 */	mr r25, r3
/* 801AEC04 001ABC04  FF E0 10 90 */	fmr f31, f2
/* 801AEC08 001ABC08  FF A0 18 90 */	fmr f29, f3
/* 801AEC0C 001ABC0C  4B EA F1 B1 */	bl effEntry
/* 801AEC10 001ABC10  3C 80 80 30 */	lis r4, lbl_802FA390@ha
/* 801AEC14 001ABC14  7C 7D 1B 78 */	mr r29, r3
/* 801AEC18 001ABC18  38 84 A3 90 */	addi r4, r4, lbl_802FA390@l
/* 801AEC1C 001ABC1C  38 00 00 05 */	li r0, 5
/* 801AEC20 001ABC20  90 9D 00 14 */	stw r4, 0x14(r29)
/* 801AEC24 001ABC24  38 60 00 03 */	li r3, 3
/* 801AEC28 001ABC28  38 80 01 04 */	li r4, 0x104
/* 801AEC2C 001ABC2C  90 1D 00 08 */	stw r0, 8(r29)
/* 801AEC30 001ABC30  4B E8 0E 5D */	bl __memAlloc
/* 801AEC34 001ABC34  3C 80 80 1B */	lis r4, effBushMain@ha
/* 801AEC38 001ABC38  90 7D 00 0C */	stw r3, 0xc(r29)
/* 801AEC3C 001ABC3C  38 04 E7 E0 */	addi r0, r4, effBushMain@l
/* 801AEC40 001ABC40  3C 80 80 30 */	lis r4, lbl_802FA388@ha
/* 801AEC44 001ABC44  90 1D 00 10 */	stw r0, 0x10(r29)
/* 801AEC48 001ABC48  38 C4 A3 88 */	addi r6, r4, lbl_802FA388@l
/* 801AEC4C 001ABC4C  3C E0 88 89 */	lis r7, 0x88888889@ha
/* 801AEC50 001ABC50  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 801AEC54 001ABC54  93 23 00 00 */	stw r25, 0(r3)
/* 801AEC58 001ABC58  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 801AEC5C 001ABC5C  39 00 00 64 */	li r8, 0x64
/* 801AEC60 001ABC60  38 00 00 00 */	li r0, 0
/* 801AEC64 001ABC64  D3 C3 00 04 */	stfs f30, 4(r3)
/* 801AEC68 001ABC68  3B 83 00 34 */	addi r28, r3, 0x34
/* 801AEC6C 001ABC6C  CB C6 00 00 */	lfd f30, 0(r6)
/* 801AEC70 001ABC70  3B C7 88 89 */	addi r30, r7, 0x88888889@l
/* 801AEC74 001ABC74  D3 E3 00 08 */	stfs f31, 8(r3)
/* 801AEC78 001ABC78  3B 45 85 1F */	addi r26, r5, 0x51EB851F@l
/* 801AEC7C 001ABC7C  C3 E2 D7 A8 */	lfs f31, lbl_8041EB28@sda21(r2)
/* 801AEC80 001ABC80  3B 24 66 67 */	addi r25, r4, 0x66666667@l
/* 801AEC84 001ABC84  D3 A3 00 0C */	stfs f29, 0xc(r3)
/* 801AEC88 001ABC88  3B 60 00 01 */	li r27, 1
/* 801AEC8C 001ABC8C  3F E0 43 30 */	lis r31, 0x4330
/* 801AEC90 001ABC90  91 03 00 28 */	stw r8, 0x28(r3)
/* 801AEC94 001ABC94  90 03 00 2C */	stw r0, 0x2c(r3)
/* 801AEC98 001ABC98  90 03 00 24 */	stw r0, 0x24(r3)
.L_801AEC9C:
/* 801AEC9C 001ABC9C  48 0B 76 D9 */	bl rand
/* 801AECA0 001ABCA0  7C 1E 18 96 */	mulhw r0, r30, r3
/* 801AECA4 001ABCA4  93 E1 00 08 */	stw r31, 8(r1)
/* 801AECA8 001ABCA8  7C 00 1A 14 */	add r0, r0, r3
/* 801AECAC 001ABCAC  7C 00 26 70 */	srawi r0, r0, 4
/* 801AECB0 001ABCB0  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801AECB4 001ABCB4  7C 00 22 14 */	add r0, r0, r4
/* 801AECB8 001ABCB8  1C 00 00 1E */	mulli r0, r0, 0x1e
/* 801AECBC 001ABCBC  7C 60 18 50 */	subf r3, r0, r3
/* 801AECC0 001ABCC0  38 03 FF F1 */	addi r0, r3, -15
/* 801AECC4 001ABCC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AECC8 001ABCC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AECCC 001ABCCC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801AECD0 001ABCD0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801AECD4 001ABCD4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801AECD8 001ABCD8  D3 FC 00 08 */	stfs f31, 8(r28)
/* 801AECDC 001ABCDC  48 0B 76 99 */	bl rand
/* 801AECE0 001ABCE0  54 63 06 FC */	rlwinm r3, r3, 0, 0x1b, 0x1e
/* 801AECE4 001ABCE4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 801AECE8 001ABCE8  38 03 FF F1 */	addi r0, r3, -15
/* 801AECEC 001ABCEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AECF0 001ABCF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AECF4 001ABCF4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801AECF8 001ABCF8  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801AECFC 001ABCFC  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 801AED00 001ABD00  48 0B 76 75 */	bl rand
/* 801AED04 001ABD04  70 60 01 68 */	andi. r0, r3, 0x168
/* 801AED08 001ABD08  93 E1 00 18 */	stw r31, 0x18(r1)
/* 801AED0C 001ABD0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AED10 001ABD10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801AED14 001ABD14  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801AED18 001ABD18  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801AED1C 001ABD1C  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 801AED20 001ABD20  48 0B 76 55 */	bl rand
/* 801AED24 001ABD24  70 60 01 68 */	andi. r0, r3, 0x168
/* 801AED28 001ABD28  93 E1 00 20 */	stw r31, 0x20(r1)
/* 801AED2C 001ABD2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AED30 001ABD30  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AED34 001ABD34  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801AED38 001ABD38  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801AED3C 001ABD3C  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 801AED40 001ABD40  48 0B 76 35 */	bl rand
/* 801AED44 001ABD44  7C 1A 18 96 */	mulhw r0, r26, r3
/* 801AED48 001ABD48  3B 7B 00 01 */	addi r27, r27, 1
/* 801AED4C 001ABD4C  93 E1 00 28 */	stw r31, 0x28(r1)
/* 801AED50 001ABD50  2C 1B 00 05 */	cmpwi r27, 5
/* 801AED54 001ABD54  7C 00 2E 70 */	srawi r0, r0, 5
/* 801AED58 001ABD58  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801AED5C 001ABD5C  7C 00 22 14 */	add r0, r0, r4
/* 801AED60 001ABD60  1C 00 00 64 */	mulli r0, r0, 0x64
/* 801AED64 001ABD64  7C 00 18 50 */	subf r0, r0, r3
/* 801AED68 001ABD68  7C 19 00 96 */	mulhw r0, r25, r0
/* 801AED6C 001ABD6C  7C 00 16 70 */	srawi r0, r0, 2
/* 801AED70 001ABD70  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801AED74 001ABD74  7C 00 1A 14 */	add r0, r0, r3
/* 801AED78 001ABD78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AED7C 001ABD7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801AED80 001ABD80  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801AED84 001ABD84  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801AED88 001ABD88  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 801AED8C 001ABD8C  D3 FC 00 10 */	stfs f31, 0x10(r28)
/* 801AED90 001ABD90  D3 FC 00 14 */	stfs f31, 0x14(r28)
/* 801AED94 001ABD94  3B 9C 00 34 */	addi r28, r28, 0x34
/* 801AED98 001ABD98  41 80 FF 04 */	blt .L_801AEC9C
/* 801AED9C 001ABD9C  7F A3 EB 78 */	mr r3, r29
/* 801AEDA0 001ABDA0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801AEDA4 001ABDA4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801AEDA8 001ABDA8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801AEDAC 001ABDAC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801AEDB0 001ABDB0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 801AEDB4 001ABDB4  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801AEDB8 001ABDB8  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 801AEDBC 001ABDBC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801AEDC0 001ABDC0  7C 08 03 A6 */	mtlr r0
/* 801AEDC4 001ABDC4  38 21 00 80 */	addi r1, r1, 0x80
/* 801AEDC8 001ABDC8  4E 80 00 20 */	blr 
