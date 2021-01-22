.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global mot_stay_post
mot_stay_post:
/* 800A4E88 000A1E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4E8C 000A1E8C  7C 08 02 A6 */	mflr r0
/* 800A4E90 000A1E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A4E94 000A1E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A4E98 000A1E98  4B FB 83 7D */	bl marioGetPtr
/* 800A4E9C 000A1E9C  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 800A4EA0 000A1EA0  28 00 00 13 */	cmplwi r0, 0x13
/* 800A4EA4 000A1EA4  41 82 00 58 */	beq lbl_800A4EFC
/* 800A4EA8 000A1EA8  28 00 00 14 */	cmplwi r0, 0x14
/* 800A4EAC 000A1EAC  41 82 00 50 */	beq lbl_800A4EFC
/* 800A4EB0 000A1EB0  4B FB 83 65 */	bl marioGetPtr
/* 800A4EB4 000A1EB4  7C 7F 1B 78 */	mr r31, r3
/* 800A4EB8 000A1EB8  80 63 02 78 */	lwz r3, 0x278(r3)
/* 800A4EBC 000A1EBC  3C 03 00 01 */	addis r0, r3, 1
/* 800A4EC0 000A1EC0  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A4EC4 000A1EC4  41 82 00 10 */	beq lbl_800A4ED4
/* 800A4EC8 000A1EC8  48 03 03 35 */	bl psndSFXOff
/* 800A4ECC 000A1ECC  38 00 FF FF */	li r0, -1
/* 800A4ED0 000A1ED0  90 1F 02 78 */	stw r0, 0x278(r31)
lbl_800A4ED4:
/* 800A4ED4 000A1ED4  4B FB 83 41 */	bl marioGetPtr
/* 800A4ED8 000A1ED8  7C 7F 1B 78 */	mr r31, r3
/* 800A4EDC 000A1EDC  80 63 02 7C */	lwz r3, 0x27c(r3)
/* 800A4EE0 000A1EE0  3C 03 00 01 */	addis r0, r3, 1
/* 800A4EE4 000A1EE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A4EE8 000A1EE8  41 82 00 38 */	beq lbl_800A4F20
/* 800A4EEC 000A1EEC  48 03 03 11 */	bl psndSFXOff
/* 800A4EF0 000A1EF0  38 00 FF FF */	li r0, -1
/* 800A4EF4 000A1EF4  90 1F 02 7C */	stw r0, 0x27c(r31)
/* 800A4EF8 000A1EF8  48 00 00 28 */	b lbl_800A4F20
lbl_800A4EFC:
/* 800A4EFC 000A1EFC  4B FB 83 19 */	bl marioGetPtr
/* 800A4F00 000A1F00  7C 7F 1B 78 */	mr r31, r3
/* 800A4F04 000A1F04  80 63 02 78 */	lwz r3, 0x278(r3)
/* 800A4F08 000A1F08  3C 03 00 01 */	addis r0, r3, 1
/* 800A4F0C 000A1F0C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A4F10 000A1F10  41 82 00 10 */	beq lbl_800A4F20
/* 800A4F14 000A1F14  48 03 02 E9 */	bl psndSFXOff
/* 800A4F18 000A1F18  38 00 FF FF */	li r0, -1
/* 800A4F1C 000A1F1C  90 1F 02 78 */	stw r0, 0x278(r31)
lbl_800A4F20:
/* 800A4F20 000A1F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A4F24 000A1F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A4F28 000A1F28  7C 08 03 A6 */	mtlr r0
/* 800A4F2C 000A1F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A4F30 000A1F30  4E 80 00 20 */	blr 

.global marioChgMotAuto
marioChgMotAuto:
/* 800A4F34 000A1F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4F38 000A1F38  7C 08 02 A6 */	mflr r0
/* 800A4F3C 000A1F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A4F40 000A1F40  4B FB 82 D5 */	bl marioGetPtr
/* 800A4F44 000A1F44  88 83 02 4E */	lbz r4, 0x24e(r3)
/* 800A4F48 000A1F48  7C 80 07 75 */	extsb. r0, r4
/* 800A4F4C 000A1F4C  40 82 00 1C */	bne lbl_800A4F68
/* 800A4F50 000A1F50  88 03 02 4F */	lbz r0, 0x24f(r3)
/* 800A4F54 000A1F54  7C 00 07 75 */	extsb. r0, r0
/* 800A4F58 000A1F58  40 82 00 10 */	bne lbl_800A4F68
/* 800A4F5C 000A1F5C  38 60 00 00 */	li r3, 0
/* 800A4F60 000A1F60  4B FE DE B5 */	bl marioChgMot
/* 800A4F64 000A1F64  48 00 00 54 */	b lbl_800A4FB8
lbl_800A4F68:
/* 800A4F68 000A1F68  88 03 02 4F */	lbz r0, 0x24f(r3)
/* 800A4F6C 000A1F6C  7C 83 07 74 */	extsb r3, r4
/* 800A4F70 000A1F70  7C 63 19 D6 */	mullw r3, r3, r3
/* 800A4F74 000A1F74  7C 00 07 74 */	extsb r0, r0
/* 800A4F78 000A1F78  7C 00 01 D6 */	mullw r0, r0, r0
/* 800A4F7C 000A1F7C  7C 03 02 14 */	add r0, r3, r0
/* 800A4F80 000A1F80  2C 00 0B D1 */	cmpwi r0, 0xbd1
/* 800A4F84 000A1F84  40 81 00 2C */	ble lbl_800A4FB0
/* 800A4F88 000A1F88  38 60 01 43 */	li r3, 0x143
/* 800A4F8C 000A1F8C  48 02 A2 29 */	bl pouchEquipCheckBadge
/* 800A4F90 000A1F90  2C 03 00 00 */	cmpwi r3, 0
/* 800A4F94 000A1F94  40 82 00 10 */	bne lbl_800A4FA4
/* 800A4F98 000A1F98  38 60 00 02 */	li r3, 2
/* 800A4F9C 000A1F9C  4B FE DE 79 */	bl marioChgMot
/* 800A4FA0 000A1FA0  48 00 00 18 */	b lbl_800A4FB8
lbl_800A4FA4:
/* 800A4FA4 000A1FA4  38 60 00 01 */	li r3, 1
/* 800A4FA8 000A1FA8  4B FE DE 6D */	bl marioChgMot
/* 800A4FAC 000A1FAC  48 00 00 0C */	b lbl_800A4FB8
lbl_800A4FB0:
/* 800A4FB0 000A1FB0  38 60 00 01 */	li r3, 1
/* 800A4FB4 000A1FB4  4B FE DE 61 */	bl marioChgMot
lbl_800A4FB8:
/* 800A4FB8 000A1FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A4FBC 000A1FBC  7C 08 03 A6 */	mtlr r0
/* 800A4FC0 000A1FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800A4FC4 000A1FC4  4E 80 00 20 */	blr 

