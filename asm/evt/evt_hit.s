.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global evt_hitobj_name_callback
evt_hitobj_name_callback:
/* 80072DC0 0006FDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072DC4 0006FDC4  7C 08 02 A6 */	mflr r0
/* 80072DC8 0006FDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072DCC 0006FDCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80072DD0 0006FDD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80072DD4 0006FDD4  7C 7E 1B 78 */	mr r30, r3
/* 80072DD8 0006FDD8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 80072DDC 0006FDDC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80072DE0 0006FDE0  4B FB DD ED */	bl evtGetValue
/* 80072DE4 0006FDE4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80072DE8 0006FDE8  7C 7F 1B 78 */	mr r31, r3
/* 80072DEC 0006FDEC  7F C3 F3 78 */	mr r3, r30
/* 80072DF0 0006FDF0  4B FB DD DD */	bl evtGetValue
/* 80072DF4 0006FDF4  7C 60 1B 78 */	mr r0, r3
/* 80072DF8 0006FDF8  7F E3 FB 78 */	mr r3, r31
/* 80072DFC 0006FDFC  7C 04 03 78 */	mr r4, r0
/* 80072E00 0006FE00  38 A0 00 00 */	li r5, 0
/* 80072E04 0006FE04  48 00 00 21 */	bl name_callback_sub
/* 80072E08 0006FE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072E0C 0006FE0C  38 60 00 02 */	li r3, 2
/* 80072E10 0006FE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80072E14 0006FE14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80072E18 0006FE18  7C 08 03 A6 */	mtlr r0
/* 80072E1C 0006FE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80072E20 0006FE20  4E 80 00 20 */	blr 

