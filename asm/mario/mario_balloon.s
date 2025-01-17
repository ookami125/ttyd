.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global chkBalloon
chkBalloon:
/* 80129A50 00126A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80129A54 00126A54  7C 08 02 A6 */	mflr r0
/* 80129A58 00126A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80129A5C 00126A5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80129A60 00126A60  3B E0 00 00 */	li r31, 0
/* 80129A64 00126A64  93 C1 00 08 */	stw r30, 8(r1)
/* 80129A68 00126A68  7C 7E 1B 79 */	or. r30, r3, r3
/* 80129A6C 00126A6C  41 82 00 8C */	beq .L_80129AF8
/* 80129A70 00126A70  4B EE A5 E9 */	bl hitGetAttr
/* 80129A74 00126A74  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80129A78 00126A78  41 82 00 20 */	beq .L_80129A98
/* 80129A7C 00126A7C  7F C3 F3 78 */	mr r3, r30
/* 80129A80 00126A80  4B F3 4E 7D */	bl mobjHitObjPtrToPtr
/* 80129A84 00126A84  4B F3 4A 59 */	bl mobjGetHint
/* 80129A88 00126A88  2C 03 00 01 */	cmpwi r3, 1
/* 80129A8C 00126A8C  40 82 00 58 */	bne .L_80129AE4
/* 80129A90 00126A90  3B E0 00 01 */	li r31, 1
/* 80129A94 00126A94  48 00 00 50 */	b .L_80129AE4
.L_80129A98:
/* 80129A98 00126A98  7F C3 F3 78 */	mr r3, r30
/* 80129A9C 00126A9C  4B F4 38 9D */	bl caseCheckHitObj
/* 80129AA0 00126AA0  28 03 00 00 */	cmplwi r3, 0
/* 80129AA4 00126AA4  41 82 00 3C */	beq .L_80129AE0
/* 80129AA8 00126AA8  A0 03 00 00 */	lhz r0, 0(r3)
/* 80129AAC 00126AAC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80129AB0 00126AB0  41 82 00 34 */	beq .L_80129AE4
/* 80129AB4 00126AB4  80 03 00 04 */	lwz r0, 4(r3)
/* 80129AB8 00126AB8  2C 00 00 09 */	cmpwi r0, 9
/* 80129ABC 00126ABC  41 82 00 1C */	beq .L_80129AD8
/* 80129AC0 00126AC0  2C 00 00 04 */	cmpwi r0, 4
/* 80129AC4 00126AC4  41 82 00 14 */	beq .L_80129AD8
/* 80129AC8 00126AC8  2C 00 00 0C */	cmpwi r0, 0xc
/* 80129ACC 00126ACC  41 82 00 0C */	beq .L_80129AD8
/* 80129AD0 00126AD0  2C 00 00 05 */	cmpwi r0, 5
/* 80129AD4 00126AD4  40 82 00 10 */	bne .L_80129AE4
.L_80129AD8:
/* 80129AD8 00126AD8  3B E0 00 01 */	li r31, 1
/* 80129ADC 00126ADC  48 00 00 08 */	b .L_80129AE4
.L_80129AE0:
/* 80129AE0 00126AE0  3B E0 00 00 */	li r31, 0
.L_80129AE4:
/* 80129AE4 00126AE4  7F C3 F3 78 */	mr r3, r30
/* 80129AE8 00126AE8  4B F6 54 0D */	bl marioChkBero
/* 80129AEC 00126AEC  2C 03 00 00 */	cmpwi r3, 0
/* 80129AF0 00126AF0  41 82 00 08 */	beq .L_80129AF8
/* 80129AF4 00126AF4  3B E0 00 00 */	li r31, 0
.L_80129AF8:
/* 80129AF8 00126AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80129AFC 00126AFC  7F E3 FB 78 */	mr r3, r31
/* 80129B00 00126B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80129B04 00126B04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80129B08 00126B08  7C 08 03 A6 */	mtlr r0
/* 80129B0C 00126B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80129B10 00126B10  4E 80 00 20 */	blr 

