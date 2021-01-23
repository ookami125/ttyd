.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global mainwindow_opendisable
mainwindow_opendisable:
/* 80204F48 00201F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80204F4C 00201F4C  7C 08 02 A6 */	mflr r0
/* 80204F50 00201F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80204F54 00201F54  4B F7 3F 11 */	bl winOpenDisable
/* 80204F58 00201F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80204F5C 00201F5C  38 60 00 02 */	li r3, 2
/* 80204F60 00201F60  7C 08 03 A6 */	mtlr r0
/* 80204F64 00201F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80204F68 00201F68  4E 80 00 20 */	blr 

.global mainwindow_openenable
mainwindow_openenable:
/* 80204F6C 00201F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80204F70 00201F70  7C 08 02 A6 */	mflr r0
/* 80204F74 00201F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80204F78 00201F78  4B F7 3F 09 */	bl winOpenEnable
/* 80204F7C 00201F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80204F80 00201F80  38 60 00 02 */	li r3, 2
/* 80204F84 00201F84  7C 08 03 A6 */	mtlr r0
/* 80204F88 00201F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80204F8C 00201F8C  4E 80 00 20 */	blr 

.global evt_win_coin_wait
evt_win_coin_wait:
/* 80204F90 00201F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80204F94 00201F94  7C 08 02 A6 */	mflr r0
/* 80204F98 00201F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80204F9C 00201F9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80204FA0 00201FA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80204FA4 00201FA4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80204FA8 00201FA8  80 84 00 00 */	lwz r4, 0(r4)
/* 80204FAC 00201FAC  4B E2 BC 21 */	bl evtGetValue
/* 80204FB0 00201FB0  7C 7F 1B 78 */	mr r31, r3
/* 80204FB4 00201FB4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80204FB8 00201FB8  2C 00 00 01 */	cmpwi r0, 1
/* 80204FBC 00201FBC  41 82 00 2C */	beq lbl_80204FE8
/* 80204FC0 00201FC0  40 80 00 10 */	bge lbl_80204FD0
/* 80204FC4 00201FC4  2C 00 00 00 */	cmpwi r0, 0
/* 80204FC8 00201FC8  40 80 00 14 */	bge lbl_80204FDC
/* 80204FCC 00201FCC  48 00 00 30 */	b lbl_80204FFC
lbl_80204FD0:
/* 80204FD0 00201FD0  2C 00 00 03 */	cmpwi r0, 3
/* 80204FD4 00201FD4  40 80 00 28 */	bge lbl_80204FFC
/* 80204FD8 00201FD8  48 00 00 1C */	b lbl_80204FF4
lbl_80204FDC:
/* 80204FDC 00201FDC  4B EC AD 3D */	bl func_800CFD18
/* 80204FE0 00201FE0  7C 7E 1B 78 */	mr r30, r3
/* 80204FE4 00201FE4  48 00 00 18 */	b lbl_80204FFC
lbl_80204FE8:
/* 80204FE8 00201FE8  4B EC AC 95 */	bl func_800CFC7C
/* 80204FEC 00201FEC  7C 7E 1B 78 */	mr r30, r3
/* 80204FF0 00201FF0  48 00 00 0C */	b lbl_80204FFC
lbl_80204FF4:
/* 80204FF4 00201FF4  4B EC AC 69 */	bl func_800CFC5C
/* 80204FF8 00201FF8  7C 7E 1B 78 */	mr r30, r3
lbl_80204FFC:
/* 80204FFC 00201FFC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80205000 00202000  38 00 00 02 */	li r0, 2
/* 80205004 00202004  7C 9E 18 50 */	subf r4, r30, r3
/* 80205008 00202008  7C 63 F0 50 */	subf r3, r3, r30
/* 8020500C 0020200C  7C 83 1B 78 */	or r3, r4, r3
/* 80205010 00202010  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 80205014 00202014  7C 03 18 78 */	andc r3, r0, r3
/* 80205018 00202018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020501C 0020201C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80205020 00202020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80205024 00202024  7C 08 03 A6 */	mtlr r0
/* 80205028 00202028  38 21 00 10 */	addi r1, r1, 0x10
/* 8020502C 0020202C  4E 80 00 20 */	blr 

.global evt_win_coin_off
evt_win_coin_off:
/* 80205030 00202030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80205034 00202034  7C 08 02 A6 */	mflr r0
/* 80205038 00202038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020503C 0020203C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80205040 00202040  93 C1 00 08 */	stw r30, 8(r1)
/* 80205044 00202044  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80205048 00202048  80 84 00 00 */	lwz r4, 0(r4)
/* 8020504C 0020204C  4B E2 BB 81 */	bl evtGetValue
/* 80205050 00202050  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80205054 00202054  7C 7F 1B 78 */	mr r31, r3
/* 80205058 00202058  2C 00 00 01 */	cmpwi r0, 1
/* 8020505C 0020205C  41 82 00 2C */	beq lbl_80205088
/* 80205060 00202060  40 80 00 10 */	bge lbl_80205070
/* 80205064 00202064  2C 00 00 00 */	cmpwi r0, 0
/* 80205068 00202068  40 80 00 14 */	bge lbl_8020507C
/* 8020506C 0020206C  48 00 00 30 */	b lbl_8020509C
lbl_80205070:
/* 80205070 00202070  2C 00 00 03 */	cmpwi r0, 3
/* 80205074 00202074  40 80 00 28 */	bge lbl_8020509C
/* 80205078 00202078  48 00 00 1C */	b lbl_80205094
lbl_8020507C:
/* 8020507C 0020207C  4B EC AC 9D */	bl func_800CFD18
/* 80205080 00202080  7C 7E 1B 78 */	mr r30, r3
/* 80205084 00202084  48 00 00 18 */	b lbl_8020509C
lbl_80205088:
/* 80205088 00202088  4B EC AB F5 */	bl func_800CFC7C
/* 8020508C 0020208C  7C 7E 1B 78 */	mr r30, r3
/* 80205090 00202090  48 00 00 0C */	b lbl_8020509C
lbl_80205094:
/* 80205094 00202094  4B EC AB C9 */	bl func_800CFC5C
/* 80205098 00202098  7C 7E 1B 78 */	mr r30, r3
lbl_8020509C:
/* 8020509C 0020209C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802050A0 002020A0  7C 00 F0 00 */	cmpw r0, r30
/* 802050A4 002020A4  41 82 00 0C */	beq lbl_802050B0
/* 802050A8 002020A8  38 60 00 00 */	li r3, 0
/* 802050AC 002020AC  48 00 00 18 */	b lbl_802050C4
lbl_802050B0:
/* 802050B0 002020B0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802050B4 002020B4  48 03 3E 95 */	bl winMgrCloseAutoDelete
/* 802050B8 002020B8  7F E3 FB 78 */	mr r3, r31
/* 802050BC 002020BC  4B E2 A6 E5 */	bl _mapFree
/* 802050C0 002020C0  38 60 00 02 */	li r3, 2
lbl_802050C4:
/* 802050C4 002020C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802050C8 002020C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802050CC 002020CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802050D0 002020D0  7C 08 03 A6 */	mtlr r0
/* 802050D4 002020D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802050D8 002020D8  4E 80 00 20 */	blr 