.global name_callback_sub
name_callback_sub:
/* 80072E24 0006FE24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80072E28 0006FE28  7C 08 02 A6 */	mflr r0
/* 80072E2C 0006FE2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80072E30 0006FE30  BF 41 00 08 */	stmw r26, 8(r1)
/* 80072E34 0006FE34  7C 7A 1B 78 */	mr r26, r3
/* 80072E38 0006FE38  7C 9E 23 78 */	mr r30, r4
/* 80072E3C 0006FE3C  7C BF 2B 78 */	mr r31, r5
/* 80072E40 0006FE40  4B FA 1A 61 */	bl hitNameToPtr
/* 80072E44 0006FE44  7C 7B 1B 79 */	or. r27, r3, r3
/* 80072E48 0006FE48  41 82 02 70 */	beq .L_800730B8
/* 80072E4C 0006FE4C  7F C3 F3 78 */	mr r3, r30
/* 80072E50 0006FE50  38 80 00 00 */	li r4, 0
/* 80072E54 0006FE54  38 A0 00 20 */	li r5, 0x20
/* 80072E58 0006FE58  4B FC 3F B9 */	bl evtEntry
/* 80072E5C 0006FE5C  93 43 00 9C */	stw r26, 0x9c(r3)
/* 80072E60 0006FE60  80 7B 00 D8 */	lwz r3, 0xd8(r27)
/* 80072E64 0006FE64  28 03 00 00 */	cmplwi r3, 0
/* 80072E68 0006FE68  41 82 01 20 */	beq .L_80072F88
/* 80072E6C 0006FE6C  80 63 00 08 */	lwz r3, 8(r3)
/* 80072E70 0006FE70  83 A3 00 00 */	lwz r29, 0(r3)
/* 80072E74 0006FE74  7F A3 EB 78 */	mr r3, r29
/* 80072E78 0006FE78  4B FA 1A 29 */	bl hitNameToPtr
/* 80072E7C 0006FE7C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80072E80 0006FE80  41 82 01 08 */	beq .L_80072F88
/* 80072E84 0006FE84  7F C3 F3 78 */	mr r3, r30
/* 80072E88 0006FE88  38 80 00 00 */	li r4, 0
/* 80072E8C 0006FE8C  38 A0 00 20 */	li r5, 0x20
/* 80072E90 0006FE90  4B FC 3F 81 */	bl evtEntry
/* 80072E94 0006FE94  93 A3 00 9C */	stw r29, 0x9c(r3)
/* 80072E98 0006FE98  80 7C 00 D8 */	lwz r3, 0xd8(r28)
/* 80072E9C 0006FE9C  28 03 00 00 */	cmplwi r3, 0
/* 80072EA0 0006FEA0  41 82 00 70 */	beq .L_80072F10
/* 80072EA4 0006FEA4  80 63 00 08 */	lwz r3, 8(r3)
/* 80072EA8 0006FEA8  83 43 00 00 */	lwz r26, 0(r3)
/* 80072EAC 0006FEAC  7F 43 D3 78 */	mr r3, r26
/* 80072EB0 0006FEB0  4B FA 19 F1 */	bl hitNameToPtr
/* 80072EB4 0006FEB4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80072EB8 0006FEB8  41 82 00 58 */	beq .L_80072F10
/* 80072EBC 0006FEBC  7F C3 F3 78 */	mr r3, r30
/* 80072EC0 0006FEC0  38 80 00 00 */	li r4, 0
/* 80072EC4 0006FEC4  38 A0 00 20 */	li r5, 0x20
/* 80072EC8 0006FEC8  4B FC 3F 49 */	bl evtEntry
/* 80072ECC 0006FECC  93 43 00 9C */	stw r26, 0x9c(r3)
/* 80072ED0 0006FED0  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 80072ED4 0006FED4  28 03 00 00 */	cmplwi r3, 0
/* 80072ED8 0006FED8  41 82 00 18 */	beq .L_80072EF0
/* 80072EDC 0006FEDC  80 63 00 08 */	lwz r3, 8(r3)
/* 80072EE0 0006FEE0  7F C4 F3 78 */	mr r4, r30
/* 80072EE4 0006FEE4  38 A0 00 01 */	li r5, 1
/* 80072EE8 0006FEE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80072EEC 0006FEEC  4B FF FF 39 */	bl name_callback_sub
.L_80072EF0:
/* 80072EF0 0006FEF0  80 7D 00 DC */	lwz r3, 0xdc(r29)
/* 80072EF4 0006FEF4  28 03 00 00 */	cmplwi r3, 0
/* 80072EF8 0006FEF8  41 82 00 18 */	beq .L_80072F10
/* 80072EFC 0006FEFC  80 63 00 08 */	lwz r3, 8(r3)
/* 80072F00 0006FF00  7F C4 F3 78 */	mr r4, r30
/* 80072F04 0006FF04  38 A0 00 01 */	li r5, 1
/* 80072F08 0006FF08  80 63 00 00 */	lwz r3, 0(r3)
/* 80072F0C 0006FF0C  4B FF FF 19 */	bl name_callback_sub
.L_80072F10:
/* 80072F10 0006FF10  80 7C 00 DC */	lwz r3, 0xdc(r28)
/* 80072F14 0006FF14  28 03 00 00 */	cmplwi r3, 0
/* 80072F18 0006FF18  41 82 00 70 */	beq .L_80072F88
/* 80072F1C 0006FF1C  80 63 00 08 */	lwz r3, 8(r3)
/* 80072F20 0006FF20  83 43 00 00 */	lwz r26, 0(r3)
/* 80072F24 0006FF24  7F 43 D3 78 */	mr r3, r26
/* 80072F28 0006FF28  4B FA 19 79 */	bl hitNameToPtr
/* 80072F2C 0006FF2C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80072F30 0006FF30  41 82 00 58 */	beq .L_80072F88
/* 80072F34 0006FF34  7F C3 F3 78 */	mr r3, r30
/* 80072F38 0006FF38  38 80 00 00 */	li r4, 0
/* 80072F3C 0006FF3C  38 A0 00 20 */	li r5, 0x20
/* 80072F40 0006FF40  4B FC 3E D1 */	bl evtEntry
/* 80072F44 0006FF44  93 43 00 9C */	stw r26, 0x9c(r3)
/* 80072F48 0006FF48  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 80072F4C 0006FF4C  28 03 00 00 */	cmplwi r3, 0
/* 80072F50 0006FF50  41 82 00 18 */	beq .L_80072F68
/* 80072F54 0006FF54  80 63 00 08 */	lwz r3, 8(r3)
/* 80072F58 0006FF58  7F C4 F3 78 */	mr r4, r30
/* 80072F5C 0006FF5C  38 A0 00 01 */	li r5, 1
/* 80072F60 0006FF60  80 63 00 00 */	lwz r3, 0(r3)
/* 80072F64 0006FF64  4B FF FE C1 */	bl name_callback_sub
.L_80072F68:
/* 80072F68 0006FF68  80 7D 00 DC */	lwz r3, 0xdc(r29)
/* 80072F6C 0006FF6C  28 03 00 00 */	cmplwi r3, 0
/* 80072F70 0006FF70  41 82 00 18 */	beq .L_80072F88
/* 80072F74 0006FF74  80 63 00 08 */	lwz r3, 8(r3)
/* 80072F78 0006FF78  7F C4 F3 78 */	mr r4, r30
/* 80072F7C 0006FF7C  38 A0 00 01 */	li r5, 1
/* 80072F80 0006FF80  80 63 00 00 */	lwz r3, 0(r3)
/* 80072F84 0006FF84  4B FF FE A1 */	bl name_callback_sub
.L_80072F88:
/* 80072F88 0006FF88  2C 1F 00 00 */	cmpwi r31, 0
/* 80072F8C 0006FF8C  41 82 01 2C */	beq .L_800730B8
/* 80072F90 0006FF90  80 7B 00 DC */	lwz r3, 0xdc(r27)
/* 80072F94 0006FF94  28 03 00 00 */	cmplwi r3, 0
/* 80072F98 0006FF98  41 82 01 20 */	beq .L_800730B8
/* 80072F9C 0006FF9C  80 63 00 08 */	lwz r3, 8(r3)
/* 80072FA0 0006FFA0  83 63 00 00 */	lwz r27, 0(r3)
/* 80072FA4 0006FFA4  7F 63 DB 78 */	mr r3, r27
/* 80072FA8 0006FFA8  4B FA 18 F9 */	bl hitNameToPtr
/* 80072FAC 0006FFAC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80072FB0 0006FFB0  41 82 01 08 */	beq .L_800730B8
/* 80072FB4 0006FFB4  7F C3 F3 78 */	mr r3, r30
/* 80072FB8 0006FFB8  38 80 00 00 */	li r4, 0
/* 80072FBC 0006FFBC  38 A0 00 20 */	li r5, 0x20
/* 80072FC0 0006FFC0  4B FC 3E 51 */	bl evtEntry
/* 80072FC4 0006FFC4  93 63 00 9C */	stw r27, 0x9c(r3)
/* 80072FC8 0006FFC8  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 80072FCC 0006FFCC  28 03 00 00 */	cmplwi r3, 0
/* 80072FD0 0006FFD0  41 82 00 70 */	beq .L_80073040
/* 80072FD4 0006FFD4  80 63 00 08 */	lwz r3, 8(r3)
/* 80072FD8 0006FFD8  83 43 00 00 */	lwz r26, 0(r3)
/* 80072FDC 0006FFDC  7F 43 D3 78 */	mr r3, r26
/* 80072FE0 0006FFE0  4B FA 18 C1 */	bl hitNameToPtr
/* 80072FE4 0006FFE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80072FE8 0006FFE8  41 82 00 58 */	beq .L_80073040
/* 80072FEC 0006FFEC  7F C3 F3 78 */	mr r3, r30
/* 80072FF0 0006FFF0  38 80 00 00 */	li r4, 0
/* 80072FF4 0006FFF4  38 A0 00 20 */	li r5, 0x20
/* 80072FF8 0006FFF8  4B FC 3E 19 */	bl evtEntry
/* 80072FFC 0006FFFC  93 43 00 9C */	stw r26, 0x9c(r3)
/* 80073000 00070000  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 80073004 00070004  28 03 00 00 */	cmplwi r3, 0
/* 80073008 00070008  41 82 00 18 */	beq .L_80073020
/* 8007300C 0007000C  80 63 00 08 */	lwz r3, 8(r3)
/* 80073010 00070010  7F C4 F3 78 */	mr r4, r30
/* 80073014 00070014  38 A0 00 01 */	li r5, 1
/* 80073018 00070018  80 63 00 00 */	lwz r3, 0(r3)
/* 8007301C 0007001C  4B FF FE 09 */	bl name_callback_sub
.L_80073020:
/* 80073020 00070020  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80073024 00070024  28 03 00 00 */	cmplwi r3, 0
/* 80073028 00070028  41 82 00 18 */	beq .L_80073040
/* 8007302C 0007002C  80 63 00 08 */	lwz r3, 8(r3)
/* 80073030 00070030  7F C4 F3 78 */	mr r4, r30
/* 80073034 00070034  38 A0 00 01 */	li r5, 1
/* 80073038 00070038  80 63 00 00 */	lwz r3, 0(r3)
/* 8007303C 0007003C  4B FF FD E9 */	bl name_callback_sub
.L_80073040:
/* 80073040 00070040  80 7D 00 DC */	lwz r3, 0xdc(r29)
/* 80073044 00070044  28 03 00 00 */	cmplwi r3, 0
/* 80073048 00070048  41 82 00 70 */	beq .L_800730B8
/* 8007304C 0007004C  80 63 00 08 */	lwz r3, 8(r3)
/* 80073050 00070050  83 43 00 00 */	lwz r26, 0(r3)
/* 80073054 00070054  7F 43 D3 78 */	mr r3, r26
/* 80073058 00070058  4B FA 18 49 */	bl hitNameToPtr
/* 8007305C 0007005C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80073060 00070060  41 82 00 58 */	beq .L_800730B8
/* 80073064 00070064  7F C3 F3 78 */	mr r3, r30
/* 80073068 00070068  38 80 00 00 */	li r4, 0
/* 8007306C 0007006C  38 A0 00 20 */	li r5, 0x20
/* 80073070 00070070  4B FC 3D A1 */	bl evtEntry
/* 80073074 00070074  93 43 00 9C */	stw r26, 0x9c(r3)
/* 80073078 00070078  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 8007307C 0007007C  28 03 00 00 */	cmplwi r3, 0
/* 80073080 00070080  41 82 00 18 */	beq .L_80073098
/* 80073084 00070084  80 63 00 08 */	lwz r3, 8(r3)
/* 80073088 00070088  7F C4 F3 78 */	mr r4, r30
/* 8007308C 0007008C  38 A0 00 01 */	li r5, 1
/* 80073090 00070090  80 63 00 00 */	lwz r3, 0(r3)
/* 80073094 00070094  4B FF FD 91 */	bl name_callback_sub
.L_80073098:
/* 80073098 00070098  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8007309C 0007009C  28 03 00 00 */	cmplwi r3, 0
/* 800730A0 000700A0  41 82 00 18 */	beq .L_800730B8
/* 800730A4 000700A4  80 63 00 08 */	lwz r3, 8(r3)
/* 800730A8 000700A8  7F C4 F3 78 */	mr r4, r30
/* 800730AC 000700AC  38 A0 00 01 */	li r5, 1
/* 800730B0 000700B0  80 63 00 00 */	lwz r3, 0(r3)
/* 800730B4 000700B4  4B FF FD 71 */	bl name_callback_sub
.L_800730B8:
/* 800730B8 000700B8  BB 41 00 08 */	lmw r26, 8(r1)
/* 800730BC 000700BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800730C0 000700C0  7C 08 03 A6 */	mtlr r0
/* 800730C4 000700C4  38 21 00 20 */	addi r1, r1, 0x20
/* 800730C8 000700C8  4E 80 00 20 */	blr 