.global marioBalloonMain
marioBalloonMain:
/* 80129B14 00126B14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80129B18 00126B18  7C 08 02 A6 */	mflr r0
/* 80129B1C 00126B1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80129B20 00126B20  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80129B24 00126B24  4B F3 36 F1 */	bl marioGetPtr
/* 80129B28 00126B28  80 03 00 04 */	lwz r0, 4(r3)
/* 80129B2C 00126B2C  7C 7F 1B 78 */	mr r31, r3
/* 80129B30 00126B30  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 80129B34 00126B34  40 82 04 74 */	bne .L_80129FA8
/* 80129B38 00126B38  3B 80 00 00 */	li r28, 0
/* 80129B3C 00126B3C  4B F3 1A B1 */	bl marioChkKey
/* 80129B40 00126B40  7C 60 00 34 */	cntlzw r0, r3
/* 80129B44 00126B44  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80129B48 00126B48  41 82 00 38 */	beq .L_80129B80
/* 80129B4C 00126B4C  4B F3 36 C9 */	bl marioGetPtr
/* 80129B50 00126B50  7C 7B 1B 78 */	mr r27, r3
/* 80129B54 00126B54  80 63 00 04 */	lwz r3, 4(r3)
/* 80129B58 00126B58  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80129B5C 00126B5C  41 82 04 4C */	beq .L_80129FA8
/* 80129B60 00126B60  54 60 01 CA */	rlwinm r0, r3, 0, 7, 5
/* 80129B64 00126B64  90 1B 00 04 */	stw r0, 4(r27)
/* 80129B68 00126B68  80 7B 02 60 */	lwz r3, 0x260(r27)
/* 80129B6C 00126B6C  4B F3 40 19 */	bl effDelete
/* 80129B70 00126B70  38 00 00 00 */	li r0, 0
/* 80129B74 00126B74  90 1B 02 60 */	stw r0, 0x260(r27)
/* 80129B78 00126B78  90 1B 02 64 */	stw r0, 0x264(r27)
/* 80129B7C 00126B7C  48 00 04 2C */	b .L_80129FA8
.L_80129B80:
/* 80129B80 00126B80  83 DF 01 DC */	lwz r30, 0x1dc(r31)
/* 80129B84 00126B84  3B 60 00 00 */	li r27, 0
/* 80129B88 00126B88  28 1E 00 00 */	cmplwi r30, 0
/* 80129B8C 00126B8C  41 82 00 6C */	beq .L_80129BF8
/* 80129B90 00126B90  7F C3 F3 78 */	mr r3, r30
/* 80129B94 00126B94  4B EE A4 C5 */	bl hitGetAttr
/* 80129B98 00126B98  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 80129B9C 00126B9C  41 82 00 0C */	beq .L_80129BA8
/* 80129BA0 00126BA0  3B 60 00 00 */	li r27, 0
/* 80129BA4 00126BA4  48 00 00 54 */	b .L_80129BF8
.L_80129BA8:
/* 80129BA8 00126BA8  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80129BAC 00126BAC  41 82 00 20 */	beq .L_80129BCC
/* 80129BB0 00126BB0  7F C3 F3 78 */	mr r3, r30
/* 80129BB4 00126BB4  4B F3 4D 49 */	bl mobjHitObjPtrToPtr
/* 80129BB8 00126BB8  4B F3 49 25 */	bl mobjGetHint
/* 80129BBC 00126BBC  2C 03 00 01 */	cmpwi r3, 1
/* 80129BC0 00126BC0  40 82 00 38 */	bne .L_80129BF8
/* 80129BC4 00126BC4  3B 60 00 01 */	li r27, 1
/* 80129BC8 00126BC8  48 00 00 30 */	b .L_80129BF8
.L_80129BCC:
/* 80129BCC 00126BCC  7F C3 F3 78 */	mr r3, r30
/* 80129BD0 00126BD0  4B F4 37 69 */	bl caseCheckHitObj
/* 80129BD4 00126BD4  28 03 00 00 */	cmplwi r3, 0
/* 80129BD8 00126BD8  41 82 00 20 */	beq .L_80129BF8
/* 80129BDC 00126BDC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80129BE0 00126BE0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80129BE4 00126BE4  41 82 00 14 */	beq .L_80129BF8
/* 80129BE8 00126BE8  80 03 00 04 */	lwz r0, 4(r3)
/* 80129BEC 00126BEC  2C 00 00 09 */	cmpwi r0, 9
/* 80129BF0 00126BF0  40 82 00 08 */	bne .L_80129BF8
/* 80129BF4 00126BF4  3B 60 00 01 */	li r27, 1
.L_80129BF8:
/* 80129BF8 00126BF8  2C 1B 00 00 */	cmpwi r27, 0
/* 80129BFC 00126BFC  41 82 00 0C */	beq .L_80129C08
/* 80129C00 00126C00  3B A0 00 00 */	li r29, 0
/* 80129C04 00126C04  3B 80 00 01 */	li r28, 1
.L_80129C08:
/* 80129C08 00126C08  83 DF 01 E0 */	lwz r30, 0x1e0(r31)
/* 80129C0C 00126C0C  3B 60 00 00 */	li r27, 0
/* 80129C10 00126C10  28 1E 00 00 */	cmplwi r30, 0
/* 80129C14 00126C14  41 82 00 80 */	beq .L_80129C94
/* 80129C18 00126C18  7F C3 F3 78 */	mr r3, r30
/* 80129C1C 00126C1C  4B EE A4 3D */	bl hitGetAttr
/* 80129C20 00126C20  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80129C24 00126C24  41 82 00 20 */	beq .L_80129C44
/* 80129C28 00126C28  7F C3 F3 78 */	mr r3, r30
/* 80129C2C 00126C2C  4B F3 4C D1 */	bl mobjHitObjPtrToPtr
/* 80129C30 00126C30  4B F3 48 AD */	bl mobjGetHint
/* 80129C34 00126C34  2C 03 00 01 */	cmpwi r3, 1
/* 80129C38 00126C38  40 82 00 48 */	bne .L_80129C80
/* 80129C3C 00126C3C  3B 60 00 01 */	li r27, 1
/* 80129C40 00126C40  48 00 00 40 */	b .L_80129C80
.L_80129C44:
/* 80129C44 00126C44  7F C3 F3 78 */	mr r3, r30
/* 80129C48 00126C48  4B F4 36 F1 */	bl caseCheckHitObj
/* 80129C4C 00126C4C  28 03 00 00 */	cmplwi r3, 0
/* 80129C50 00126C50  41 82 00 2C */	beq .L_80129C7C
/* 80129C54 00126C54  A0 03 00 00 */	lhz r0, 0(r3)
/* 80129C58 00126C58  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80129C5C 00126C5C  41 82 00 24 */	beq .L_80129C80
/* 80129C60 00126C60  80 03 00 04 */	lwz r0, 4(r3)
/* 80129C64 00126C64  2C 00 00 09 */	cmpwi r0, 9
/* 80129C68 00126C68  41 82 00 0C */	beq .L_80129C74
/* 80129C6C 00126C6C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80129C70 00126C70  40 82 00 10 */	bne .L_80129C80
.L_80129C74:
/* 80129C74 00126C74  3B 60 00 01 */	li r27, 1
/* 80129C78 00126C78  48 00 00 08 */	b .L_80129C80
.L_80129C7C:
/* 80129C7C 00126C7C  3B 60 00 00 */	li r27, 0
.L_80129C80:
/* 80129C80 00126C80  7F C3 F3 78 */	mr r3, r30
/* 80129C84 00126C84  4B F6 52 71 */	bl marioChkBero
/* 80129C88 00126C88  2C 03 00 00 */	cmpwi r3, 0
/* 80129C8C 00126C8C  41 82 00 08 */	beq .L_80129C94
/* 80129C90 00126C90  3B 60 00 00 */	li r27, 0
.L_80129C94:
/* 80129C94 00126C94  2C 1B 00 00 */	cmpwi r27, 0
/* 80129C98 00126C98  41 82 00 0C */	beq .L_80129CA4
/* 80129C9C 00126C9C  3B A0 00 00 */	li r29, 0
/* 80129CA0 00126CA0  3B 80 00 01 */	li r28, 1
.L_80129CA4:
/* 80129CA4 00126CA4  83 DF 01 E4 */	lwz r30, 0x1e4(r31)
/* 80129CA8 00126CA8  3B 60 00 00 */	li r27, 0
/* 80129CAC 00126CAC  28 1E 00 00 */	cmplwi r30, 0
/* 80129CB0 00126CB0  41 82 00 90 */	beq .L_80129D40
/* 80129CB4 00126CB4  7F C3 F3 78 */	mr r3, r30
/* 80129CB8 00126CB8  4B EE A3 A1 */	bl hitGetAttr
/* 80129CBC 00126CBC  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 80129CC0 00126CC0  41 82 00 0C */	beq .L_80129CCC
/* 80129CC4 00126CC4  3B 60 00 00 */	li r27, 0
/* 80129CC8 00126CC8  48 00 00 78 */	b .L_80129D40
.L_80129CCC:
/* 80129CCC 00126CCC  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80129CD0 00126CD0  41 82 00 20 */	beq .L_80129CF0
/* 80129CD4 00126CD4  7F C3 F3 78 */	mr r3, r30
/* 80129CD8 00126CD8  4B F3 4C 25 */	bl mobjHitObjPtrToPtr
/* 80129CDC 00126CDC  4B F3 48 01 */	bl mobjGetHint
/* 80129CE0 00126CE0  2C 03 00 01 */	cmpwi r3, 1
/* 80129CE4 00126CE4  40 82 00 48 */	bne .L_80129D2C
/* 80129CE8 00126CE8  3B 60 00 01 */	li r27, 1
/* 80129CEC 00126CEC  48 00 00 40 */	b .L_80129D2C
.L_80129CF0:
/* 80129CF0 00126CF0  7F C3 F3 78 */	mr r3, r30
/* 80129CF4 00126CF4  4B F4 36 45 */	bl caseCheckHitObj
/* 80129CF8 00126CF8  28 03 00 00 */	cmplwi r3, 0
/* 80129CFC 00126CFC  41 82 00 2C */	beq .L_80129D28
/* 80129D00 00126D00  A0 03 00 00 */	lhz r0, 0(r3)
/* 80129D04 00126D04  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80129D08 00126D08  41 82 00 24 */	beq .L_80129D2C
/* 80129D0C 00126D0C  80 03 00 04 */	lwz r0, 4(r3)
/* 80129D10 00126D10  2C 00 00 0C */	cmpwi r0, 0xc
/* 80129D14 00126D14  41 82 00 0C */	beq .L_80129D20
/* 80129D18 00126D18  2C 00 00 05 */	cmpwi r0, 5
/* 80129D1C 00126D1C  40 82 00 10 */	bne .L_80129D2C
.L_80129D20:
/* 80129D20 00126D20  3B 60 00 01 */	li r27, 1
/* 80129D24 00126D24  48 00 00 08 */	b .L_80129D2C
.L_80129D28:
/* 80129D28 00126D28  3B 60 00 00 */	li r27, 0
.L_80129D2C:
/* 80129D2C 00126D2C  7F C3 F3 78 */	mr r3, r30
/* 80129D30 00126D30  4B F6 51 C5 */	bl marioChkBero
/* 80129D34 00126D34  2C 03 00 00 */	cmpwi r3, 0
/* 80129D38 00126D38  41 82 00 08 */	beq .L_80129D40
/* 80129D3C 00126D3C  3B 60 00 00 */	li r27, 0
.L_80129D40:
/* 80129D40 00126D40  2C 1B 00 00 */	cmpwi r27, 0
/* 80129D44 00126D44  41 82 00 0C */	beq .L_80129D50
/* 80129D48 00126D48  3B A0 00 00 */	li r29, 0
/* 80129D4C 00126D4C  3B 80 00 01 */	li r28, 1
.L_80129D50:
/* 80129D50 00126D50  83 DF 01 E0 */	lwz r30, 0x1e0(r31)
/* 80129D54 00126D54  28 1E 00 00 */	cmplwi r30, 0
/* 80129D58 00126D58  41 82 00 FC */	beq .L_80129E54
/* 80129D5C 00126D5C  3B 60 FF FF */	li r27, -1
/* 80129D60 00126D60  4B F3 34 B5 */	bl marioGetPtr
/* 80129D64 00126D64  7F C3 F3 78 */	mr r3, r30
/* 80129D68 00126D68  4B EE A2 F1 */	bl hitGetAttr
/* 80129D6C 00126D6C  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80129D70 00126D70  40 82 00 0C */	bne .L_80129D7C
/* 80129D74 00126D74  3B 60 FF FF */	li r27, -1
/* 80129D78 00126D78  48 00 00 58 */	b .L_80129DD0
.L_80129D7C:
/* 80129D7C 00126D7C  7F C3 F3 78 */	mr r3, r30
/* 80129D80 00126D80  4B F3 4B 7D */	bl mobjHitObjPtrToPtr
/* 80129D84 00126D84  3C 80 80 2F */	lis r4, lbl_802F2FD0@ha
/* 80129D88 00126D88  7C 7E 1B 78 */	mr r30, r3
/* 80129D8C 00126D8C  38 84 2F D0 */	addi r4, r4, lbl_802F2FD0@l
/* 80129D90 00126D90  38 7E 00 15 */	addi r3, r30, 0x15
/* 80129D94 00126D94  48 13 D6 B9 */	bl strcmp
/* 80129D98 00126D98  2C 03 00 00 */	cmpwi r3, 0
/* 80129D9C 00126D9C  41 82 00 1C */	beq .L_80129DB8
/* 80129DA0 00126DA0  3C 80 80 2F */	lis r4, lbl_802F2FE4@ha
/* 80129DA4 00126DA4  38 7E 00 15 */	addi r3, r30, 0x15
/* 80129DA8 00126DA8  38 84 2F E4 */	addi r4, r4, lbl_802F2FE4@l
/* 80129DAC 00126DAC  48 13 D6 A1 */	bl strcmp
/* 80129DB0 00126DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80129DB4 00126DB4  40 82 00 1C */	bne .L_80129DD0
.L_80129DB8:
/* 80129DB8 00126DB8  7F C3 F3 78 */	mr r3, r30
/* 80129DBC 00126DBC  3B 60 00 01 */	li r27, 1
/* 80129DC0 00126DC0  4B F3 46 09 */	bl mobjCheckItemboxOpen
/* 80129DC4 00126DC4  2C 03 00 01 */	cmpwi r3, 1
/* 80129DC8 00126DC8  41 82 00 08 */	beq .L_80129DD0
/* 80129DCC 00126DCC  3B 60 00 00 */	li r27, 0
.L_80129DD0:
/* 80129DD0 00126DD0  2C 1B 00 00 */	cmpwi r27, 0
/* 80129DD4 00126DD4  41 80 00 80 */	blt .L_80129E54
/* 80129DD8 00126DD8  83 9F 01 E0 */	lwz r28, 0x1e0(r31)
/* 80129DDC 00126DDC  3B 60 FF FF */	li r27, -1
/* 80129DE0 00126DE0  4B F3 34 35 */	bl marioGetPtr
/* 80129DE4 00126DE4  7F 83 E3 78 */	mr r3, r28
/* 80129DE8 00126DE8  4B EE A2 71 */	bl hitGetAttr
/* 80129DEC 00126DEC  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80129DF0 00126DF0  40 82 00 0C */	bne .L_80129DFC
/* 80129DF4 00126DF4  3B 60 FF FF */	li r27, -1
/* 80129DF8 00126DF8  48 00 00 58 */	b .L_80129E50
.L_80129DFC:
/* 80129DFC 00126DFC  7F 83 E3 78 */	mr r3, r28
/* 80129E00 00126E00  4B F3 4A FD */	bl mobjHitObjPtrToPtr
/* 80129E04 00126E04  3C 80 80 2F */	lis r4, lbl_802F2FD0@ha
/* 80129E08 00126E08  7C 7C 1B 78 */	mr r28, r3
/* 80129E0C 00126E0C  38 84 2F D0 */	addi r4, r4, lbl_802F2FD0@l
/* 80129E10 00126E10  38 7C 00 15 */	addi r3, r28, 0x15
/* 80129E14 00126E14  48 13 D6 39 */	bl strcmp
/* 80129E18 00126E18  2C 03 00 00 */	cmpwi r3, 0
/* 80129E1C 00126E1C  41 82 00 1C */	beq .L_80129E38
/* 80129E20 00126E20  3C 80 80 2F */	lis r4, lbl_802F2FE4@ha
/* 80129E24 00126E24  38 7C 00 15 */	addi r3, r28, 0x15
/* 80129E28 00126E28  38 84 2F E4 */	addi r4, r4, lbl_802F2FE4@l
/* 80129E2C 00126E2C  48 13 D6 21 */	bl strcmp
/* 80129E30 00126E30  2C 03 00 00 */	cmpwi r3, 0
/* 80129E34 00126E34  40 82 00 1C */	bne .L_80129E50
.L_80129E38:
/* 80129E38 00126E38  7F 83 E3 78 */	mr r3, r28
/* 80129E3C 00126E3C  3B 60 00 01 */	li r27, 1
/* 80129E40 00126E40  4B F3 45 89 */	bl mobjCheckItemboxOpen
/* 80129E44 00126E44  2C 03 00 01 */	cmpwi r3, 1
/* 80129E48 00126E48  41 82 00 08 */	beq .L_80129E50
/* 80129E4C 00126E4C  3B 60 00 00 */	li r27, 0
.L_80129E50:
/* 80129E50 00126E50  7F 7C DB 78 */	mr r28, r27
.L_80129E54:
/* 80129E54 00126E54  4B F1 C1 35 */	bl fbatNpcTalkCheck
/* 80129E58 00126E58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80129E5C 00126E5C  41 82 00 58 */	beq .L_80129EB4
/* 80129E60 00126E60  80 1E 00 00 */	lwz r0, 0(r30)
/* 80129E64 00126E64  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80129E68 00126E68  40 82 00 10 */	bne .L_80129E78
/* 80129E6C 00126E6C  8B BE 03 17 */	lbz r29, 0x317(r30)
/* 80129E70 00126E70  3B 80 00 01 */	li r28, 1
/* 80129E74 00126E74  7F BD 07 74 */	extsb r29, r29
.L_80129E78:
/* 80129E78 00126E78  80 1F 02 64 */	lwz r0, 0x264(r31)
/* 80129E7C 00126E7C  7C 00 F0 40 */	cmplw r0, r30
/* 80129E80 00126E80  41 82 00 34 */	beq .L_80129EB4
/* 80129E84 00126E84  4B F3 33 91 */	bl marioGetPtr
/* 80129E88 00126E88  7C 7B 1B 78 */	mr r27, r3
/* 80129E8C 00126E8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80129E90 00126E90  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80129E94 00126E94  41 82 00 20 */	beq .L_80129EB4
/* 80129E98 00126E98  54 60 01 CA */	rlwinm r0, r3, 0, 7, 5
/* 80129E9C 00126E9C  90 1B 00 04 */	stw r0, 4(r27)
/* 80129EA0 00126EA0  80 7B 02 60 */	lwz r3, 0x260(r27)
/* 80129EA4 00126EA4  4B F3 3C E1 */	bl effDelete
/* 80129EA8 00126EA8  38 00 00 00 */	li r0, 0
/* 80129EAC 00126EAC  90 1B 02 60 */	stw r0, 0x260(r27)
/* 80129EB0 00126EB0  90 1B 02 64 */	stw r0, 0x264(r27)
.L_80129EB4:
/* 80129EB4 00126EB4  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 80129EB8 00126EB8  2C 00 00 00 */	cmpwi r0, 0
/* 80129EBC 00126EBC  40 82 00 38 */	bne .L_80129EF4
/* 80129EC0 00126EC0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80129EC4 00126EC4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80129EC8 00126EC8  40 82 00 2C */	bne .L_80129EF4
/* 80129ECC 00126ECC  80 1F 00 04 */	lwz r0, 4(r31)
/* 80129ED0 00126ED0  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 80129ED4 00126ED4  40 82 00 20 */	bne .L_80129EF4
/* 80129ED8 00126ED8  A0 7F 00 2E */	lhz r3, 0x2e(r31)
/* 80129EDC 00126EDC  28 03 00 00 */	cmplwi r3, 0
/* 80129EE0 00126EE0  41 82 00 18 */	beq .L_80129EF8
/* 80129EE4 00126EE4  38 03 FF FF */	addi r0, r3, -1
/* 80129EE8 00126EE8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80129EEC 00126EEC  28 00 00 01 */	cmplwi r0, 1
/* 80129EF0 00126EF0  40 81 00 08 */	ble .L_80129EF8
.L_80129EF4:
/* 80129EF4 00126EF4  3B 80 00 00 */	li r28, 0
.L_80129EF8:
/* 80129EF8 00126EF8  2C 1C 00 00 */	cmpwi r28, 0
/* 80129EFC 00126EFC  41 82 00 7C */	beq .L_80129F78
/* 80129F00 00126F00  2C 1D 00 01 */	cmpwi r29, 1
/* 80129F04 00126F04  40 82 00 38 */	bne .L_80129F3C
/* 80129F08 00126F08  4B F3 33 0D */	bl marioGetPtr
/* 80129F0C 00126F0C  7C 7C 1B 78 */	mr r28, r3
/* 80129F10 00126F10  80 63 00 04 */	lwz r3, 4(r3)
/* 80129F14 00126F14  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80129F18 00126F18  40 82 00 90 */	bne .L_80129FA8
/* 80129F1C 00126F1C  64 60 02 00 */	oris r0, r3, 0x200
/* 80129F20 00126F20  7F A3 EB 78 */	mr r3, r29
/* 80129F24 00126F24  90 1C 00 04 */	stw r0, 4(r28)
/* 80129F28 00126F28  7F C4 F3 78 */	mr r4, r30
/* 80129F2C 00126F2C  48 01 09 75 */	bl effMarioBalloonEntry
/* 80129F30 00126F30  90 7C 02 60 */	stw r3, 0x260(r28)
/* 80129F34 00126F34  93 DC 02 64 */	stw r30, 0x264(r28)
/* 80129F38 00126F38  48 00 00 70 */	b .L_80129FA8
.L_80129F3C:
/* 80129F3C 00126F3C  4B F3 32 D9 */	bl marioGetPtr
/* 80129F40 00126F40  7C 7C 1B 78 */	mr r28, r3
/* 80129F44 00126F44  80 63 00 04 */	lwz r3, 4(r3)
/* 80129F48 00126F48  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80129F4C 00126F4C  40 82 00 1C */	bne .L_80129F68
/* 80129F50 00126F50  64 60 02 00 */	oris r0, r3, 0x200
/* 80129F54 00126F54  7F A3 EB 78 */	mr r3, r29
/* 80129F58 00126F58  90 1C 00 04 */	stw r0, 4(r28)
/* 80129F5C 00126F5C  38 80 00 00 */	li r4, 0
/* 80129F60 00126F60  48 01 09 41 */	bl effMarioBalloonEntry
/* 80129F64 00126F64  90 7C 02 60 */	stw r3, 0x260(r28)
.L_80129F68:
/* 80129F68 00126F68  28 1E 00 00 */	cmplwi r30, 0
/* 80129F6C 00126F6C  41 82 00 3C */	beq .L_80129FA8
/* 80129F70 00126F70  93 DF 02 64 */	stw r30, 0x264(r31)
/* 80129F74 00126F74  48 00 00 34 */	b .L_80129FA8
.L_80129F78:
/* 80129F78 00126F78  4B F3 32 9D */	bl marioGetPtr
/* 80129F7C 00126F7C  7C 7C 1B 78 */	mr r28, r3
/* 80129F80 00126F80  80 63 00 04 */	lwz r3, 4(r3)
/* 80129F84 00126F84  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80129F88 00126F88  41 82 00 20 */	beq .L_80129FA8
/* 80129F8C 00126F8C  54 60 01 CA */	rlwinm r0, r3, 0, 7, 5
/* 80129F90 00126F90  90 1C 00 04 */	stw r0, 4(r28)
/* 80129F94 00126F94  80 7C 02 60 */	lwz r3, 0x260(r28)
/* 80129F98 00126F98  4B F3 3B ED */	bl effDelete
/* 80129F9C 00126F9C  38 00 00 00 */	li r0, 0
/* 80129FA0 00126FA0  90 1C 02 60 */	stw r0, 0x260(r28)
/* 80129FA4 00126FA4  90 1C 02 64 */	stw r0, 0x264(r28)
.L_80129FA8:
/* 80129FA8 00126FA8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80129FAC 00126FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80129FB0 00126FB0  7C 08 03 A6 */	mtlr r0
/* 80129FB4 00126FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80129FB8 00126FB8  4E 80 00 20 */	blr 