.global evt_win_coin_on
evt_win_coin_on:
/* 802050DC 002020DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802050E0 002020E0  7C 08 02 A6 */	mflr r0
/* 802050E4 002020E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802050E8 002020E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802050EC 002020EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802050F0 002020F0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802050F4 002020F4  93 81 00 10 */	stw r28, 0x10(r1)
/* 802050F8 002020F8  7C 7C 1B 78 */	mr r28, r3
/* 802050FC 002020FC  38 60 00 10 */	li r3, 0x10
/* 80205100 00202100  83 DC 00 18 */	lwz r30, 0x18(r28)
/* 80205104 00202104  4B E2 A8 51 */	bl _mapAlloc
/* 80205108 00202108  80 9E 00 00 */	lwz r4, 0(r30)
/* 8020510C 0020210C  7C 7D 1B 78 */	mr r29, r3
/* 80205110 00202110  7F 83 E3 78 */	mr r3, r28
/* 80205114 00202114  4B E2 BA B9 */	bl evtGetValue
/* 80205118 00202118  7C 7F 1B 78 */	mr r31, r3
/* 8020511C 0020211C  38 6D CF 28 */	addi r3, r13, lbl_80414188-_SDA_BASE_
/* 80205120 00202120  93 FD 00 0C */	stw r31, 0xc(r29)
/* 80205124 00202124  48 03 3E F1 */	bl winMgrEntry
/* 80205128 00202128  90 7D 00 00 */	stw r3, 0(r29)
/* 8020512C 0020212C  38 00 00 00 */	li r0, 0
/* 80205130 00202130  2C 1F 00 01 */	cmpwi r31, 1
/* 80205134 00202134  90 1D 00 08 */	stw r0, 8(r29)
/* 80205138 00202138  41 82 00 2C */	beq lbl_80205164
/* 8020513C 0020213C  40 80 00 10 */	bge lbl_8020514C
/* 80205140 00202140  2C 1F 00 00 */	cmpwi r31, 0
/* 80205144 00202144  40 80 00 14 */	bge lbl_80205158
/* 80205148 00202148  48 00 00 30 */	b lbl_80205178
lbl_8020514C:
/* 8020514C 0020214C  2C 1F 00 03 */	cmpwi r31, 3
/* 80205150 00202150  40 80 00 28 */	bge lbl_80205178
/* 80205154 00202154  48 00 00 1C */	b lbl_80205170
lbl_80205158:
/* 80205158 00202158  4B EC AB C1 */	bl func_800CFD18
/* 8020515C 0020215C  90 7D 00 04 */	stw r3, 4(r29)
/* 80205160 00202160  48 00 00 18 */	b lbl_80205178
lbl_80205164:
/* 80205164 00202164  4B EC AB 19 */	bl func_800CFC7C
/* 80205168 00202168  90 7D 00 04 */	stw r3, 4(r29)
/* 8020516C 0020216C  48 00 00 0C */	b lbl_80205178
lbl_80205170:
/* 80205170 00202170  4B EC AA ED */	bl func_800CFC5C
/* 80205174 00202174  90 7D 00 04 */	stw r3, 4(r29)
lbl_80205178:
/* 80205178 00202178  80 7D 00 00 */	lwz r3, 0(r29)
/* 8020517C 0020217C  7F A4 EB 78 */	mr r4, r29
/* 80205180 00202180  48 03 3E 71 */	bl winMgrSetParam
/* 80205184 00202184  80 7D 00 00 */	lwz r3, 0(r29)
/* 80205188 00202188  48 03 3E 2D */	bl winMgrOpen
/* 8020518C 0020218C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80205190 00202190  7F 83 E3 78 */	mr r3, r28
/* 80205194 00202194  7F A5 EB 78 */	mr r5, r29
/* 80205198 00202198  4B E2 B4 D1 */	bl evtSetValue
/* 8020519C 0020219C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802051A0 002021A0  38 60 00 02 */	li r3, 2
/* 802051A4 002021A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802051A8 002021A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802051AC 002021AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802051B0 002021B0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802051B4 002021B4  7C 08 03 A6 */	mtlr r0
/* 802051B8 002021B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802051BC 002021BC  4E 80 00 20 */	blr 