.global mot_stay
mot_stay:
/* 800A4FC8 000A1FC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A4FCC 000A1FCC  7C 08 02 A6 */	mflr r0
/* 800A4FD0 000A1FD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A4FD4 000A1FD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A4FD8 000A1FD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A4FDC 000A1FDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A4FE0 000A1FE0  4B FB 82 35 */	bl marioGetPtr
/* 800A4FE4 000A1FE4  7C 7F 1B 78 */	mr r31, r3
/* 800A4FE8 000A1FE8  3B C0 00 00 */	li r30, 0
/* 800A4FEC 000A1FEC  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 800A4FF0 000A1FF0  7C 00 07 74 */	extsb r0, r0
/* 800A4FF4 000A1FF4  2C 00 00 02 */	cmpwi r0, 2
/* 800A4FF8 000A1FF8  40 82 00 0C */	bne lbl_800A5004
/* 800A4FFC 000A1FFC  48 16 F5 ED */	bl kpa_stay
/* 800A5000 000A2000  48 00 06 E8 */	b lbl_800A56E8
lbl_800A5004:
/* 800A5004 000A2004  2C 00 00 01 */	cmpwi r0, 1
/* 800A5008 000A2008  40 82 00 0C */	bne lbl_800A5014
/* 800A500C 000A200C  48 15 2B 95 */	bl peach_stay
/* 800A5010 000A2010  48 00 06 D8 */	b lbl_800A56E8
lbl_800A5014:
/* 800A5014 000A2014  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 800A5018 000A2018  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800A501C 000A201C  41 82 01 88 */	beq lbl_800A51A4
/* 800A5020 000A2020  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 800A5024 000A2024  90 1F 00 0C */	stw r0, 0xc(r31)
/* 800A5028 000A2028  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A502C 000A202C  54 00 04 16 */	rlwinm r0, r0, 0, 0x10, 0xb
/* 800A5030 000A2030  90 1F 00 00 */	stw r0, 0(r31)
/* 800A5034 000A2034  4B FE DC 2D */	bl marioClearJumpPara
/* 800A5038 000A2038  38 80 00 00 */	li r4, 0
/* 800A503C 000A203C  3B C0 00 01 */	li r30, 1
/* 800A5040 000A2040  B0 9F 00 50 */	sth r4, 0x50(r31)
/* 800A5044 000A2044  90 9F 00 48 */	stw r4, 0x48(r31)
/* 800A5048 000A2048  90 9F 00 44 */	stw r4, 0x44(r31)
/* 800A504C 000A204C  98 9F 00 40 */	stb r4, 0x40(r31)
/* 800A5050 000A2050  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 800A5054 000A2054  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 800A5058 000A2058  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 800A505C 000A205C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 800A5060 000A2060  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 800A5064 000A2064  90 1F 01 24 */	stw r0, 0x124(r31)
/* 800A5068 000A2068  90 9F 02 B0 */	stw r4, 0x2b0(r31)
/* 800A506C 000A206C  90 9F 02 B8 */	stw r4, 0x2b8(r31)
/* 800A5070 000A2070  90 9F 02 B4 */	stw r4, 0x2b4(r31)
/* 800A5074 000A2074  B0 9F 00 5A */	sth r4, 0x5a(r31)
/* 800A5078 000A2078  4B FB 5C 21 */	bl marioSoundInit
/* 800A507C 000A207C  48 0F E4 41 */	bl marioResetCamFollowRate
/* 800A5080 000A2080  80 7F 00 00 */	lwz r3, 0(r31)
/* 800A5084 000A2084  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 800A5088 000A2088  41 82 00 30 */	beq lbl_800A50B8
/* 800A508C 000A208C  38 62 9B 70 */	addi r3, r2, lbl_8041AEF0-_SDA2_BASE_
/* 800A5090 000A2090  4B FB 2E B5 */	bl marioChgPose
/* 800A5094 000A2094  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A5098 000A2098  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A509C 000A209C  40 82 00 0C */	bne lbl_800A50A8
/* 800A50A0 000A20A0  C0 02 9B 78 */	lfs f0, lbl_8041AEF8-_SDA2_BASE_(r2)
/* 800A50A4 000A20A4  D0 1F 01 80 */	stfs f0, 0x180(r31)
lbl_800A50A8:
/* 800A50A8 000A20A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A50AC 000A20AC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A50B0 000A20B0  90 1F 00 00 */	stw r0, 0(r31)
/* 800A50B4 000A20B4  48 00 00 D0 */	b lbl_800A5184
lbl_800A50B8:
/* 800A50B8 000A20B8  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 800A50BC 000A20BC  41 82 00 0C */	beq lbl_800A50C8
/* 800A50C0 000A20C0  4B FF F4 31 */	bl motSlitContinue
/* 800A50C4 000A20C4  48 00 00 1C */	b lbl_800A50E0
lbl_800A50C8:
/* 800A50C8 000A20C8  80 1F 00 04 */	lwz r0, 4(r31)
/* 800A50CC 000A20CC  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800A50D0 000A20D0  41 82 00 10 */	beq lbl_800A50E0
/* 800A50D4 000A20D4  38 60 00 15 */	li r3, 0x15
/* 800A50D8 000A20D8  4B FE DB BD */	bl marioChgMot2
/* 800A50DC 000A20DC  4B FF F3 95 */	bl motSlitCancel
lbl_800A50E0:
/* 800A50E0 000A20E0  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A50E4 000A20E4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800A50E8 000A20E8  40 82 00 90 */	bne lbl_800A5178
/* 800A50EC 000A20EC  48 02 AA F9 */	bl pouchGetHP
/* 800A50F0 000A20F0  2C 03 00 00 */	cmpwi r3, 0
/* 800A50F4 000A20F4  40 82 00 1C */	bne lbl_800A5110
/* 800A50F8 000A20F8  38 62 9B 7C */	addi r3, r2, lbl_8041AEFC-_SDA2_BASE_
/* 800A50FC 000A20FC  4B FB 2E 49 */	bl marioChgPose
/* 800A5100 000A2100  38 9F 00 8C */	addi r4, r31, 0x8c
/* 800A5104 000A2104  38 60 01 73 */	li r3, 0x173
/* 800A5108 000A2108  48 03 03 45 */	bl psndSFXOn_3D
/* 800A510C 000A210C  48 00 00 78 */	b lbl_800A5184
lbl_800A5110:
/* 800A5110 000A2110  48 02 AA D5 */	bl pouchGetHP
/* 800A5114 000A2114  38 00 00 05 */	li r0, 5
/* 800A5118 000A2118  54 64 0F FE */	srwi r4, r3, 0x1f
/* 800A511C 000A211C  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 800A5120 000A2120  7C 03 00 10 */	subfc r0, r3, r0
/* 800A5124 000A2124  7C 05 21 15 */	adde. r0, r5, r4
/* 800A5128 000A2128  41 82 00 30 */	beq lbl_800A5158
/* 800A512C 000A212C  4B FB 64 C1 */	bl marioChkKey
/* 800A5130 000A2130  2C 03 00 00 */	cmpwi r3, 0
/* 800A5134 000A2134  41 82 00 24 */	beq lbl_800A5158
/* 800A5138 000A2138  80 1F 00 04 */	lwz r0, 4(r31)
/* 800A513C 000A213C  38 62 9B 84 */	addi r3, r2, lbl_8041AF04-_SDA2_BASE_
/* 800A5140 000A2140  60 00 00 04 */	ori r0, r0, 4
/* 800A5144 000A2144  90 1F 00 04 */	stw r0, 4(r31)
/* 800A5148 000A2148  4B FB 2D FD */	bl marioChgPose
/* 800A514C 000A214C  38 00 00 00 */	li r0, 0
/* 800A5150 000A2150  B0 1F 00 58 */	sth r0, 0x58(r31)
/* 800A5154 000A2154  48 00 00 30 */	b lbl_800A5184
lbl_800A5158:
/* 800A5158 000A2158  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800A515C 000A215C  38 82 9B 8C */	addi r4, r2, lbl_8041AF0C-_SDA2_BASE_
/* 800A5160 000A2160  48 1C 22 ED */	bl strcmp
/* 800A5164 000A2164  2C 03 00 00 */	cmpwi r3, 0
/* 800A5168 000A2168  41 82 00 1C */	beq lbl_800A5184
/* 800A516C 000A216C  38 62 9B 70 */	addi r3, r2, lbl_8041AEF0-_SDA2_BASE_
/* 800A5170 000A2170  4B FB 2D D5 */	bl marioChgPose
/* 800A5174 000A2174  48 00 00 10 */	b lbl_800A5184
lbl_800A5178:
/* 800A5178 000A2178  38 62 9B 94 */	addi r3, r2, lbl_8041AF14-_SDA2_BASE_
/* 800A517C 000A217C  38 80 00 0A */	li r4, 0xa
/* 800A5180 000A2180  4B FB 2D 31 */	bl marioChgPoseTime
lbl_800A5184:
/* 800A5184 000A2184  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A5188 000A2188  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A518C 000A218C  40 82 00 0C */	bne lbl_800A5198
/* 800A5190 000A2190  C0 02 9B 78 */	lfs f0, lbl_8041AEF8-_SDA2_BASE_(r2)
/* 800A5194 000A2194  D0 1F 01 80 */	stfs f0, 0x180(r31)
lbl_800A5198:
/* 800A5198 000A2198  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A519C 000A219C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A51A0 000A21A0  90 1F 00 00 */	stw r0, 0(r31)
lbl_800A51A4:
/* 800A51A4 000A21A4  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A51A8 000A21A8  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800A51AC 000A21AC  41 82 00 70 */	beq lbl_800A521C
/* 800A51B0 000A21B0  4B FE C0 B1 */	bl marioChkJump
/* 800A51B4 000A21B4  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 800A51B8 000A21B8  C0 02 9B 78 */	lfs f0, lbl_8041AEF8-_SDA2_BASE_(r2)
/* 800A51BC 000A21BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A51C0 000A21C0  40 81 05 28 */	ble lbl_800A56E8
/* 800A51C4 000A21C4  88 7F 02 4E */	lbz r3, 0x24e(r31)
/* 800A51C8 000A21C8  88 1F 02 4F */	lbz r0, 0x24f(r31)
/* 800A51CC 000A21CC  7C 63 07 74 */	extsb r3, r3
/* 800A51D0 000A21D0  7C 00 07 74 */	extsb r0, r0
/* 800A51D4 000A21D4  7C 63 19 D6 */	mullw r3, r3, r3
/* 800A51D8 000A21D8  7C 00 01 D6 */	mullw r0, r0, r0
/* 800A51DC 000A21DC  7C 03 02 14 */	add r0, r3, r0
/* 800A51E0 000A21E0  2C 00 0B D1 */	cmpwi r0, 0xbd1
/* 800A51E4 000A21E4  40 81 00 2C */	ble lbl_800A5210
/* 800A51E8 000A21E8  38 60 01 43 */	li r3, 0x143
/* 800A51EC 000A21EC  48 02 9F C9 */	bl pouchEquipCheckBadge
/* 800A51F0 000A21F0  2C 03 00 00 */	cmpwi r3, 0
/* 800A51F4 000A21F4  40 82 00 10 */	bne lbl_800A5204
/* 800A51F8 000A21F8  38 60 00 02 */	li r3, 2
/* 800A51FC 000A21FC  4B FE DC 19 */	bl marioChgMot
/* 800A5200 000A2200  48 00 04 E8 */	b lbl_800A56E8
lbl_800A5204:
/* 800A5204 000A2204  38 60 00 01 */	li r3, 1
/* 800A5208 000A2208  4B FE DC 0D */	bl marioChgMot
/* 800A520C 000A220C  48 00 04 DC */	b lbl_800A56E8
lbl_800A5210:
/* 800A5210 000A2210  38 60 00 01 */	li r3, 1
/* 800A5214 000A2214  4B FE DC 01 */	bl marioChgMot
/* 800A5218 000A2218  48 00 04 D0 */	b lbl_800A56E8
lbl_800A521C:
/* 800A521C 000A221C  38 60 03 E8 */	li r3, 0x3e8
/* 800A5220 000A2220  4B F6 08 D9 */	bl sysMsec2Frame
/* 800A5224 000A2224  A8 9F 00 5A */	lha r4, 0x5a(r31)
/* 800A5228 000A2228  38 84 00 01 */	addi r4, r4, 1
/* 800A522C 000A222C  7C 80 07 34 */	extsh r0, r4
/* 800A5230 000A2230  B0 9F 00 5A */	sth r4, 0x5a(r31)
/* 800A5234 000A2234  7C 00 18 00 */	cmpw r0, r3
/* 800A5238 000A2238  40 81 00 A8 */	ble lbl_800A52E0
/* 800A523C 000A223C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A5240 000A2240  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800A5244 000A2244  40 82 00 9C */	bne lbl_800A52E0
/* 800A5248 000A2248  4B FB 63 A5 */	bl marioChkKey
/* 800A524C 000A224C  2C 03 00 00 */	cmpwi r3, 0
/* 800A5250 000A2250  41 82 00 90 */	beq lbl_800A52E0
/* 800A5254 000A2254  48 02 A9 91 */	bl pouchGetHP
/* 800A5258 000A2258  38 00 00 05 */	li r0, 5
/* 800A525C 000A225C  54 64 0F FE */	srwi r4, r3, 0x1f
/* 800A5260 000A2260  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 800A5264 000A2264  7C 03 00 10 */	subfc r0, r3, r0
/* 800A5268 000A2268  7C 05 21 15 */	adde. r0, r5, r4
/* 800A526C 000A226C  41 82 00 38 */	beq lbl_800A52A4
/* 800A5270 000A2270  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800A5274 000A2274  38 82 9B 84 */	addi r4, r2, lbl_8041AF04-_SDA2_BASE_
/* 800A5278 000A2278  48 1C 21 D5 */	bl strcmp
/* 800A527C 000A227C  2C 03 00 00 */	cmpwi r3, 0
/* 800A5280 000A2280  41 82 00 0C */	beq lbl_800A528C
/* 800A5284 000A2284  38 00 00 00 */	li r0, 0
/* 800A5288 000A2288  B0 1F 00 58 */	sth r0, 0x58(r31)
lbl_800A528C:
/* 800A528C 000A228C  80 1F 00 04 */	lwz r0, 4(r31)
/* 800A5290 000A2290  38 62 9B 84 */	addi r3, r2, lbl_8041AF04-_SDA2_BASE_
/* 800A5294 000A2294  60 00 00 04 */	ori r0, r0, 4
/* 800A5298 000A2298  90 1F 00 04 */	stw r0, 4(r31)
/* 800A529C 000A229C  4B FB 2C A9 */	bl marioChgPose
/* 800A52A0 000A22A0  48 00 00 40 */	b lbl_800A52E0
lbl_800A52A4:
/* 800A52A4 000A22A4  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 800A52A8 000A22A8  2C 00 00 00 */	cmpwi r0, 0
/* 800A52AC 000A22AC  40 82 00 34 */	bne lbl_800A52E0
/* 800A52B0 000A22B0  A8 1F 00 5A */	lha r0, 0x5a(r31)
/* 800A52B4 000A22B4  2C 00 00 00 */	cmpwi r0, 0
/* 800A52B8 000A22B8  41 82 00 28 */	beq lbl_800A52E0
/* 800A52BC 000A22BC  38 00 00 00 */	li r0, 0
/* 800A52C0 000A22C0  38 82 9B 8C */	addi r4, r2, lbl_8041AF0C-_SDA2_BASE_
/* 800A52C4 000A22C4  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 800A52C8 000A22C8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800A52CC 000A22CC  48 1C 21 81 */	bl strcmp
/* 800A52D0 000A22D0  2C 03 00 00 */	cmpwi r3, 0
/* 800A52D4 000A22D4  41 82 00 0C */	beq lbl_800A52E0
/* 800A52D8 000A22D8  38 62 9B 70 */	addi r3, r2, lbl_8041AEF0-_SDA2_BASE_
/* 800A52DC 000A22DC  4B FB 2C 69 */	bl marioChgPose
lbl_800A52E0:
/* 800A52E0 000A22E0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800A52E4 000A22E4  38 82 9B 84 */	addi r4, r2, lbl_8041AF04-_SDA2_BASE_
/* 800A52E8 000A22E8  48 1C 21 65 */	bl strcmp
/* 800A52EC 000A22EC  2C 03 00 00 */	cmpwi r3, 0
/* 800A52F0 000A22F0  40 82 00 70 */	bne lbl_800A5360
/* 800A52F4 000A22F4  4B FB 62 F9 */	bl marioChkKey
/* 800A52F8 000A22F8  2C 03 00 00 */	cmpwi r3, 0
/* 800A52FC 000A22FC  41 82 00 64 */	beq lbl_800A5360
/* 800A5300 000A2300  4B FB 7F 15 */	bl marioGetPtr
/* 800A5304 000A2304  7C 7D 1B 78 */	mr r29, r3
/* 800A5308 000A2308  A8 63 00 58 */	lha r3, 0x58(r3)
/* 800A530C 000A230C  38 03 00 01 */	addi r0, r3, 1
/* 800A5310 000A2310  B0 1D 00 58 */	sth r0, 0x58(r29)
/* 800A5314 000A2314  A8 1D 00 58 */	lha r0, 0x58(r29)
/* 800A5318 000A2318  2C 00 00 F0 */	cmpwi r0, 0xf0
/* 800A531C 000A231C  40 81 00 0C */	ble lbl_800A5328
/* 800A5320 000A2320  38 00 00 00 */	li r0, 0
/* 800A5324 000A2324  B0 1D 00 58 */	sth r0, 0x58(r29)
lbl_800A5328:
/* 800A5328 000A2328  A8 1D 00 58 */	lha r0, 0x58(r29)
/* 800A532C 000A232C  2C 00 00 0F */	cmpwi r0, 0xf
/* 800A5330 000A2330  40 82 00 14 */	bne lbl_800A5344
/* 800A5334 000A2334  38 9D 00 8C */	addi r4, r29, 0x8c
/* 800A5338 000A2338  38 60 00 E1 */	li r3, 0xe1
/* 800A533C 000A233C  48 03 01 11 */	bl psndSFXOn_3D
/* 800A5340 000A2340  90 7D 02 78 */	stw r3, 0x278(r29)
lbl_800A5344:
/* 800A5344 000A2344  A8 1D 00 58 */	lha r0, 0x58(r29)
/* 800A5348 000A2348  2C 00 00 87 */	cmpwi r0, 0x87
/* 800A534C 000A234C  40 82 00 14 */	bne lbl_800A5360
/* 800A5350 000A2350  38 9D 00 8C */	addi r4, r29, 0x8c
/* 800A5354 000A2354  38 60 00 E2 */	li r3, 0xe2
/* 800A5358 000A2358  48 03 00 F5 */	bl psndSFXOn_3D
/* 800A535C 000A235C  90 7D 02 78 */	stw r3, 0x278(r29)
lbl_800A5360:
/* 800A5360 000A2360  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A5364 000A2364  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800A5368 000A2368  41 82 00 20 */	beq lbl_800A5388
/* 800A536C 000A236C  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 800A5370 000A2370  C0 02 9B 78 */	lfs f0, lbl_8041AEF8-_SDA2_BASE_(r2)
/* 800A5374 000A2374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A5378 000A2378  40 81 03 70 */	ble lbl_800A56E8
/* 800A537C 000A237C  38 60 00 01 */	li r3, 1
/* 800A5380 000A2380  4B FE DA 95 */	bl marioChgMot
/* 800A5384 000A2384  48 00 03 64 */	b lbl_800A56E8
lbl_800A5388:
/* 800A5388 000A2388  2C 1E 00 00 */	cmpwi r30, 0
/* 800A538C 000A238C  40 82 00 10 */	bne lbl_800A539C
/* 800A5390 000A2390  4B FE BB 15 */	bl marioChkItemMotion
/* 800A5394 000A2394  2C 03 00 00 */	cmpwi r3, 0
/* 800A5398 000A2398  40 82 03 50 */	bne lbl_800A56E8
lbl_800A539C:
/* 800A539C 000A239C  A0 1F 02 46 */	lhz r0, 0x246(r31)
/* 800A53A0 000A23A0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800A53A4 000A23A4  40 82 03 44 */	bne lbl_800A56E8
/* 800A53A8 000A23A8  4B FF F9 D9 */	bl marioSlitAbilityChk
/* 800A53AC 000A23AC  2C 03 00 00 */	cmpwi r3, 0
/* 800A53B0 000A23B0  41 82 00 1C */	beq lbl_800A53CC
/* 800A53B4 000A23B4  4B FF F9 19 */	bl marioSlitButton
/* 800A53B8 000A23B8  2C 03 00 01 */	cmpwi r3, 1
/* 800A53BC 000A23BC  40 82 00 10 */	bne lbl_800A53CC
/* 800A53C0 000A23C0  38 60 00 15 */	li r3, 0x15
/* 800A53C4 000A23C4  4B FE DA 51 */	bl marioChgMot
/* 800A53C8 000A23C8  48 00 03 20 */	b lbl_800A56E8
lbl_800A53CC:
/* 800A53CC 000A23CC  80 7F 02 B0 */	lwz r3, 0x2b0(r31)
/* 800A53D0 000A23D0  38 03 00 01 */	addi r0, r3, 1
/* 800A53D4 000A23D4  2C 00 00 0A */	cmpwi r0, 0xa
/* 800A53D8 000A23D8  90 1F 02 B0 */	stw r0, 0x2b0(r31)
/* 800A53DC 000A23DC  41 80 00 24 */	blt lbl_800A5400
/* 800A53E0 000A23E0  38 00 00 0A */	li r0, 0xa
/* 800A53E4 000A23E4  90 1F 02 B0 */	stw r0, 0x2b0(r31)
/* 800A53E8 000A23E8  4B FF 3F 89 */	bl marioChkJabara
/* 800A53EC 000A23EC  2C 03 00 00 */	cmpwi r3, 0
/* 800A53F0 000A23F0  41 82 00 10 */	beq lbl_800A5400
/* 800A53F4 000A23F4  38 60 00 14 */	li r3, 0x14
/* 800A53F8 000A23F8  4B FE DA 1D */	bl marioChgMot
/* 800A53FC 000A23FC  48 00 02 EC */	b lbl_800A56E8
lbl_800A5400:
/* 800A5400 000A2400  4B FE BE 61 */	bl marioChkJump
/* 800A5404 000A2404  4B FE BC 6D */	bl marioChkTransform
/* 800A5408 000A2408  A0 1F 02 46 */	lhz r0, 0x246(r31)
/* 800A540C 000A240C  38 80 00 00 */	li r4, 0
/* 800A5410 000A2410  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800A5414 000A2414  41 82 00 14 */	beq lbl_800A5428
/* 800A5418 000A2418  80 7F 02 B8 */	lwz r3, 0x2b8(r31)
/* 800A541C 000A241C  38 03 00 01 */	addi r0, r3, 1
/* 800A5420 000A2420  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 800A5424 000A2424  48 00 00 0C */	b lbl_800A5430
lbl_800A5428:
/* 800A5428 000A2428  38 00 00 00 */	li r0, 0
/* 800A542C 000A242C  90 1F 02 B8 */	stw r0, 0x2b8(r31)
lbl_800A5430:
/* 800A5430 000A2430  A0 1F 02 46 */	lhz r0, 0x246(r31)
/* 800A5434 000A2434  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800A5438 000A2438  41 82 00 1C */	beq lbl_800A5454
/* 800A543C 000A243C  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 800A5440 000A2440  2C 00 00 0A */	cmpwi r0, 0xa
/* 800A5444 000A2444  40 80 00 0C */	bge lbl_800A5450
/* 800A5448 000A2448  38 80 00 00 */	li r4, 0
/* 800A544C 000A244C  48 00 00 08 */	b lbl_800A5454
lbl_800A5450:
/* 800A5450 000A2450  38 80 00 01 */	li r4, 1
lbl_800A5454:
/* 800A5454 000A2454  88 1F 00 40 */	lbz r0, 0x40(r31)
/* 800A5458 000A2458  7C 00 07 75 */	extsb. r0, r0
/* 800A545C 000A245C  40 82 00 70 */	bne lbl_800A54CC
/* 800A5460 000A2460  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 800A5464 000A2464  C0 02 9B 78 */	lfs f0, lbl_8041AEF8-_SDA2_BASE_(r2)
/* 800A5468 000A2468  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A546C 000A246C  40 81 00 60 */	ble lbl_800A54CC
/* 800A5470 000A2470  2C 04 00 00 */	cmpwi r4, 0
/* 800A5474 000A2474  40 82 00 58 */	bne lbl_800A54CC
/* 800A5478 000A2478  88 7F 02 4E */	lbz r3, 0x24e(r31)
/* 800A547C 000A247C  88 1F 02 4F */	lbz r0, 0x24f(r31)
/* 800A5480 000A2480  7C 63 07 74 */	extsb r3, r3
/* 800A5484 000A2484  7C 00 07 74 */	extsb r0, r0
/* 800A5488 000A2488  7C 63 19 D6 */	mullw r3, r3, r3
/* 800A548C 000A248C  7C 00 01 D6 */	mullw r0, r0, r0
/* 800A5490 000A2490  7C 03 02 14 */	add r0, r3, r0
/* 800A5494 000A2494  2C 00 0B D1 */	cmpwi r0, 0xbd1
/* 800A5498 000A2498  40 81 00 2C */	ble lbl_800A54C4
/* 800A549C 000A249C  38 60 01 43 */	li r3, 0x143
/* 800A54A0 000A24A0  48 02 9D 15 */	bl pouchEquipCheckBadge
/* 800A54A4 000A24A4  2C 03 00 00 */	cmpwi r3, 0
/* 800A54A8 000A24A8  40 82 00 10 */	bne lbl_800A54B8
/* 800A54AC 000A24AC  38 60 00 02 */	li r3, 2
/* 800A54B0 000A24B0  4B FE D9 65 */	bl marioChgMot
/* 800A54B4 000A24B4  48 00 00 18 */	b lbl_800A54CC
lbl_800A54B8:
/* 800A54B8 000A24B8  38 60 00 01 */	li r3, 1
/* 800A54BC 000A24BC  4B FE D9 59 */	bl marioChgMot
/* 800A54C0 000A24C0  48 00 00 0C */	b lbl_800A54CC
lbl_800A54C4:
/* 800A54C4 000A24C4  38 60 00 01 */	li r3, 1
/* 800A54C8 000A24C8  4B FE D9 4D */	bl marioChgMot
lbl_800A54CC:
/* 800A54CC 000A24CC  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A54D0 000A24D0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800A54D4 000A24D4  40 82 00 10 */	bne lbl_800A54E4
/* 800A54D8 000A24D8  80 1F 00 04 */	lwz r0, 4(r31)
/* 800A54DC 000A24DC  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800A54E0 000A24E0  41 82 00 50 */	beq lbl_800A5530
lbl_800A54E4:
/* 800A54E4 000A24E4  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 800A54E8 000A24E8  2C 00 00 00 */	cmpwi r0, 0
/* 800A54EC 000A24EC  40 81 01 FC */	ble lbl_800A56E8
/* 800A54F0 000A24F0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800A54F4 000A24F4  38 82 9B 70 */	addi r4, r2, lbl_8041AEF0-_SDA2_BASE_
/* 800A54F8 000A24F8  48 1C 1F 55 */	bl strcmp
/* 800A54FC 000A24FC  2C 03 00 00 */	cmpwi r3, 0
/* 800A5500 000A2500  41 82 01 E8 */	beq lbl_800A56E8
/* 800A5504 000A2504  3C 80 80 2C */	lis r4, lbl_802C5F28@ha
/* 800A5508 000A2508  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800A550C 000A250C  38 84 5F 28 */	addi r4, r4, lbl_802C5F28@l
/* 800A5510 000A2510  48 1C 1F 3D */	bl strcmp
/* 800A5514 000A2514  2C 03 00 00 */	cmpwi r3, 0
/* 800A5518 000A2518  41 82 01 D0 */	beq lbl_800A56E8
/* 800A551C 000A251C  38 62 9B 70 */	addi r3, r2, lbl_8041AEF0-_SDA2_BASE_
/* 800A5520 000A2520  4B FB 2A 25 */	bl marioChgPose
/* 800A5524 000A2524  38 00 00 00 */	li r0, 0
/* 800A5528 000A2528  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800A552C 000A252C  48 00 01 BC */	b lbl_800A56E8
lbl_800A5530:
/* 800A5530 000A2530  48 02 A6 B5 */	bl pouchGetHP
/* 800A5534 000A2534  38 00 00 05 */	li r0, 5
/* 800A5538 000A2538  54 64 0F FE */	srwi r4, r3, 0x1f
/* 800A553C 000A253C  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 800A5540 000A2540  7C 03 00 10 */	subfc r0, r3, r0
/* 800A5544 000A2544  7C 05 21 15 */	adde. r0, r5, r4
/* 800A5548 000A2548  40 82 01 A0 */	bne lbl_800A56E8
/* 800A554C 000A254C  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 800A5550 000A2550  2C 00 00 02 */	cmpwi r0, 2
/* 800A5554 000A2554  41 82 00 88 */	beq lbl_800A55DC
/* 800A5558 000A2558  40 80 00 14 */	bge lbl_800A556C
/* 800A555C 000A255C  2C 00 00 00 */	cmpwi r0, 0
/* 800A5560 000A2560  41 82 00 1C */	beq lbl_800A557C
/* 800A5564 000A2564  40 80 00 44 */	bge lbl_800A55A8
/* 800A5568 000A2568  48 00 01 80 */	b lbl_800A56E8
lbl_800A556C:
/* 800A556C 000A256C  2C 00 00 04 */	cmpwi r0, 4
/* 800A5570 000A2570  41 82 00 E4 */	beq lbl_800A5654
/* 800A5574 000A2574  40 80 01 74 */	bge lbl_800A56E8
/* 800A5578 000A2578  48 00 00 90 */	b lbl_800A5608
lbl_800A557C:
/* 800A557C 000A257C  3C 60 00 01 */	lis r3, 0x0000C350@ha
/* 800A5580 000A2580  38 63 C3 50 */	addi r3, r3, 0x0000C350@l
/* 800A5584 000A2584  4B F6 05 75 */	bl sysMsec2Frame
/* 800A5588 000A2588  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 800A558C 000A258C  38 04 00 01 */	addi r0, r4, 1
/* 800A5590 000A2590  7C 00 18 00 */	cmpw r0, r3
/* 800A5594 000A2594  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800A5598 000A2598  41 80 01 50 */	blt lbl_800A56E8
/* 800A559C 000A259C  38 00 00 01 */	li r0, 1
/* 800A55A0 000A25A0  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800A55A4 000A25A4  48 00 01 44 */	b lbl_800A56E8
lbl_800A55A8:
/* 800A55A8 000A25A8  38 62 9B 9C */	addi r3, r2, lbl_8041AF1C-_SDA2_BASE_
/* 800A55AC 000A25AC  4B FB 2D 39 */	bl marioChgEvtPose
/* 800A55B0 000A25B0  4B FE F8 A1 */	bl marioAdjustMoveDir
/* 800A55B4 000A25B4  4B FB 7C 61 */	bl marioGetPtr
/* 800A55B8 000A25B8  7C 7E 1B 78 */	mr r30, r3
/* 800A55BC 000A25BC  38 60 00 EF */	li r3, 0xef
/* 800A55C0 000A25C0  38 9E 00 8C */	addi r4, r30, 0x8c
/* 800A55C4 000A25C4  48 02 FE 89 */	bl psndSFXOn_3D
/* 800A55C8 000A25C8  90 7E 02 78 */	stw r3, 0x278(r30)
/* 800A55CC 000A25CC  38 60 00 32 */	li r3, 0x32
/* 800A55D0 000A25D0  38 00 00 02 */	li r0, 2
/* 800A55D4 000A25D4  90 7F 00 48 */	stw r3, 0x48(r31)
/* 800A55D8 000A25D8  90 1F 00 44 */	stw r0, 0x44(r31)
lbl_800A55DC:
/* 800A55DC 000A25DC  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800A55E0 000A25E0  34 03 FF FF */	addic. r0, r3, -1
/* 800A55E4 000A25E4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800A55E8 000A25E8  40 80 01 00 */	bge lbl_800A56E8
/* 800A55EC 000A25EC  38 62 9B 70 */	addi r3, r2, lbl_8041AEF0-_SDA2_BASE_
/* 800A55F0 000A25F0  4B FB 29 55 */	bl marioChgPose
/* 800A55F4 000A25F4  38 60 00 64 */	li r3, 0x64
/* 800A55F8 000A25F8  38 00 00 03 */	li r0, 3
/* 800A55FC 000A25FC  90 7F 00 48 */	stw r3, 0x48(r31)
/* 800A5600 000A2600  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800A5604 000A2604  48 00 00 E4 */	b lbl_800A56E8
lbl_800A5608:
/* 800A5608 000A2608  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800A560C 000A260C  34 03 FF FF */	addic. r0, r3, -1
/* 800A5610 000A2610  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800A5614 000A2614  40 80 00 D4 */	bge lbl_800A56E8
/* 800A5618 000A2618  3C 60 80 2C */	lis r3, lbl_802C5F30@ha
/* 800A561C 000A261C  38 63 5F 30 */	addi r3, r3, lbl_802C5F30@l
/* 800A5620 000A2620  4B FB 2C C5 */	bl marioChgEvtPose
/* 800A5624 000A2624  38 60 00 00 */	li r3, 0
/* 800A5628 000A2628  38 00 00 04 */	li r0, 4
/* 800A562C 000A262C  90 7F 00 48 */	stw r3, 0x48(r31)
/* 800A5630 000A2630  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800A5634 000A2634  90 7F 02 B4 */	stw r3, 0x2b4(r31)
/* 800A5638 000A2638  4B FB 7B DD */	bl marioGetPtr
/* 800A563C 000A263C  7C 7E 1B 78 */	mr r30, r3
/* 800A5640 000A2640  38 60 00 E4 */	li r3, 0xe4
/* 800A5644 000A2644  38 9E 00 8C */	addi r4, r30, 0x8c
/* 800A5648 000A2648  48 02 FE 05 */	bl psndSFXOn_3D
/* 800A564C 000A264C  90 7E 02 78 */	stw r3, 0x278(r30)
/* 800A5650 000A2650  48 00 00 98 */	b lbl_800A56E8
lbl_800A5654:
/* 800A5654 000A2654  38 60 27 10 */	li r3, 0x2710
/* 800A5658 000A2658  4B F6 04 A1 */	bl sysMsec2Frame
/* 800A565C 000A265C  80 9F 02 B4 */	lwz r4, 0x2b4(r31)
/* 800A5660 000A2660  38 04 00 01 */	addi r0, r4, 1
/* 800A5664 000A2664  7C 00 18 00 */	cmpw r0, r3
/* 800A5668 000A2668  90 1F 02 B4 */	stw r0, 0x2b4(r31)
/* 800A566C 000A266C  41 80 00 10 */	blt lbl_800A567C
/* 800A5670 000A2670  38 60 27 10 */	li r3, 0x2710
/* 800A5674 000A2674  4B F6 04 85 */	bl sysMsec2Frame
/* 800A5678 000A2678  90 7F 02 B4 */	stw r3, 0x2b4(r31)
lbl_800A567C:
/* 800A567C 000A267C  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800A5680 000A2680  38 03 00 01 */	addi r0, r3, 1
/* 800A5684 000A2684  2C 00 00 8C */	cmpwi r0, 0x8c
/* 800A5688 000A2688  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800A568C 000A268C  41 80 00 24 */	blt lbl_800A56B0
/* 800A5690 000A2690  38 00 00 00 */	li r0, 0
/* 800A5694 000A2694  90 1F 00 48 */	stw r0, 0x48(r31)
/* 800A5698 000A2698  4B FB 7B 7D */	bl marioGetPtr
/* 800A569C 000A269C  7C 7E 1B 78 */	mr r30, r3
/* 800A56A0 000A26A0  38 60 00 E4 */	li r3, 0xe4
/* 800A56A4 000A26A4  38 9E 00 8C */	addi r4, r30, 0x8c
/* 800A56A8 000A26A8  48 02 FD A5 */	bl psndSFXOn_3D
/* 800A56AC 000A26AC  90 7E 02 78 */	stw r3, 0x278(r30)
lbl_800A56B0:
/* 800A56B0 000A26B0  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A56B4 000A26B4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800A56B8 000A26B8  40 82 00 20 */	bne lbl_800A56D8
/* 800A56BC 000A26BC  48 02 A5 29 */	bl pouchGetHP
/* 800A56C0 000A26C0  38 00 00 05 */	li r0, 5
/* 800A56C4 000A26C4  54 64 0F FE */	srwi r4, r3, 0x1f
/* 800A56C8 000A26C8  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 800A56CC 000A26CC  7C 03 00 10 */	subfc r0, r3, r0
/* 800A56D0 000A26D0  7C 05 21 15 */	adde. r0, r5, r4
/* 800A56D4 000A26D4  41 82 00 14 */	beq lbl_800A56E8
lbl_800A56D8:
/* 800A56D8 000A26D8  38 62 9B 70 */	addi r3, r2, lbl_8041AEF0-_SDA2_BASE_
/* 800A56DC 000A26DC  4B FB 28 69 */	bl marioChgPose
/* 800A56E0 000A26E0  38 00 00 00 */	li r0, 0
/* 800A56E4 000A26E4  90 1F 00 44 */	stw r0, 0x44(r31)
lbl_800A56E8:
/* 800A56E8 000A26E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A56EC 000A26EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A56F0 000A26F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A56F4 000A26F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A56F8 000A26F8  7C 08 03 A6 */	mtlr r0
/* 800A56FC 000A26FC  38 21 00 20 */	addi r1, r1, 0x20
/* 800A5700 000A2700  4E 80 00 20 */	blr 