.global evt_hitobj_attr_onoff
evt_hitobj_attr_onoff:
/* 800730CC 000700CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800730D0 000700D0  7C 08 02 A6 */	mflr r0
/* 800730D4 000700D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800730D8 000700D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800730DC 000700DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800730E0 000700E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800730E4 000700E4  93 81 00 10 */	stw r28, 0x10(r1)
/* 800730E8 000700E8  7C 7C 1B 78 */	mr r28, r3
/* 800730EC 000700EC  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 800730F0 000700F0  80 9D 00 00 */	lwz r4, 0(r29)
/* 800730F4 000700F4  4B FB DA D9 */	bl evtGetValue
/* 800730F8 000700F8  80 9D 00 04 */	lwz r4, 4(r29)
/* 800730FC 000700FC  7C 7E 1B 78 */	mr r30, r3
/* 80073100 00070100  7F 83 E3 78 */	mr r3, r28
/* 80073104 00070104  4B FB DA C9 */	bl evtGetValue
/* 80073108 00070108  80 9D 00 08 */	lwz r4, 8(r29)
/* 8007310C 0007010C  7C 7F 1B 78 */	mr r31, r3
/* 80073110 00070110  7F 83 E3 78 */	mr r3, r28
/* 80073114 00070114  4B FB DA B9 */	bl evtGetValue
/* 80073118 00070118  2C 1E 00 00 */	cmpwi r30, 0
/* 8007311C 0007011C  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 80073120 00070120  40 82 00 1C */	bne .L_8007313C
/* 80073124 00070124  2C 1F 00 00 */	cmpwi r31, 0
/* 80073128 00070128  40 82 00 0C */	bne .L_80073134
/* 8007312C 0007012C  4B FA 43 59 */	bl hitObjAttrOff
/* 80073130 00070130  48 00 00 20 */	b .L_80073150
.L_80073134:
/* 80073134 00070134  4B FA 44 25 */	bl hitObjAttrOn
/* 80073138 00070138  48 00 00 18 */	b .L_80073150
.L_8007313C:
/* 8007313C 0007013C  2C 1F 00 00 */	cmpwi r31, 0
/* 80073140 00070140  40 82 00 0C */	bne .L_8007314C
/* 80073144 00070144  4B FA 3B 6D */	bl hitGrpAttrOff
/* 80073148 00070148  48 00 00 08 */	b .L_80073150
.L_8007314C:
/* 8007314C 0007014C  4B FA 3C 3D */	bl func_80016D88
.L_80073150:
/* 80073150 00070150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80073154 00070154  38 60 00 02 */	li r3, 2
/* 80073158 00070158  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007315C 0007015C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80073160 00070160  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80073164 00070164  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80073168 00070168  7C 08 03 A6 */	mtlr r0
/* 8007316C 0007016C  38 21 00 20 */	addi r1, r1, 0x20
/* 80073170 00070170  4E 80 00 20 */	blr 