.global marioBalloonOff
marioBalloonOff:
/* 80129FBC 00126FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80129FC0 00126FC0  7C 08 02 A6 */	mflr r0
/* 80129FC4 00126FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80129FC8 00126FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80129FCC 00126FCC  4B F3 32 49 */	bl marioGetPtr
/* 80129FD0 00126FD0  7C 7F 1B 78 */	mr r31, r3
/* 80129FD4 00126FD4  80 63 00 04 */	lwz r3, 4(r3)
/* 80129FD8 00126FD8  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80129FDC 00126FDC  41 82 00 20 */	beq .L_80129FFC
/* 80129FE0 00126FE0  54 60 01 CA */	rlwinm r0, r3, 0, 7, 5
/* 80129FE4 00126FE4  90 1F 00 04 */	stw r0, 4(r31)
/* 80129FE8 00126FE8  80 7F 02 60 */	lwz r3, 0x260(r31)
/* 80129FEC 00126FEC  4B F3 3B 99 */	bl effDelete
/* 80129FF0 00126FF0  38 00 00 00 */	li r0, 0
/* 80129FF4 00126FF4  90 1F 02 60 */	stw r0, 0x260(r31)
/* 80129FF8 00126FF8  90 1F 02 64 */	stw r0, 0x264(r31)
.L_80129FFC:
/* 80129FFC 00126FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012A000 00127000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012A004 00127004  7C 08 03 A6 */	mtlr r0
/* 8012A008 00127008  38 21 00 10 */	addi r1, r1, 0x10
/* 8012A00C 0012700C  4E 80 00 20 */	blr 