.global coin_disp
coin_disp:
/* 802051C0 002021C0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802051C4 002021C4  7C 08 02 A6 */	mflr r0
/* 802051C8 002021C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 802051CC 002021CC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802051D0 002021D0  7C 7F 1B 78 */	mr r31, r3
/* 802051D4 002021D4  93 C1 00 78 */	stw r30, 0x78(r1)
/* 802051D8 002021D8  93 A1 00 74 */	stw r29, 0x74(r1)
/* 802051DC 002021DC  4B EC CA 99 */	bl func_800D1C74
/* 802051E0 002021E0  80 1F 00 00 */	lwz r0, 0(r31)
/* 802051E4 002021E4  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802051E8 002021E8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 802051EC 002021EC  40 82 01 B4 */	bne lbl_802053A0
/* 802051F0 002021F0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802051F4 002021F4  2C 00 00 01 */	cmpwi r0, 1
/* 802051F8 002021F8  41 82 00 30 */	beq lbl_80205228
/* 802051FC 002021FC  40 80 00 10 */	bge lbl_8020520C
/* 80205200 00202200  2C 00 00 00 */	cmpwi r0, 0
/* 80205204 00202204  40 80 00 14 */	bge lbl_80205218
/* 80205208 00202208  48 00 00 3C */	b lbl_80205244
lbl_8020520C:
/* 8020520C 0020220C  2C 00 00 03 */	cmpwi r0, 3
/* 80205210 00202210  40 80 00 34 */	bge lbl_80205244
/* 80205214 00202214  48 00 00 24 */	b lbl_80205238
lbl_80205218:
/* 80205218 00202218  4B EC AB 01 */	bl func_800CFD18
/* 8020521C 0020221C  3B A0 01 8B */	li r29, 0x18b
/* 80205220 00202220  7C 7E 1B 78 */	mr r30, r3
/* 80205224 00202224  48 00 00 20 */	b lbl_80205244
lbl_80205228:
/* 80205228 00202228  4B EC AA 55 */	bl func_800CFC7C
/* 8020522C 0020222C  3B A0 01 02 */	li r29, 0x102
/* 80205230 00202230  7C 7E 1B 78 */	mr r30, r3
/* 80205234 00202234  48 00 00 10 */	b lbl_80205244
lbl_80205238:
/* 80205238 00202238  4B EC AA 25 */	bl func_800CFC5C
/* 8020523C 0020223C  3B A0 01 8D */	li r29, 0x18d
/* 80205240 00202240  7C 7E 1B 78 */	mr r30, r3
lbl_80205244:
/* 80205244 00202244  C0 22 F5 E0 */	lfs f1, lbl_80420960-_SDA2_BASE_(r2)
/* 80205248 00202248  38 61 00 3C */	addi r3, r1, 0x3c
/* 8020524C 0020224C  C0 42 F5 E4 */	lfs f2, lbl_80420964-_SDA2_BASE_(r2)
/* 80205250 00202250  C0 62 F5 E8 */	lfs f3, lbl_80420968-_SDA2_BASE_(r2)
/* 80205254 00202254  48 09 31 D9 */	bl PSMTXTrans
/* 80205258 00202258  C0 22 F5 EC */	lfs f1, lbl_8042096C-_SDA2_BASE_(r2)
/* 8020525C 0020225C  38 61 00 0C */	addi r3, r1, 0xc
/* 80205260 00202260  FC 40 08 90 */	fmr f2, f1
/* 80205264 00202264  FC 60 08 90 */	fmr f3, f1
/* 80205268 00202268  48 09 32 45 */	bl PSMTXScale
/* 8020526C 0020226C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80205270 00202270  38 81 00 0C */	addi r4, r1, 0xc
/* 80205274 00202274  7C 65 1B 78 */	mr r5, r3
/* 80205278 00202278  48 09 2C E9 */	bl PSMTXConcat
/* 8020527C 0020227C  7F A5 EB 78 */	mr r5, r29
/* 80205280 00202280  38 61 00 3C */	addi r3, r1, 0x3c
/* 80205284 00202284  38 80 00 10 */	li r4, 0x10
/* 80205288 00202288  4B E1 50 B9 */	bl iconDispGx2
/* 8020528C 0020228C  C0 22 F5 F0 */	lfs f1, lbl_80420970-_SDA2_BASE_(r2)
/* 80205290 00202290  38 61 00 3C */	addi r3, r1, 0x3c
/* 80205294 00202294  C0 42 F5 E4 */	lfs f2, lbl_80420964-_SDA2_BASE_(r2)
/* 80205298 00202298  C0 62 F5 E8 */	lfs f3, lbl_80420968-_SDA2_BASE_(r2)
/* 8020529C 0020229C  48 09 31 91 */	bl PSMTXTrans
/* 802052A0 002022A0  38 61 00 3C */	addi r3, r1, 0x3c
/* 802052A4 002022A4  38 80 00 10 */	li r4, 0x10
/* 802052A8 002022A8  38 A0 01 D6 */	li r5, 0x1d6
/* 802052AC 002022AC  4B E1 50 95 */	bl iconDispGx2
/* 802052B0 002022B0  C0 22 F5 F4 */	lfs f1, lbl_80420974-_SDA2_BASE_(r2)
/* 802052B4 002022B4  38 61 00 3C */	addi r3, r1, 0x3c
/* 802052B8 002022B8  C0 42 F5 E4 */	lfs f2, lbl_80420964-_SDA2_BASE_(r2)
/* 802052BC 002022BC  C0 62 F5 E8 */	lfs f3, lbl_80420968-_SDA2_BASE_(r2)
/* 802052C0 002022C0  48 09 31 6D */	bl PSMTXTrans
/* 802052C4 002022C4  80 02 F5 DC */	lwz r0, lbl_8042095C-_SDA2_BASE_(r2)
/* 802052C8 002022C8  38 61 00 3C */	addi r3, r1, 0x3c
/* 802052CC 002022CC  38 C1 00 08 */	addi r6, r1, 8
/* 802052D0 002022D0  38 A0 00 00 */	li r5, 0
/* 802052D4 002022D4  90 01 00 08 */	stw r0, 8(r1)
/* 802052D8 002022D8  80 9F 00 04 */	lwz r4, 4(r31)
/* 802052DC 002022DC  4B E1 3B 7D */	bl iconNumberDispGx
/* 802052E0 002022E0  80 9F 00 04 */	lwz r4, 4(r31)
/* 802052E4 002022E4  7C A4 F0 51 */	subf. r5, r4, r30
/* 802052E8 002022E8  41 82 00 A4 */	beq lbl_8020538C
/* 802052EC 002022EC  3C 60 66 66 */	lis r3, 0x66666667@ha
/* 802052F0 002022F0  38 03 66 67 */	addi r0, r3, 0x66666667@l
/* 802052F4 002022F4  7C 00 28 96 */	mulhw r0, r0, r5
/* 802052F8 002022F8  7C 00 16 70 */	srawi r0, r0, 2
/* 802052FC 002022FC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80205300 00202300  7C A0 1A 15 */	add. r5, r0, r3
/* 80205304 00202304  40 82 00 18 */	bne lbl_8020531C
/* 80205308 00202308  7C 1E 20 00 */	cmpw r30, r4
/* 8020530C 0020230C  38 00 FF FF */	li r0, -1
/* 80205310 00202310  40 81 00 08 */	ble lbl_80205318
/* 80205314 00202314  38 00 00 01 */	li r0, 1
lbl_80205318:
/* 80205318 00202318  7C 05 03 78 */	mr r5, r0
lbl_8020531C:
/* 8020531C 0020231C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80205320 00202320  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80205324 00202324  41 82 00 14 */	beq lbl_80205338
/* 80205328 00202328  80 1F 00 04 */	lwz r0, 4(r31)
/* 8020532C 0020232C  7C 00 2A 14 */	add r0, r0, r5
/* 80205330 00202330  90 1F 00 04 */	stw r0, 4(r31)
/* 80205334 00202334  4B F3 18 81 */	bl statusWinForceUpdateCoin
lbl_80205338:
/* 80205338 00202338  80 9F 00 08 */	lwz r4, 8(r31)
/* 8020533C 0020233C  3C 60 1B 4F */	lis r3, 0x1B4E81B5@ha
/* 80205340 00202340  38 03 81 B5 */	addi r0, r3, 0x1B4E81B5@l
/* 80205344 00202344  38 64 00 01 */	addi r3, r4, 1
/* 80205348 00202348  90 7F 00 08 */	stw r3, 8(r31)
/* 8020534C 0020234C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80205350 00202350  7C 00 20 96 */	mulhw r0, r0, r4
/* 80205354 00202354  7C 00 3E 70 */	srawi r0, r0, 7
/* 80205358 00202358  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8020535C 0020235C  7C 00 1A 14 */	add r0, r0, r3
/* 80205360 00202360  1C 00 04 B0 */	mulli r0, r0, 0x4b0
/* 80205364 00202364  7C 00 20 50 */	subf r0, r0, r4
/* 80205368 00202368  90 1F 00 08 */	stw r0, 8(r31)
/* 8020536C 0020236C  80 0D 18 D8 */	lwz r0, lbl_80418B38-_SDA_BASE_(r13)
/* 80205370 00202370  2C 00 00 00 */	cmpwi r0, 0
/* 80205374 00202374  40 82 00 18 */	bne lbl_8020538C
/* 80205378 00202378  3C 60 00 02 */	lis r3, 0x0002005B@ha
/* 8020537C 0020237C  38 63 00 5B */	addi r3, r3, 0x0002005B@l
/* 80205380 00202380  4B ED 01 41 */	bl psndSFXOn
/* 80205384 00202384  38 00 00 07 */	li r0, 7
/* 80205388 00202388  90 0D 18 D8 */	stw r0, lbl_80418B38-_SDA_BASE_(r13)
lbl_8020538C:
/* 8020538C 0020238C  80 6D 18 D8 */	lwz r3, lbl_80418B38-_SDA_BASE_(r13)
/* 80205390 00202390  2C 03 00 00 */	cmpwi r3, 0
/* 80205394 00202394  40 81 00 0C */	ble lbl_802053A0
/* 80205398 00202398  38 03 FF FF */	addi r0, r3, -1
/* 8020539C 0020239C  90 0D 18 D8 */	stw r0, lbl_80418B38-_SDA_BASE_(r13)
lbl_802053A0:
/* 802053A0 002023A0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802053A4 002023A4  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 802053A8 002023A8  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 802053AC 002023AC  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 802053B0 002023B0  7C 08 03 A6 */	mtlr r0
/* 802053B4 002023B4  38 21 00 80 */	addi r1, r1, 0x80
/* 802053B8 002023B8  4E 80 00 20 */	blr 