.global L_evt_hitobj_flag_onoff
L_evt_hitobj_flag_onoff:
/* 80073174 00070174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073178 00070178  7C 08 02 A6 */	mflr r0
/* 8007317C 0007017C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073180 00070180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80073184 00070184  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80073188 00070188  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8007318C 0007018C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80073190 00070190  7C 7C 1B 78 */	mr r28, r3
/* 80073194 00070194  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 80073198 00070198  80 9D 00 00 */	lwz r4, 0(r29)
/* 8007319C 0007019C  4B FB DA 31 */	bl evtGetValue
/* 800731A0 000701A0  80 9D 00 04 */	lwz r4, 4(r29)
/* 800731A4 000701A4  7C 7E 1B 78 */	mr r30, r3
/* 800731A8 000701A8  7F 83 E3 78 */	mr r3, r28
/* 800731AC 000701AC  4B FB DA 21 */	bl evtGetValue
/* 800731B0 000701B0  80 9D 00 08 */	lwz r4, 8(r29)
/* 800731B4 000701B4  7C 7F 1B 78 */	mr r31, r3
/* 800731B8 000701B8  7F 83 E3 78 */	mr r3, r28
/* 800731BC 000701BC  4B FB DA 11 */	bl evtGetValue
/* 800731C0 000701C0  2C 1E 00 00 */	cmpwi r30, 0
/* 800731C4 000701C4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800731C8 000701C8  40 82 00 24 */	bne .L_800731EC
/* 800731CC 000701CC  2C 1F 00 00 */	cmpwi r31, 0
/* 800731D0 000701D0  40 82 00 10 */	bne .L_800731E0
/* 800731D4 000701D4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 800731D8 000701D8  4B FA 4C 2D */	bl hitObjFlagOff
/* 800731DC 000701DC  48 00 00 2C */	b .L_80073208
.L_800731E0:
/* 800731E0 000701E0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 800731E4 000701E4  4B FA 4C F5 */	bl hitObjFlagOn
/* 800731E8 000701E8  48 00 00 20 */	b .L_80073208
.L_800731EC:
/* 800731EC 000701EC  2C 1F 00 00 */	cmpwi r31, 0
/* 800731F0 000701F0  40 82 00 10 */	bne .L_80073200
/* 800731F4 000701F4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 800731F8 000701F8  4B FA 44 35 */	bl func_8001762C
/* 800731FC 000701FC  48 00 00 0C */	b .L_80073208
.L_80073200:
/* 80073200 00070200  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80073204 00070204  4B FA 45 01 */	bl func_80017704
.L_80073208:
/* 80073208 00070208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007320C 0007020C  38 60 00 02 */	li r3, 2
/* 80073210 00070210  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80073214 00070214  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80073218 00070218  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8007321C 0007021C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80073220 00070220  7C 08 03 A6 */	mtlr r0
/* 80073224 00070224  38 21 00 20 */	addi r1, r1, 0x20
/* 80073228 00070228  4E 80 00 20 */	blr 