.global marioChkDeepSleep
marioChkDeepSleep:
/* 800A5704 000A2704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A5708 000A2708  7C 08 02 A6 */	mflr r0
/* 800A570C 000A270C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A5710 000A2710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A5714 000A2714  93 C1 00 08 */	stw r30, 8(r1)
/* 800A5718 000A2718  3B C0 00 00 */	li r30, 0
/* 800A571C 000A271C  4B FB 7A F9 */	bl marioGetPtr
/* 800A5720 000A2720  7C 7F 1B 78 */	mr r31, r3
/* 800A5724 000A2724  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 800A5728 000A2728  28 00 00 00 */	cmplwi r0, 0
/* 800A572C 000A272C  40 82 00 1C */	bne lbl_800A5748
/* 800A5730 000A2730  38 60 27 10 */	li r3, 0x2710
/* 800A5734 000A2734  4B F6 03 C5 */	bl sysMsec2Frame
/* 800A5738 000A2738  80 1F 02 B4 */	lwz r0, 0x2b4(r31)
/* 800A573C 000A273C  7C 00 18 00 */	cmpw r0, r3
/* 800A5740 000A2740  41 80 00 08 */	blt lbl_800A5748
/* 800A5744 000A2744  3B C0 00 01 */	li r30, 1
lbl_800A5748:
/* 800A5748 000A2748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A574C 000A274C  7F C3 F3 78 */	mr r3, r30
/* 800A5750 000A2750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A5754 000A2754  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A5758 000A2758  7C 08 03 A6 */	mtlr r0
/* 800A575C 000A275C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A5760 000A2760  4E 80 00 20 */	blr 