.global evt_win_one_message
evt_win_one_message:
/* 802053BC 002023BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802053C0 002023C0  7C 08 02 A6 */	mflr r0
/* 802053C4 002023C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802053C8 002023C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802053CC 002023CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802053D0 002023D0  7C 9E 23 78 */	mr r30, r4
/* 802053D4 002023D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802053D8 002023D8  7C 7D 1B 78 */	mr r29, r3
/* 802053DC 002023DC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802053E0 002023E0  80 84 00 00 */	lwz r4, 0(r4)
/* 802053E4 002023E4  4B E2 B7 E9 */	bl evtGetValue
/* 802053E8 002023E8  2C 1E 00 00 */	cmpwi r30, 0
/* 802053EC 002023EC  7C 7F 1B 78 */	mr r31, r3
/* 802053F0 002023F0  41 82 00 44 */	beq lbl_80205434
/* 802053F4 002023F4  38 60 00 0C */	li r3, 0xc
/* 802053F8 002023F8  4B E2 A5 5D */	bl _mapAlloc
/* 802053FC 002023FC  90 7D 00 78 */	stw r3, 0x78(r29)
/* 80205400 00202400  38 80 00 00 */	li r4, 0
/* 80205404 00202404  7C 7E 1B 78 */	mr r30, r3
/* 80205408 00202408  38 A0 00 0C */	li r5, 0xc
/* 8020540C 0020240C  4B DF FC A9 */	bl func_800050B4
/* 80205410 00202410  38 6D CF 00 */	addi r3, r13, lbl_80414160-_SDA_BASE_
/* 80205414 00202414  48 03 3C 01 */	bl winMgrEntry
/* 80205418 00202418  90 7E 00 08 */	stw r3, 8(r30)
/* 8020541C 0020241C  38 00 00 00 */	li r0, 0
/* 80205420 00202420  7F C4 F3 78 */	mr r4, r30
/* 80205424 00202424  90 1E 00 00 */	stw r0, 0(r30)
/* 80205428 00202428  93 FE 00 04 */	stw r31, 4(r30)
/* 8020542C 0020242C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80205430 00202430  48 03 3B C1 */	bl winMgrSetParam
lbl_80205434:
/* 80205434 00202434  83 FD 00 78 */	lwz r31, 0x78(r29)
/* 80205438 00202438  80 1F 00 00 */	lwz r0, 0(r31)
/* 8020543C 0020243C  2C 00 00 03 */	cmpwi r0, 3
/* 80205440 00202440  41 82 00 B0 */	beq lbl_802054F0
/* 80205444 00202444  40 80 00 1C */	bge lbl_80205460
/* 80205448 00202448  2C 00 00 01 */	cmpwi r0, 1
/* 8020544C 0020244C  41 82 00 3C */	beq lbl_80205488
/* 80205450 00202450  40 80 00 58 */	bge lbl_802054A8
/* 80205454 00202454  2C 00 00 00 */	cmpwi r0, 0
/* 80205458 00202458  40 80 00 18 */	bge lbl_80205470
/* 8020545C 0020245C  48 00 00 E4 */	b lbl_80205540
lbl_80205460:
/* 80205460 00202460  2C 00 00 05 */	cmpwi r0, 5
/* 80205464 00202464  41 82 00 C4 */	beq lbl_80205528
/* 80205468 00202468  40 80 00 D8 */	bge lbl_80205540
/* 8020546C 0020246C  48 00 00 9C */	b lbl_80205508
lbl_80205470:
/* 80205470 00202470  80 7F 00 08 */	lwz r3, 8(r31)
/* 80205474 00202474  48 03 3B 41 */	bl winMgrOpen
/* 80205478 00202478  80 7F 00 00 */	lwz r3, 0(r31)
/* 8020547C 0020247C  38 03 00 01 */	addi r0, r3, 1
/* 80205480 00202480  90 1F 00 00 */	stw r0, 0(r31)
/* 80205484 00202484  48 00 00 BC */	b lbl_80205540
lbl_80205488:
/* 80205488 00202488  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020548C 0020248C  48 03 3A 89 */	bl winMgrAction
/* 80205490 00202490  2C 03 00 00 */	cmpwi r3, 0
/* 80205494 00202494  40 82 00 AC */	bne lbl_80205540
/* 80205498 00202498  80 7F 00 00 */	lwz r3, 0(r31)
/* 8020549C 0020249C  38 03 00 01 */	addi r0, r3, 1
/* 802054A0 002024A0  90 1F 00 00 */	stw r0, 0(r31)
/* 802054A4 002024A4  48 00 00 9C */	b lbl_80205540
lbl_802054A8:
/* 802054A8 002024A8  38 60 00 00 */	li r3, 0
/* 802054AC 002024AC  4B E0 0B F9 */	bl keyGetButtonTrg
/* 802054B0 002024B0  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 802054B4 002024B4  41 82 00 8C */	beq lbl_80205540
/* 802054B8 002024B8  80 1F 00 04 */	lwz r0, 4(r31)
/* 802054BC 002024BC  2C 00 00 00 */	cmpwi r0, 0
/* 802054C0 002024C0  41 82 00 08 */	beq lbl_802054C8
/* 802054C4 002024C4  48 00 00 1C */	b lbl_802054E0
lbl_802054C8:
/* 802054C8 002024C8  4B E5 7D 4D */	bl marioGetPtr
/* 802054CC 002024CC  3C 80 80 30 */	lis r4, lbl_802FDB78@ha
/* 802054D0 002024D0  7C 65 1B 78 */	mr r5, r3
/* 802054D4 002024D4  38 64 DB 78 */	addi r3, r4, lbl_802FDB78@l
/* 802054D8 002024D8  38 85 00 8C */	addi r4, r5, 0x8c
/* 802054DC 002024DC  4B EC FF 71 */	bl psndSFXOn_3D
lbl_802054E0:
/* 802054E0 002024E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802054E4 002024E4  38 03 00 01 */	addi r0, r3, 1
/* 802054E8 002024E8  90 1F 00 00 */	stw r0, 0(r31)
/* 802054EC 002024EC  48 00 00 54 */	b lbl_80205540
lbl_802054F0:
/* 802054F0 002024F0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802054F4 002024F4  48 03 3A 91 */	bl winMgrClose
/* 802054F8 002024F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802054FC 002024FC  38 03 00 01 */	addi r0, r3, 1
/* 80205500 00202500  90 1F 00 00 */	stw r0, 0(r31)
/* 80205504 00202504  48 00 00 3C */	b lbl_80205540
lbl_80205508:
/* 80205508 00202508  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020550C 0020250C  48 03 3A 09 */	bl winMgrAction
/* 80205510 00202510  2C 03 00 00 */	cmpwi r3, 0
/* 80205514 00202514  40 82 00 2C */	bne lbl_80205540
/* 80205518 00202518  80 7F 00 00 */	lwz r3, 0(r31)
/* 8020551C 0020251C  38 03 00 01 */	addi r0, r3, 1
/* 80205520 00202520  90 1F 00 00 */	stw r0, 0(r31)
/* 80205524 00202524  48 00 00 1C */	b lbl_80205540
lbl_80205528:
/* 80205528 00202528  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020552C 0020252C  48 03 3A 01 */	bl winMgrDelete
/* 80205530 00202530  7F E3 FB 78 */	mr r3, r31
/* 80205534 00202534  4B E2 A2 6D */	bl _mapFree
/* 80205538 00202538  38 60 00 02 */	li r3, 2
/* 8020553C 0020253C  48 00 00 08 */	b lbl_80205544
lbl_80205540:
/* 80205540 00202540  38 60 00 00 */	li r3, 0
lbl_80205544:
/* 80205544 00202544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80205548 00202548  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020554C 0020254C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80205550 00202550  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80205554 00202554  7C 08 03 A6 */	mtlr r0
/* 80205558 00202558  38 21 00 20 */	addi r1, r1, 0x20
/* 8020555C 0020255C  4E 80 00 20 */	blr 