.global evt_hit_get_position
evt_hit_get_position:
/* 8007322C 0007022C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073230 00070230  7C 08 02 A6 */	mflr r0
/* 80073234 00070234  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073238 00070238  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007323C 0007023C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80073240 00070240  7C 7E 1B 78 */	mr r30, r3
/* 80073244 00070244  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 80073248 00070248  80 9F 00 00 */	lwz r4, 0(r31)
/* 8007324C 0007024C  4B FB D9 81 */	bl evtGetValue
/* 80073250 00070250  38 81 00 08 */	addi r4, r1, 8
/* 80073254 00070254  4B FA 0F 91 */	bl hitObjGetPos
/* 80073258 00070258  80 9F 00 04 */	lwz r4, 4(r31)
/* 8007325C 0007025C  7F C3 F3 78 */	mr r3, r30
/* 80073260 00070260  C0 21 00 08 */	lfs f1, 8(r1)
/* 80073264 00070264  4B FB CB C5 */	bl evtSetFloat
/* 80073268 00070268  80 9F 00 08 */	lwz r4, 8(r31)
/* 8007326C 0007026C  7F C3 F3 78 */	mr r3, r30
/* 80073270 00070270  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80073274 00070274  4B FB CB B5 */	bl evtSetFloat
/* 80073278 00070278  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8007327C 0007027C  7F C3 F3 78 */	mr r3, r30
/* 80073280 00070280  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80073284 00070284  4B FB CB A5 */	bl evtSetFloat
/* 80073288 00070288  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007328C 0007028C  38 60 00 02 */	li r3, 2
/* 80073290 00070290  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80073294 00070294  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80073298 00070298  7C 08 03 A6 */	mtlr r0
/* 8007329C 0007029C  38 21 00 20 */	addi r1, r1, 0x20
/* 800732A0 000702A0  4E 80 00 20 */	blr 

