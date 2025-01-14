.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effQueen2Disp
effQueen2Disp:
/* 80254738 00251738  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8025473C 0025173C  7C 08 02 A6 */	mflr r0
/* 80254740 00251740  90 01 00 84 */	stw r0, 0x84(r1)
/* 80254744 00251744  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80254748 00251748  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8025474C 0025174C  83 C4 00 0C */	lwz r30, 0xc(r4)
/* 80254750 00251750  4B DB AA 01 */	bl camGetPtr
/* 80254754 00251754  7C 7F 1B 78 */	mr r31, r3
/* 80254758 00251758  38 60 00 01 */	li r3, 1
/* 8025475C 0025175C  48 05 C9 DD */	bl GXSetNumChans
/* 80254760 00251760  38 60 00 04 */	li r3, 4
/* 80254764 00251764  38 80 00 00 */	li r4, 0
/* 80254768 00251768  38 A0 00 00 */	li r5, 0
/* 8025476C 0025176C  38 C0 00 00 */	li r6, 0
/* 80254770 00251770  38 E0 00 00 */	li r7, 0
/* 80254774 00251774  39 00 00 00 */	li r8, 0
/* 80254778 00251778  39 20 00 02 */	li r9, 2
/* 8025477C 0025177C  48 05 C9 F9 */	bl GXSetChanCtrl
/* 80254780 00251780  80 A2 1F E0 */	lwz r5, lbl_80423360@sda21(r2)
/* 80254784 00251784  38 81 00 0C */	addi r4, r1, 0xc
/* 80254788 00251788  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8025478C 0025178C  38 60 00 04 */	li r3, 4
/* 80254790 00251790  90 A1 00 08 */	stw r5, 8(r1)
/* 80254794 00251794  98 01 00 0B */	stb r0, 0xb(r1)
/* 80254798 00251798  80 01 00 08 */	lwz r0, 8(r1)
/* 8025479C 0025179C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802547A0 002517A0  48 05 C8 B1 */	bl GXSetChanMatColor
/* 802547A4 002517A4  38 60 00 00 */	li r3, 0
/* 802547A8 002517A8  48 05 AA D9 */	bl GXSetNumTexGens
/* 802547AC 002517AC  38 60 00 01 */	li r3, 1
/* 802547B0 002517B0  48 05 EA 19 */	bl GXSetNumTevStages
/* 802547B4 002517B4  38 60 00 00 */	li r3, 0
/* 802547B8 002517B8  38 80 00 FF */	li r4, 0xff
/* 802547BC 002517BC  38 A0 00 FF */	li r5, 0xff
/* 802547C0 002517C0  38 C0 00 04 */	li r6, 4
/* 802547C4 002517C4  48 05 E8 69 */	bl GXSetTevOrder
/* 802547C8 002517C8  38 60 00 00 */	li r3, 0
/* 802547CC 002517CC  38 80 00 04 */	li r4, 4
/* 802547D0 002517D0  48 05 E3 01 */	bl GXSetTevOp
/* 802547D4 002517D4  38 60 00 02 */	li r3, 2
/* 802547D8 002517D8  48 05 B6 B1 */	bl GXSetCullMode
/* 802547DC 002517DC  48 05 9F 41 */	bl GXClearVtxDesc
/* 802547E0 002517E0  38 60 00 09 */	li r3, 9
/* 802547E4 002517E4  38 80 00 01 */	li r4, 1
/* 802547E8 002517E8  48 05 96 1D */	bl GXSetVtxDesc
/* 802547EC 002517EC  38 60 00 0D */	li r3, 0xd
/* 802547F0 002517F0  38 80 00 01 */	li r4, 1
/* 802547F4 002517F4  48 05 96 11 */	bl GXSetVtxDesc
/* 802547F8 002517F8  38 60 00 00 */	li r3, 0
/* 802547FC 002517FC  38 80 00 09 */	li r4, 9
/* 80254800 00251800  38 A0 00 01 */	li r5, 1
/* 80254804 00251804  38 C0 00 04 */	li r6, 4
/* 80254808 00251808  38 E0 00 00 */	li r7, 0
/* 8025480C 0025180C  48 05 9F 49 */	bl GXSetVtxAttrFmt
/* 80254810 00251810  38 60 00 00 */	li r3, 0
/* 80254814 00251814  38 80 00 0D */	li r4, 0xd
/* 80254818 00251818  38 A0 00 01 */	li r5, 1
/* 8025481C 0025181C  38 C0 00 04 */	li r6, 4
/* 80254820 00251820  38 E0 00 00 */	li r7, 0
/* 80254824 00251824  48 05 9F 31 */	bl GXSetVtxAttrFmt
/* 80254828 00251828  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8025482C 0025182C  38 61 00 40 */	addi r3, r1, 0x40
/* 80254830 00251830  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80254834 00251834  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80254838 00251838  48 04 3B F5 */	bl PSMTXTrans
/* 8025483C 0025183C  C0 22 11 50 */	lfs f1, lbl_804224D0@sda21(r2)
/* 80254840 00251840  38 61 00 10 */	addi r3, r1, 0x10
/* 80254844 00251844  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80254848 00251848  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025484C 0025184C  FC 40 08 90 */	fmr f2, f1
/* 80254850 00251850  FC 60 08 90 */	fmr f3, f1
/* 80254854 00251854  48 04 3C 59 */	bl PSMTXScale
/* 80254858 00251858  38 81 00 10 */	addi r4, r1, 0x10
/* 8025485C 0025185C  38 61 00 40 */	addi r3, r1, 0x40
/* 80254860 00251860  7C 85 23 78 */	mr r5, r4
/* 80254864 00251864  48 04 36 FD */	bl PSMTXConcat
/* 80254868 00251868  38 81 00 10 */	addi r4, r1, 0x10
/* 8025486C 0025186C  38 7F 01 1C */	addi r3, r31, 0x11c
/* 80254870 00251870  7C 85 23 78 */	mr r5, r4
/* 80254874 00251874  48 04 36 ED */	bl PSMTXConcat
/* 80254878 00251878  38 61 00 10 */	addi r3, r1, 0x10
/* 8025487C 0025187C  38 80 00 00 */	li r4, 0
/* 80254880 00251880  48 05 FC 79 */	bl GXLoadPosMtxImm
/* 80254884 00251884  38 60 00 00 */	li r3, 0
/* 80254888 00251888  48 05 FD 11 */	bl GXSetCurrentMtx
/* 8025488C 0025188C  38 60 00 02 */	li r3, 2
/* 80254890 00251890  48 05 B5 F9 */	bl GXSetCullMode
/* 80254894 00251894  38 60 00 10 */	li r3, 0x10
/* 80254898 00251898  38 80 00 10 */	li r4, 0x10
/* 8025489C 0025189C  48 05 EF 8D */	bl GXDrawSphere
/* 802548A0 002518A0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802548A4 002518A4  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 802548A8 002518A8  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 802548AC 002518AC  7C 08 03 A6 */	mtlr r0
/* 802548B0 002518B0  38 21 00 80 */	addi r1, r1, 0x80
/* 802548B4 002518B4  4E 80 00 20 */	blr 
effQueen2Main:
/* 802548B8 002518B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802548BC 002518BC  7C 08 02 A6 */	mflr r0
/* 802548C0 002518C0  3C 80 80 30 */	lis r4, lbl_80301504@ha
/* 802548C4 002518C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802548C8 002518C8  38 C4 15 04 */	addi r6, r4, lbl_80301504@l
/* 802548CC 002518CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802548D0 002518D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802548D4 002518D4  7C 7E 1B 78 */	mr r30, r3
/* 802548D8 002518D8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802548DC 002518DC  80 A6 00 00 */	lwz r5, 0(r6)
/* 802548E0 002518E0  80 86 00 04 */	lwz r4, 4(r6)
/* 802548E4 002518E4  80 06 00 08 */	lwz r0, 8(r6)
/* 802548E8 002518E8  90 A1 00 08 */	stw r5, 8(r1)
/* 802548EC 002518EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802548F0 002518F0  90 81 00 0C */	stw r4, 0xc(r1)
/* 802548F4 002518F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 802548F8 002518F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 802548FC 002518FC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80254900 00251900  90 01 00 10 */	stw r0, 0x10(r1)
/* 80254904 00251904  80 A1 00 08 */	lwz r5, 8(r1)
/* 80254908 00251908  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8025490C 0025190C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80254910 00251910  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80254914 00251914  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80254918 00251918  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8025491C 0025191C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80254920 00251920  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80254924 00251924  80 83 00 00 */	lwz r4, 0(r3)
/* 80254928 00251928  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8025492C 0025192C  41 82 00 28 */	beq .L_80254954
/* 80254930 00251930  54 80 07 B8 */	rlwinm r0, r4, 0, 0x1e, 0x1c
/* 80254934 00251934  90 1E 00 00 */	stw r0, 0(r30)
/* 80254938 00251938  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8025493C 0025193C  28 03 00 00 */	cmplwi r3, 0
/* 80254940 00251940  41 82 00 08 */	beq .L_80254948
/* 80254944 00251944  4B E0 92 41 */	bl effDelete
.L_80254948:
/* 80254948 00251948  7F C3 F3 78 */	mr r3, r30
/* 8025494C 0025194C  4B E0 92 39 */	bl effDelete
/* 80254950 00251950  48 00 02 50 */	b .L_80254BA0
.L_80254954:
/* 80254954 00251954  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80254958 00251958  2C 00 00 02 */	cmpwi r0, 2
/* 8025495C 0025195C  41 82 01 38 */	beq .L_80254A94
/* 80254960 00251960  40 80 00 14 */	bge .L_80254974
/* 80254964 00251964  2C 00 00 00 */	cmpwi r0, 0
/* 80254968 00251968  41 82 00 1C */	beq .L_80254984
/* 8025496C 0025196C  40 80 00 6C */	bge .L_802549D8
/* 80254970 00251970  48 00 01 E4 */	b .L_80254B54
.L_80254974:
/* 80254974 00251974  2C 00 00 04 */	cmpwi r0, 4
/* 80254978 00251978  41 82 01 D4 */	beq .L_80254B4C
/* 8025497C 0025197C  40 80 01 D8 */	bge .L_80254B54
/* 80254980 00251980  48 00 01 6C */	b .L_80254AEC
.L_80254984:
/* 80254984 00251984  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80254988 00251988  38 60 00 0B */	li r3, 0xb
/* 8025498C 0025198C  C0 22 11 54 */	lfs f1, lbl_804224D4@sda21(r2)
/* 80254990 00251990  38 A0 00 3C */	li r5, 0x3c
/* 80254994 00251994  38 04 00 01 */	addi r0, r4, 1
/* 80254998 00251998  C0 42 11 58 */	lfs f2, lbl_804224D8@sda21(r2)
/* 8025499C 0025199C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802549A0 002519A0  4B DB 22 6D */	bl intplGetValue
/* 802549A4 002519A4  FC 00 08 1E */	fctiwz f0, f1
/* 802549A8 002519A8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802549AC 002519AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802549B0 002519B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802549B4 002519B4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802549B8 002519B8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 802549BC 002519BC  40 81 01 98 */	ble .L_80254B54
/* 802549C0 002519C0  38 00 00 00 */	li r0, 0
/* 802549C4 002519C4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802549C8 002519C8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802549CC 002519CC  38 03 00 01 */	addi r0, r3, 1
/* 802549D0 002519D0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802549D4 002519D4  48 00 01 80 */	b .L_80254B54
.L_802549D8:
/* 802549D8 002519D8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802549DC 002519DC  38 60 00 0B */	li r3, 0xb
/* 802549E0 002519E0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 802549E4 002519E4  38 A0 00 78 */	li r5, 0x78
/* 802549E8 002519E8  38 04 00 01 */	addi r0, r4, 1
/* 802549EC 002519EC  C0 42 11 5C */	lfs f2, lbl_804224DC@sda21(r2)
/* 802549F0 002519F0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802549F4 002519F4  4B DB 22 19 */	bl intplGetValue
/* 802549F8 002519F8  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 802549FC 002519FC  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80254A00 00251A00  2C 00 00 78 */	cmpwi r0, 0x78
/* 80254A04 00251A04  40 81 01 50 */	ble .L_80254B54
/* 80254A08 00251A08  38 00 00 00 */	li r0, 0
/* 80254A0C 00251A0C  C0 82 11 60 */	lfs f4, lbl_804224E0@sda21(r2)
/* 80254A10 00251A10  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80254A14 00251A14  38 60 00 00 */	li r3, 0
/* 80254A18 00251A18  38 80 00 00 */	li r4, 0
/* 80254A1C 00251A1C  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 80254A20 00251A20  38 05 00 01 */	addi r0, r5, 1
/* 80254A24 00251A24  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80254A28 00251A28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80254A2C 00251A2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80254A30 00251A30  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80254A34 00251A34  4B F5 2B 55 */	bl effAkariChargeN64Entry
/* 80254A38 00251A38  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80254A3C 00251A3C  38 A0 00 00 */	li r5, 0
/* 80254A40 00251A40  38 80 00 9A */	li r4, 0x9a
/* 80254A44 00251A44  38 00 00 FF */	li r0, 0xff
/* 80254A48 00251A48  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80254A4C 00251A4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80254A50 00251A50  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80254A54 00251A54  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80254A58 00251A58  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80254A5C 00251A5C  90 83 00 1C */	stw r4, 0x1c(r3)
/* 80254A60 00251A60  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80254A64 00251A64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80254A68 00251A68  90 03 00 20 */	stw r0, 0x20(r3)
/* 80254A6C 00251A6C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80254A70 00251A70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80254A74 00251A74  90 03 00 28 */	stw r0, 0x28(r3)
/* 80254A78 00251A78  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80254A7C 00251A7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80254A80 00251A80  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80254A84 00251A84  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80254A88 00251A88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80254A8C 00251A8C  90 03 00 30 */	stw r0, 0x30(r3)
/* 80254A90 00251A90  48 00 00 C4 */	b .L_80254B54
.L_80254A94:
/* 80254A94 00251A94  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80254A98 00251A98  38 03 00 01 */	addi r0, r3, 1
/* 80254A9C 00251A9C  2C 00 00 78 */	cmpwi r0, 0x78
/* 80254AA0 00251AA0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80254AA4 00251AA4  40 81 00 B0 */	ble .L_80254B54
/* 80254AA8 00251AA8  38 00 00 00 */	li r0, 0
/* 80254AAC 00251AAC  38 60 00 01 */	li r3, 1
/* 80254AB0 00251AB0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80254AB4 00251AB4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80254AB8 00251AB8  38 04 00 01 */	addi r0, r4, 1
/* 80254ABC 00251ABC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80254AC0 00251AC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80254AC4 00251AC4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80254AC8 00251AC8  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80254ACC 00251ACC  4B FD 14 39 */	bl effTeresaEntry
/* 80254AD0 00251AD0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80254AD4 00251AD4  38 60 00 01 */	li r3, 1
/* 80254AD8 00251AD8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80254ADC 00251ADC  38 80 00 3C */	li r4, 0x3c
/* 80254AE0 00251AE0  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80254AE4 00251AE4  4B FF BA 4D */	bl effIndirectEntry
/* 80254AE8 00251AE8  48 00 00 6C */	b .L_80254B54
.L_80254AEC:
/* 80254AEC 00251AEC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80254AF0 00251AF0  38 03 00 01 */	addi r0, r3, 1
/* 80254AF4 00251AF4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80254AF8 00251AF8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80254AFC 00251AFC  40 81 00 58 */	ble .L_80254B54
/* 80254B00 00251B00  38 00 00 00 */	li r0, 0
/* 80254B04 00251B04  38 60 00 01 */	li r3, 1
/* 80254B08 00251B08  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80254B0C 00251B0C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80254B10 00251B10  38 04 00 01 */	addi r0, r4, 1
/* 80254B14 00251B14  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80254B18 00251B18  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80254B1C 00251B1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80254B20 00251B20  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80254B24 00251B24  4B FD 13 E1 */	bl effTeresaEntry
/* 80254B28 00251B28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80254B2C 00251B2C  38 60 00 01 */	li r3, 1
/* 80254B30 00251B30  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80254B34 00251B34  38 80 00 3C */	li r4, 0x3c
/* 80254B38 00251B38  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80254B3C 00251B3C  4B FF B9 F5 */	bl effIndirectEntry
/* 80254B40 00251B40  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80254B44 00251B44  4B E0 8F D1 */	bl effSoftDelete
/* 80254B48 00251B48  48 00 00 0C */	b .L_80254B54
.L_80254B4C:
/* 80254B4C 00251B4C  4B E0 90 39 */	bl effDelete
/* 80254B50 00251B50  48 00 00 50 */	b .L_80254BA0
.L_80254B54:
/* 80254B54 00251B54  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80254B58 00251B58  2C 00 00 03 */	cmpwi r0, 3
/* 80254B5C 00251B5C  41 80 00 24 */	blt .L_80254B80
/* 80254B60 00251B60  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80254B64 00251B64  38 03 FF FE */	addi r0, r3, -2
/* 80254B68 00251B68  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80254B6C 00251B6C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80254B70 00251B70  2C 00 00 00 */	cmpwi r0, 0
/* 80254B74 00251B74  40 80 00 0C */	bge .L_80254B80
/* 80254B78 00251B78  38 00 00 00 */	li r0, 0
/* 80254B7C 00251B7C  90 1F 00 18 */	stw r0, 0x18(r31)
.L_80254B80:
/* 80254B80 00251B80  38 61 00 14 */	addi r3, r1, 0x14
/* 80254B84 00251B84  4B DB BB 3D */	bl dispCalcZ
/* 80254B88 00251B88  3C 60 80 25 */	lis r3, effQueen2Disp@ha
/* 80254B8C 00251B8C  7F C6 F3 78 */	mr r6, r30
/* 80254B90 00251B90  38 A3 47 38 */	addi r5, r3, effQueen2Disp@l
/* 80254B94 00251B94  38 80 00 02 */	li r4, 2
/* 80254B98 00251B98  38 60 00 04 */	li r3, 4
/* 80254B9C 00251B9C  4B DB BE 7D */	bl dispEntry
.L_80254BA0:
/* 80254BA0 00251BA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80254BA4 00251BA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80254BA8 00251BA8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80254BAC 00251BAC  7C 08 03 A6 */	mtlr r0
/* 80254BB0 00251BB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80254BB4 00251BB4  4E 80 00 20 */	blr 