.global oneMessageDisp
oneMessageDisp:
/* 80205560 00202560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80205564 00202564  7C 08 02 A6 */	mflr r0
/* 80205568 00202568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020556C 0020256C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80205570 00202570  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80205574 00202574  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80205578 00202578  7C 7D 1B 78 */	mr r29, r3
/* 8020557C 0020257C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80205580 00202580  80 7F 00 08 */	lwz r3, 8(r31)
/* 80205584 00202584  48 03 39 91 */	bl winMgrAction
/* 80205588 00202588  2C 03 00 00 */	cmpwi r3, 0
/* 8020558C 0020258C  40 82 00 64 */	bne lbl_802055F0
/* 80205590 00202590  80 1F 00 04 */	lwz r0, 4(r31)
/* 80205594 00202594  2C 00 00 00 */	cmpwi r0, 0
/* 80205598 00202598  41 82 00 08 */	beq lbl_802055A0
/* 8020559C 0020259C  48 00 00 14 */	b lbl_802055B0
lbl_802055A0:
/* 802055A0 002025A0  3C 60 80 30 */	lis r3, lbl_802FDB8C@ha
/* 802055A4 002025A4  38 63 DB 8C */	addi r3, r3, lbl_802FDB8C@l
/* 802055A8 002025A8  4B E7 BA 21 */	bl msgSearch
/* 802055AC 002025AC  7C 7E 1B 78 */	mr r30, r3
lbl_802055B0:
/* 802055B0 002025B0  4B E7 18 59 */	bl FontDrawStart
/* 802055B4 002025B4  80 02 F5 D8 */	lwz r0, lbl_80420958-_SDA2_BASE_(r2)
/* 802055B8 002025B8  38 61 00 08 */	addi r3, r1, 8
/* 802055BC 002025BC  90 01 00 08 */	stw r0, 8(r1)
/* 802055C0 002025C0  4B E7 14 DD */	bl FontDrawColor
/* 802055C4 002025C4  7F C3 F3 78 */	mr r3, r30
/* 802055C8 002025C8  4B E6 EC 99 */	bl func_80074260
/* 802055CC 002025CC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802055D0 002025D0  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802055D4 002025D4  7C C0 00 D0 */	neg r6, r0
/* 802055D8 002025D8  7F C5 F3 78 */	mr r5, r30
/* 802055DC 002025DC  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 802055E0 002025E0  38 83 FF F8 */	addi r4, r3, -8
/* 802055E4 002025E4  7C 00 32 14 */	add r0, r0, r6
/* 802055E8 002025E8  7C 03 0E 70 */	srawi r3, r0, 1
/* 802055EC 002025EC  4B E6 F7 21 */	bl FontDrawMessage
lbl_802055F0:
/* 802055F0 002025F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802055F4 002025F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802055F8 002025F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802055FC 002025FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80205600 00202600  7C 08 03 A6 */	mtlr r0
/* 80205604 00202604  38 21 00 20 */	addi r1, r1, 0x20
/* 80205608 00202608  4E 80 00 20 */	blr 