.global evt_hit_bind_update
evt_hit_bind_update:
/* 800732A4 000702A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800732A8 000702A8  7C 08 02 A6 */	mflr r0
/* 800732AC 000702AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800732B0 000702B0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 800732B4 000702B4  80 84 00 00 */	lwz r4, 0(r4)
/* 800732B8 000702B8  4B FB D9 15 */	bl evtGetValue
/* 800732BC 000702BC  4B FA 07 79 */	bl hitBindUpdate
/* 800732C0 000702C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800732C4 000702C4  38 60 00 02 */	li r3, 2
/* 800732C8 000702C8  7C 08 03 A6 */	mtlr r0
/* 800732CC 000702CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800732D0 000702D0  4E 80 00 20 */	blr 

.global evt_hit_bind_mapobj
evt_hit_bind_mapobj:
/* 800732D4 000702D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800732D8 000702D8  7C 08 02 A6 */	mflr r0
/* 800732DC 000702DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800732E0 000702E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800732E4 000702E4  93 C1 00 08 */	stw r30, 8(r1)
/* 800732E8 000702E8  7C 7E 1B 78 */	mr r30, r3
/* 800732EC 000702EC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 800732F0 000702F0  80 9F 00 00 */	lwz r4, 0(r31)
/* 800732F4 000702F4  4B FB D8 D9 */	bl evtGetValue
/* 800732F8 000702F8  80 9F 00 04 */	lwz r4, 4(r31)
/* 800732FC 000702FC  7C 7F 1B 78 */	mr r31, r3
/* 80073300 00070300  7F C3 F3 78 */	mr r3, r30
/* 80073304 00070304  4B FB D8 C9 */	bl evtGetValue
/* 80073308 00070308  7C 60 1B 78 */	mr r0, r3
/* 8007330C 0007030C  7F E3 FB 78 */	mr r3, r31
/* 80073310 00070310  7C 04 03 78 */	mr r4, r0
/* 80073314 00070314  4B FA 08 2D */	bl hitBindMapObj
/* 80073318 00070318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007331C 0007031C  38 60 00 02 */	li r3, 2
/* 80073320 00070320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80073324 00070324  83 C1 00 08 */	lwz r30, 8(r1)
/* 80073328 00070328  7C 08 03 A6 */	mtlr r0
/* 8007332C 0007032C  38 21 00 10 */	addi r1, r1, 0x10
/* 80073330 00070330  4E 80 00 20 */	blr 