.global effQueen2Entry
effQueen2Entry:
/* 80254BB8 00251BB8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80254BBC 00251BBC  7C 08 02 A6 */	mflr r0
/* 80254BC0 00251BC0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80254BC4 00251BC4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80254BC8 00251BC8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80254BCC 00251BCC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80254BD0 00251BD0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 80254BD4 00251BD4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80254BD8 00251BD8  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 80254BDC 00251BDC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80254BE0 00251BE0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80254BE4 00251BE4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80254BE8 00251BE8  FF A0 08 90 */	fmr f29, f1
/* 80254BEC 00251BEC  7C 7D 1B 78 */	mr r29, r3
/* 80254BF0 00251BF0  FF C0 10 90 */	fmr f30, f2
/* 80254BF4 00251BF4  FF E0 18 90 */	fmr f31, f3
/* 80254BF8 00251BF8  4B E0 91 C5 */	bl effEntry
/* 80254BFC 00251BFC  3C 80 80 30 */	lis r4, lbl_80301510@ha
/* 80254C00 00251C00  7C 7E 1B 78 */	mr r30, r3
/* 80254C04 00251C04  38 84 15 10 */	addi r4, r4, lbl_80301510@l
/* 80254C08 00251C08  38 00 00 01 */	li r0, 1
/* 80254C0C 00251C0C  90 9E 00 14 */	stw r4, 0x14(r30)
/* 80254C10 00251C10  38 60 00 03 */	li r3, 3
/* 80254C14 00251C14  90 1E 00 08 */	stw r0, 8(r30)
/* 80254C18 00251C18  80 1E 00 08 */	lwz r0, 8(r30)
/* 80254C1C 00251C1C  1C 80 00 2C */	mulli r4, r0, 0x2c
/* 80254C20 00251C20  4B DD AE 6D */	bl __memAlloc
/* 80254C24 00251C24  7C 7F 1B 78 */	mr r31, r3
/* 80254C28 00251C28  3C 60 80 25 */	lis r3, effQueen2Main@ha
/* 80254C2C 00251C2C  93 FE 00 0C */	stw r31, 0xc(r30)
/* 80254C30 00251C30  38 03 48 B8 */	addi r0, r3, effQueen2Main@l
/* 80254C34 00251C34  3C 80 80 30 */	lis r4, lbl_803014F8@ha
/* 80254C38 00251C38  38 60 00 04 */	li r3, 4
/* 80254C3C 00251C3C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80254C40 00251C40  38 C4 14 F8 */	addi r6, r4, lbl_803014F8@l
/* 80254C44 00251C44  80 1E 00 00 */	lwz r0, 0(r30)
/* 80254C48 00251C48  60 00 00 02 */	ori r0, r0, 2
/* 80254C4C 00251C4C  90 1E 00 00 */	stw r0, 0(r30)
/* 80254C50 00251C50  93 BF 00 00 */	stw r29, 0(r31)
/* 80254C54 00251C54  D3 BF 00 04 */	stfs f29, 4(r31)
/* 80254C58 00251C58  D3 DF 00 08 */	stfs f30, 8(r31)
/* 80254C5C 00251C5C  D3 FF 00 0C */	stfs f31, 0xc(r31)
/* 80254C60 00251C60  80 A6 00 00 */	lwz r5, 0(r6)
/* 80254C64 00251C64  80 86 00 04 */	lwz r4, 4(r6)
/* 80254C68 00251C68  80 06 00 08 */	lwz r0, 8(r6)
/* 80254C6C 00251C6C  90 A1 00 08 */	stw r5, 8(r1)
/* 80254C70 00251C70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80254C74 00251C74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80254C78 00251C78  D3 A1 00 08 */	stfs f29, 8(r1)
/* 80254C7C 00251C7C  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 80254C80 00251C80  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80254C84 00251C84  4B DB A4 CD */	bl camGetPtr
/* 80254C88 00251C88  38 63 00 0C */	addi r3, r3, 0xc
/* 80254C8C 00251C8C  38 81 00 08 */	addi r4, r1, 8
/* 80254C90 00251C90  48 04 44 21 */	bl PSVECDistance
/* 80254C94 00251C94  C0 02 11 50 */	lfs f0, lbl_804224D0@sda21(r2)
/* 80254C98 00251C98  38 00 00 00 */	li r0, 0
/* 80254C9C 00251C9C  7F C3 F3 78 */	mr r3, r30
/* 80254CA0 00251CA0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80254CA4 00251CA4  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80254CA8 00251CA8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80254CAC 00251CAC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80254CB0 00251CB0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80254CB4 00251CB4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80254CB8 00251CB8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80254CBC 00251CBC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80254CC0 00251CC0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80254CC4 00251CC4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80254CC8 00251CC8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 80254CCC 00251CCC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80254CD0 00251CD0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 80254CD4 00251CD4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80254CD8 00251CD8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80254CDC 00251CDC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80254CE0 00251CE0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80254CE4 00251CE4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80254CE8 00251CE8  7C 08 03 A6 */	mtlr r0
/* 80254CEC 00251CEC  38 21 00 60 */	addi r1, r1, 0x60
/* 80254CF0 00251CF0  4E 80 00 20 */	blr