.global evt_win_nameent_off
evt_win_nameent_off:
/* 8020560C 0020260C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80205610 00202610  7C 08 02 A6 */	mflr r0
/* 80205614 00202614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80205618 00202618  4B FF F6 E1 */	bl nameEntOff
/* 8020561C 0020261C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80205620 00202620  38 60 00 02 */	li r3, 2
/* 80205624 00202624  7C 08 03 A6 */	mtlr r0
/* 80205628 00202628  38 21 00 10 */	addi r1, r1, 0x10
/* 8020562C 0020262C  4E 80 00 20 */	blr 

.global evt_win_nameent_name
evt_win_nameent_name:
/* 80205630 00202630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80205634 00202634  7C 08 02 A6 */	mflr r0
/* 80205638 00202638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020563C 0020263C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80205640 00202640  93 C1 00 08 */	stw r30, 8(r1)
/* 80205644 00202644  7C 7E 1B 78 */	mr r30, r3
/* 80205648 00202648  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 8020564C 0020264C  4B FF F5 C9 */	bl nameEntGetName
/* 80205650 00202650  80 9F 00 00 */	lwz r4, 0(r31)
/* 80205654 00202654  7C 65 1B 78 */	mr r5, r3
/* 80205658 00202658  7F C3 F3 78 */	mr r3, r30
/* 8020565C 0020265C  4B E2 B0 0D */	bl evtSetValue
/* 80205660 00202660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80205664 00202664  38 60 00 02 */	li r3, 2
/* 80205668 00202668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020566C 0020266C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80205670 00202670  7C 08 03 A6 */	mtlr r0
/* 80205674 00202674  38 21 00 10 */	addi r1, r1, 0x10
/* 80205678 00202678  4E 80 00 20 */	blr 

.global evt_win_nameent_wait
evt_win_nameent_wait:
/* 8020567C 0020267C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80205680 00202680  7C 08 02 A6 */	mflr r0
/* 80205684 00202684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80205688 00202688  4B FF F6 45 */	bl nameEntWait
/* 8020568C 0020268C  7C 83 00 D0 */	neg r4, r3
/* 80205690 00202690  38 00 00 02 */	li r0, 2
/* 80205694 00202694  7C 83 1B 78 */	or r3, r4, r3
/* 80205698 00202698  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 8020569C 0020269C  7C 03 18 78 */	andc r3, r0, r3
/* 802056A0 002026A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802056A4 002026A4  7C 08 03 A6 */	mtlr r0
/* 802056A8 002026A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802056AC 002026AC  4E 80 00 20 */	blr 

.global evt_win_nameent_on
evt_win_nameent_on:
/* 802056B0 002026B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802056B4 002026B4  7C 08 02 A6 */	mflr r0
/* 802056B8 002026B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802056BC 002026BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802056C0 002026C0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802056C4 002026C4  80 84 00 00 */	lwz r4, 0(r4)
/* 802056C8 002026C8  4B E2 B5 05 */	bl evtGetValue
/* 802056CC 002026CC  7C 7F 1B 78 */	mr r31, r3
/* 802056D0 002026D0  4B FF F7 F5 */	bl nameEntPrepare
/* 802056D4 002026D4  2C 03 00 00 */	cmpwi r3, 0
/* 802056D8 002026D8  40 82 00 0C */	bne lbl_802056E4
/* 802056DC 002026DC  38 60 00 00 */	li r3, 0
/* 802056E0 002026E0  48 00 00 10 */	b lbl_802056F0
lbl_802056E4:
/* 802056E4 002026E4  7F E3 FB 78 */	mr r3, r31
/* 802056E8 002026E8  4B FF F6 21 */	bl nameEntOn
/* 802056EC 002026EC  38 60 00 02 */	li r3, 2
lbl_802056F0:
/* 802056F0 002026F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802056F4 002026F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802056F8 002026F8  7C 08 03 A6 */	mtlr r0
/* 802056FC 002026FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80205700 00202700  4E 80 00 20 */	blr 