.global marioVoiceGlareOff
marioVoiceGlareOff:
/* 800A5764 000A2764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A5768 000A2768  7C 08 02 A6 */	mflr r0
/* 800A576C 000A276C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A5770 000A2770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A5774 000A2774  4B FB 7A A1 */	bl marioGetPtr
/* 800A5778 000A2778  7C 7F 1B 78 */	mr r31, r3
/* 800A577C 000A277C  80 63 02 7C */	lwz r3, 0x27c(r3)
/* 800A5780 000A2780  3C 03 00 01 */	addis r0, r3, 1
/* 800A5784 000A2784  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A5788 000A2788  41 82 00 10 */	beq lbl_800A5798
/* 800A578C 000A278C  48 02 FA 71 */	bl psndSFXOff
/* 800A5790 000A2790  38 00 FF FF */	li r0, -1
/* 800A5794 000A2794  90 1F 02 7C */	stw r0, 0x27c(r31)
lbl_800A5798:
/* 800A5798 000A2798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A579C 000A279C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A57A0 000A27A0  7C 08 03 A6 */	mtlr r0
/* 800A57A4 000A27A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800A57A8 000A27A8  4E 80 00 20 */	blr 

.global marioVoiceGlareOn
marioVoiceGlareOn:
/* 800A57AC 000A27AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A57B0 000A27B0  7C 08 02 A6 */	mflr r0
/* 800A57B4 000A27B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A57B8 000A27B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A57BC 000A27BC  4B FB 7A 59 */	bl marioGetPtr
/* 800A57C0 000A27C0  7C 7F 1B 78 */	mr r31, r3
/* 800A57C4 000A27C4  80 63 02 7C */	lwz r3, 0x27c(r3)
/* 800A57C8 000A27C8  3C 03 00 01 */	addis r0, r3, 1
/* 800A57CC 000A27CC  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A57D0 000A27D0  40 82 00 14 */	bne lbl_800A57E4
/* 800A57D4 000A27D4  38 9F 00 8C */	addi r4, r31, 0x8c
/* 800A57D8 000A27D8  38 60 00 DC */	li r3, 0xdc
/* 800A57DC 000A27DC  48 02 FC 71 */	bl psndSFXOn_3D
/* 800A57E0 000A27E0  90 7F 02 7C */	stw r3, 0x27c(r31)
lbl_800A57E4:
/* 800A57E4 000A27E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A57E8 000A27E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A57EC 000A27EC  7C 08 03 A6 */	mtlr r0
/* 800A57F0 000A27F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800A57F4 000A27F4  4E 80 00 20 */	blr 