.global marioBalloonOn
marioBalloonOn:
/* 8012A010 00127010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012A014 00127014  7C 08 02 A6 */	mflr r0
/* 8012A018 00127018  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012A01C 0012701C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012A020 00127020  93 C1 00 08 */	stw r30, 8(r1)
/* 8012A024 00127024  7C 7E 1B 78 */	mr r30, r3
/* 8012A028 00127028  4B F3 31 ED */	bl marioGetPtr
/* 8012A02C 0012702C  7C 7F 1B 78 */	mr r31, r3
/* 8012A030 00127030  80 63 00 04 */	lwz r3, 4(r3)
/* 8012A034 00127034  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 8012A038 00127038  40 82 00 1C */	bne .L_8012A054
/* 8012A03C 0012703C  64 60 02 00 */	oris r0, r3, 0x200
/* 8012A040 00127040  7F C3 F3 78 */	mr r3, r30
/* 8012A044 00127044  90 1F 00 04 */	stw r0, 4(r31)
/* 8012A048 00127048  38 80 00 00 */	li r4, 0
/* 8012A04C 0012704C  48 01 08 55 */	bl effMarioBalloonEntry
/* 8012A050 00127050  90 7F 02 60 */	stw r3, 0x260(r31)
.L_8012A054:
/* 8012A054 00127054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012A058 00127058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012A05C 0012705C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012A060 00127060  7C 08 03 A6 */	mtlr r0
/* 8012A064 00127064  38 21 00 10 */	addi r1, r1, 0x10
/* 8012A068 00127068  4E 80 00 20 */	blr 

.global marioBaloonInit
marioBaloonInit:
/* 8012A06C 0012706C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012A070 00127070  7C 08 02 A6 */	mflr r0
/* 8012A074 00127074  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012A078 00127078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012A07C 0012707C  3B E0 00 00 */	li r31, 0
/* 8012A080 00127080  4B F3 31 95 */	bl marioGetPtr
/* 8012A084 00127084  93 E3 02 60 */	stw r31, 0x260(r3)
/* 8012A088 00127088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012A08C 0012708C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012A090 00127090  7C 08 03 A6 */	mtlr r0
/* 8012A094 00127094  38 21 00 10 */	addi r1, r1, 0x10
/* 8012A098 00127098  4E 80 00 20 */	blr 