.global evt_win_item_desttable
evt_win_item_desttable:
/* 80205704 00202704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80205708 00202708  7C 08 02 A6 */	mflr r0
/* 8020570C 0020270C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80205710 00202710  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80205714 00202714  80 84 00 00 */	lwz r4, 0(r4)
/* 80205718 00202718  4B E2 B4 B5 */	bl evtGetValue
/* 8020571C 0020271C  4B E2 A0 85 */	bl _mapFree
/* 80205720 00202720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80205724 00202724  38 60 00 02 */	li r3, 2
/* 80205728 00202728  7C 08 03 A6 */	mtlr r0
/* 8020572C 0020272C  38 21 00 10 */	addi r1, r1, 0x10
/* 80205730 00202730  4E 80 00 20 */	blr 

.global evt_win_item_maketable
evt_win_item_maketable:
/* 80205734 00202734  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80205738 00202738  7C 08 02 A6 */	mflr r0
/* 8020573C 0020273C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80205740 00202740  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 80205744 00202744  7C 78 1B 78 */	mr r24, r3
/* 80205748 00202748  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 8020574C 0020274C  80 9D 00 00 */	lwz r4, 0(r29)
/* 80205750 00202750  4B E2 B4 7D */	bl evtGetValue
/* 80205754 00202754  3B 60 00 00 */	li r27, 0
/* 80205758 00202758  7C 7E 1B 78 */	mr r30, r3
lbl_8020575C:
/* 8020575C 0020275C  80 03 00 00 */	lwz r0, 0(r3)
/* 80205760 00202760  2C 00 FF FF */	cmpwi r0, -1
/* 80205764 00202764  41 82 00 10 */	beq lbl_80205774
/* 80205768 00202768  38 63 00 04 */	addi r3, r3, 4
/* 8020576C 0020276C  3B 7B 00 01 */	addi r27, r27, 1
/* 80205770 00202770  4B FF FF EC */	b lbl_8020575C
lbl_80205774:
/* 80205774 00202774  2C 1B 00 00 */	cmpwi r27, 0
/* 80205778 00202778  40 82 00 1C */	bne lbl_80205794
/* 8020577C 0020277C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80205780 00202780  7F 03 C3 78 */	mr r3, r24
/* 80205784 00202784  38 A0 00 00 */	li r5, 0
/* 80205788 00202788  4B E2 AE E1 */	bl evtSetValue
/* 8020578C 0020278C  38 60 00 02 */	li r3, 2
/* 80205790 00202790  48 00 00 84 */	b lbl_80205814
lbl_80205794:
/* 80205794 00202794  38 1B 00 01 */	addi r0, r27, 1
/* 80205798 00202798  54 03 10 3A */	slwi r3, r0, 2
/* 8020579C 0020279C  4B E2 A1 B9 */	bl _mapAlloc
/* 802057A0 002027A0  7C 7C 1B 78 */	mr r28, r3
/* 802057A4 002027A4  7F DF F3 78 */	mr r31, r30
/* 802057A8 002027A8  3B 40 00 00 */	li r26, 0
/* 802057AC 002027AC  3B 20 00 00 */	li r25, 0
/* 802057B0 002027B0  7F 9E E3 78 */	mr r30, r28
/* 802057B4 002027B4  48 00 00 2C */	b lbl_802057E0
lbl_802057B8:
/* 802057B8 002027B8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802057BC 002027BC  4B EC B4 F9 */	bl pouchCheckItem
/* 802057C0 002027C0  2C 03 00 00 */	cmpwi r3, 0
/* 802057C4 002027C4  41 82 00 14 */	beq lbl_802057D8
/* 802057C8 002027C8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802057CC 002027CC  3B 39 00 01 */	addi r25, r25, 1
/* 802057D0 002027D0  90 1E 00 00 */	stw r0, 0(r30)
/* 802057D4 002027D4  3B DE 00 04 */	addi r30, r30, 4
lbl_802057D8:
/* 802057D8 002027D8  3B FF 00 04 */	addi r31, r31, 4
/* 802057DC 002027DC  3B 5A 00 01 */	addi r26, r26, 1
lbl_802057E0:
/* 802057E0 002027E0  7C 1A D8 00 */	cmpw r26, r27
/* 802057E4 002027E4  41 80 FF D4 */	blt lbl_802057B8
/* 802057E8 002027E8  2C 19 00 00 */	cmpwi r25, 0
/* 802057EC 002027EC  57 20 10 3A */	slwi r0, r25, 2
/* 802057F0 002027F0  38 60 FF FF */	li r3, -1
/* 802057F4 002027F4  7C 7C 01 2E */	stwx r3, r28, r0
/* 802057F8 002027F8  40 82 00 08 */	bne lbl_80205800
/* 802057FC 002027FC  3B 80 00 00 */	li r28, 0
lbl_80205800:
/* 80205800 00202800  80 9D 00 04 */	lwz r4, 4(r29)
/* 80205804 00202804  7F 03 C3 78 */	mr r3, r24
/* 80205808 00202808  7F 85 E3 78 */	mr r5, r28
/* 8020580C 0020280C  4B E2 AE 5D */	bl evtSetValue
/* 80205810 00202810  38 60 00 02 */	li r3, 2
lbl_80205814:
/* 80205814 00202814  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80205818 00202818  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8020581C 0020281C  7C 08 03 A6 */	mtlr r0
/* 80205820 00202820  38 21 00 30 */	addi r1, r1, 0x30
/* 80205824 00202824  4E 80 00 20 */	blr 