.global evt_hit_damage_return_set
evt_hit_damage_return_set:
/* 80073334 00070334  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073338 00070338  7C 08 02 A6 */	mflr r0
/* 8007333C 0007033C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073340 00070340  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80073344 00070344  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80073348 00070348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007334C 0007034C  93 C1 00 08 */	stw r30, 8(r1)
/* 80073350 00070350  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80073354 00070354  7C 9E 23 78 */	mr r30, r4
/* 80073358 00070358  80 85 00 00 */	lwz r4, 0(r5)
/* 8007335C 0007035C  4B FB D8 71 */	bl evtGetValue
/* 80073360 00070360  2C 1E 00 00 */	cmpwi r30, 0
/* 80073364 00070364  7C 7E 1B 78 */	mr r30, r3
/* 80073368 00070368  41 82 00 7C */	beq .L_800733E4
/* 8007336C 0007036C  7F C4 F3 78 */	mr r4, r30
/* 80073370 00070370  38 60 00 01 */	li r3, 1
.L_80073374:
/* 80073374 00070374  80 04 00 00 */	lwz r0, 0(r4)
/* 80073378 00070378  28 00 00 00 */	cmplwi r0, 0
/* 8007337C 0007037C  41 82 00 10 */	beq .L_8007338C
/* 80073380 00070380  38 84 00 10 */	addi r4, r4, 0x10
/* 80073384 00070384  38 63 00 01 */	addi r3, r3, 1
/* 80073388 00070388  4B FF FF EC */	b .L_80073374
.L_8007338C:
/* 8007338C 0007038C  54 7F 20 36 */	slwi r31, r3, 4
/* 80073390 00070390  7F E3 FB 78 */	mr r3, r31
/* 80073394 00070394  4B FB C5 C1 */	bl _mapAlloc
/* 80073398 00070398  90 6D 14 F0 */	stw r3, lbl_80418750@sda21(r13)
/* 8007339C 0007039C  7F C4 F3 78 */	mr r4, r30
/* 800733A0 000703A0  7C 7E 1B 78 */	mr r30, r3
/* 800733A4 000703A4  7F E5 FB 78 */	mr r5, r31
/* 800733A8 000703A8  4B F9 1D F5 */	bl func_8000519C
/* 800733AC 000703AC  C3 E2 8F 60 */	lfs f31, lbl_8041A2E0@sda21(r2)
.L_800733B0:
/* 800733B0 000703B0  80 7E 00 00 */	lwz r3, 0(r30)
/* 800733B4 000703B4  28 03 00 00 */	cmplwi r3, 0
/* 800733B8 000703B8  41 82 00 2C */	beq .L_800733E4
/* 800733BC 000703BC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 800733C0 000703C0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 800733C4 000703C4  40 82 00 0C */	bne .L_800733D0
/* 800733C8 000703C8  38 9E 00 04 */	addi r4, r30, 4
/* 800733CC 000703CC  4B FA 0E 19 */	bl hitObjGetPos
.L_800733D0:
/* 800733D0 000703D0  80 7E 00 00 */	lwz r3, 0(r30)
/* 800733D4 000703D4  7F C4 F3 78 */	mr r4, r30
/* 800733D8 000703D8  4B FA 08 6D */	bl hitGrpDamageReturnSet
/* 800733DC 000703DC  3B DE 00 10 */	addi r30, r30, 0x10
/* 800733E0 000703E0  4B FF FF D0 */	b .L_800733B0
.L_800733E4:
/* 800733E4 000703E4  38 60 00 02 */	li r3, 2
/* 800733E8 000703E8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 800733EC 000703EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800733F0 000703F0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800733F4 000703F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800733F8 000703F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800733FC 000703FC  7C 08 03 A6 */	mtlr r0
/* 80073400 00070400  38 21 00 20 */	addi r1, r1, 0x20
/* 80073404 00070404  4E 80 00 20 */	blr 