.global evt_win_other_select
evt_win_other_select:
/* 80205828 00202828  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020582C 0020282C  7C 08 02 A6 */	mflr r0
/* 80205830 00202830  90 01 00 24 */	stw r0, 0x24(r1)
/* 80205834 00202834  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80205838 00202838  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020583C 0020283C  7C 9E 23 78 */	mr r30, r4
/* 80205840 00202840  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80205844 00202844  7C 7D 1B 78 */	mr r29, r3
/* 80205848 00202848  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8020584C 0020284C  80 84 00 00 */	lwz r4, 0(r4)
/* 80205850 00202850  4B E2 B3 7D */	bl evtGetValue
/* 80205854 00202854  2C 1E 00 00 */	cmpwi r30, 0
/* 80205858 00202858  41 82 00 18 */	beq lbl_80205870
/* 8020585C 0020285C  38 80 00 00 */	li r4, 0
/* 80205860 00202860  38 A0 00 01 */	li r5, 1
/* 80205864 00202864  48 03 22 09 */	bl winMgrSelectEntry
/* 80205868 00202868  90 7D 00 78 */	stw r3, 0x78(r29)
/* 8020586C 0020286C  4B E5 5B 31 */	bl marioKeyOff
lbl_80205870:
/* 80205870 00202870  83 DD 00 78 */	lwz r30, 0x78(r29)
/* 80205874 00202874  7F A4 EB 78 */	mr r4, r29
/* 80205878 00202878  7F C3 F3 78 */	mr r3, r30
/* 8020587C 0020287C  48 03 1C 19 */	bl winMgrSelectOther
/* 80205880 00202880  7C 7F 1B 79 */	or. r31, r3, r3
/* 80205884 00202884  40 82 00 0C */	bne lbl_80205890
/* 80205888 00202888  38 60 00 00 */	li r3, 0
/* 8020588C 0020288C  48 00 00 30 */	b lbl_802058BC
lbl_80205890:
/* 80205890 00202890  7F C3 F3 78 */	mr r3, r30
/* 80205894 00202894  48 03 1B BD */	bl winMgrSelectDelete
/* 80205898 00202898  4B E5 5A D1 */	bl marioKeyOn
/* 8020589C 0020289C  2C 1F FF FF */	cmpwi r31, -1
/* 802058A0 002028A0  40 82 00 10 */	bne lbl_802058B0
/* 802058A4 002028A4  38 00 00 00 */	li r0, 0
/* 802058A8 002028A8  90 1D 00 9C */	stw r0, 0x9c(r29)
/* 802058AC 002028AC  48 00 00 0C */	b lbl_802058B8
lbl_802058B0:
/* 802058B0 002028B0  38 00 00 01 */	li r0, 1
/* 802058B4 002028B4  90 1D 00 9C */	stw r0, 0x9c(r29)
lbl_802058B8:
/* 802058B8 002028B8  38 60 00 02 */	li r3, 2
lbl_802058BC:
/* 802058BC 002028BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802058C0 002028C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802058C4 002028C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802058C8 002028C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802058CC 002028CC  7C 08 03 A6 */	mtlr r0
/* 802058D0 002028D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802058D4 002028D4  4E 80 00 20 */	blr 

.global evt_win_item_select
evt_win_item_select:
/* 802058D8 002028D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802058DC 002028DC  7C 08 02 A6 */	mflr r0
/* 802058E0 002028E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802058E4 002028E4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802058E8 002028E8  7C 9C 23 78 */	mr r28, r4
/* 802058EC 002028EC  7C 7B 1B 78 */	mr r27, r3
/* 802058F0 002028F0  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 802058F4 002028F4  80 9E 00 00 */	lwz r4, 0(r30)
/* 802058F8 002028F8  4B E2 B2 D5 */	bl evtGetValue
/* 802058FC 002028FC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80205900 00202900  7C 7F 1B 78 */	mr r31, r3
/* 80205904 00202904  7F 63 DB 78 */	mr r3, r27
/* 80205908 00202908  4B E2 B2 C5 */	bl evtGetValue
/* 8020590C 0020290C  2C 1C 00 00 */	cmpwi r28, 0
/* 80205910 00202910  41 82 00 18 */	beq lbl_80205928
/* 80205914 00202914  38 80 00 00 */	li r4, 0
/* 80205918 00202918  38 A0 00 01 */	li r5, 1
/* 8020591C 0020291C  48 03 21 51 */	bl winMgrSelectEntry
/* 80205920 00202920  90 7B 00 78 */	stw r3, 0x78(r27)
/* 80205924 00202924  4B E5 5A 79 */	bl marioKeyOff
lbl_80205928:
/* 80205928 00202928  83 BB 00 78 */	lwz r29, 0x78(r27)
/* 8020592C 0020292C  7F A3 EB 78 */	mr r3, r29
/* 80205930 00202930  48 03 20 51 */	bl winMgrSelect
/* 80205934 00202934  7C 7C 1B 79 */	or. r28, r3, r3
/* 80205938 00202938  40 82 00 0C */	bne lbl_80205944
/* 8020593C 0020293C  38 60 00 00 */	li r3, 0
/* 80205940 00202940  48 00 00 4C */	b lbl_8020598C
lbl_80205944:
/* 80205944 00202944  7F A3 EB 78 */	mr r3, r29
/* 80205948 00202948  48 03 1B 01 */	bl unk_JP_US_EU_59_80237448
/* 8020594C 0020294C  7C 60 1B 78 */	mr r0, r3
/* 80205950 00202950  7F A3 EB 78 */	mr r3, r29
/* 80205954 00202954  7C 1D 03 78 */	mr r29, r0
/* 80205958 00202958  48 03 1A F9 */	bl winMgrSelectDelete
/* 8020595C 0020295C  4B E5 5A 0D */	bl marioKeyOn
/* 80205960 00202960  80 9E 00 08 */	lwz r4, 8(r30)
/* 80205964 00202964  7F 63 DB 78 */	mr r3, r27
/* 80205968 00202968  7F 85 E3 78 */	mr r5, r28
/* 8020596C 0020296C  4B E2 AC FD */	bl evtSetValue
/* 80205970 00202970  2C 1F 00 00 */	cmpwi r31, 0
/* 80205974 00202974  41 82 00 14 */	beq lbl_80205988
/* 80205978 00202978  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8020597C 0020297C  7F 63 DB 78 */	mr r3, r27
/* 80205980 00202980  7F A5 EB 78 */	mr r5, r29
/* 80205984 00202984  4B E2 AC E5 */	bl evtSetValue
lbl_80205988:
/* 80205988 00202988  38 60 00 02 */	li r3, 2
lbl_8020598C:
/* 8020598C 0020298C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80205990 00202990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80205994 00202994  7C 08 03 A6 */	mtlr r0
/* 80205998 00202998  38 21 00 20 */	addi r1, r1, 0x20
/* 8020599C 0020299C  4E 80 00 20 */	blr 