.global evt_hitobj_onoff
evt_hitobj_onoff:
/* 80073408 00070408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007340C 0007040C  7C 08 02 A6 */	mflr r0
/* 80073410 00070410  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073414 00070414  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80073418 00070418  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8007341C 0007041C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80073420 00070420  7C 7D 1B 78 */	mr r29, r3
/* 80073424 00070424  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 80073428 00070428  80 9F 00 00 */	lwz r4, 0(r31)
/* 8007342C 0007042C  4B FB D7 A1 */	bl evtGetValue
/* 80073430 00070430  80 9F 00 04 */	lwz r4, 4(r31)
/* 80073434 00070434  7C 7E 1B 78 */	mr r30, r3
/* 80073438 00070438  7F A3 EB 78 */	mr r3, r29
/* 8007343C 0007043C  4B FB D7 91 */	bl evtGetValue
/* 80073440 00070440  80 9F 00 08 */	lwz r4, 8(r31)
/* 80073444 00070444  7C 7F 1B 78 */	mr r31, r3
/* 80073448 00070448  7F A3 EB 78 */	mr r3, r29
/* 8007344C 0007044C  4B FB D7 81 */	bl evtGetValue
/* 80073450 00070450  2C 1F 00 00 */	cmpwi r31, 0
/* 80073454 00070454  40 82 00 2C */	bne .L_80073480
/* 80073458 00070458  2C 03 00 00 */	cmpwi r3, 0
/* 8007345C 0007045C  41 82 00 14 */	beq .L_80073470
/* 80073460 00070460  7F C3 F3 78 */	mr r3, r30
/* 80073464 00070464  38 80 00 01 */	li r4, 1
/* 80073468 00070468  4B FA 49 9D */	bl hitObjFlagOff
/* 8007346C 0007046C  48 00 00 38 */	b .L_800734A4
.L_80073470:
/* 80073470 00070470  7F C3 F3 78 */	mr r3, r30
/* 80073474 00070474  38 80 00 01 */	li r4, 1
/* 80073478 00070478  4B FA 4A 61 */	bl hitObjFlagOn
/* 8007347C 0007047C  48 00 00 28 */	b .L_800734A4
.L_80073480:
/* 80073480 00070480  2C 03 00 00 */	cmpwi r3, 0
/* 80073484 00070484  41 82 00 14 */	beq .L_80073498
/* 80073488 00070488  7F C3 F3 78 */	mr r3, r30
/* 8007348C 0007048C  38 80 00 01 */	li r4, 1
/* 80073490 00070490  4B FA 41 9D */	bl func_8001762C
/* 80073494 00070494  48 00 00 10 */	b .L_800734A4
.L_80073498:
/* 80073498 00070498  7F C3 F3 78 */	mr r3, r30
/* 8007349C 0007049C  38 80 00 01 */	li r4, 1
/* 800734A0 000704A0  4B FA 42 65 */	bl func_80017704
.L_800734A4:
/* 800734A4 000704A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800734A8 000704A8  38 60 00 02 */	li r3, 2
/* 800734AC 000704AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800734B0 000704B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800734B4 000704B4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800734B8 000704B8  7C 08 03 A6 */	mtlr r0
/* 800734BC 000704BC  38 21 00 20 */	addi r1, r1, 0x20
/* 800734C0 000704C0  4E 80 00 20 */	blr 
