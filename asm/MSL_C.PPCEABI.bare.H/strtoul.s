.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global strtol
strtol:
/* 80085EC4 00082E04  7C 08 02 A6 */	mflr r0
/* 80085EC8 00082E08  3C C0 80 00 */	lis r6, 0x7FFFFFFF@ha
/* 80085ECC 00082E0C  90 01 00 04 */	stw r0, 4(r1)
/* 80085ED0 00082E10  38 00 00 00 */	li r0, 0
/* 80085ED4 00082E14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80085ED8 00082E18  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80085EDC 00082E1C  3B E4 00 00 */	addi r31, r4, 0
/* 80085EE0 00082E20  38 86 FF FF */	addi r4, r6, 0x7FFFFFFF@l
/* 80085EE4 00082E24  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80085EE8 00082E28  7C 7E 1B 78 */	mr r30, r3
/* 80085EEC 00082E2C  3C 60 80 08 */	lis r3, __StringRead@ha
/* 80085EF0 00082E30  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80085EF4 00082E34  38 C1 00 14 */	addi r6, r1, 0x14
/* 80085EF8 00082E38  38 E1 00 24 */	addi r7, r1, 0x24
/* 80085EFC 00082E3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80085F00 00082E40  38 03 5A E8 */	addi r0, r3, __StringRead@l
/* 80085F04 00082E44  38 65 00 00 */	addi r3, r5, 0
/* 80085F08 00082E48  7C 05 03 78 */	mr r5, r0
/* 80085F0C 00082E4C  39 01 00 20 */	addi r8, r1, 0x20
/* 80085F10 00082E50  39 21 00 1C */	addi r9, r1, 0x1c
/* 80085F14 00082E54  48 00 01 4D */	bl __strtoul
/* 80085F18 00082E58  28 1F 00 00 */	cmplwi r31, 0
/* 80085F1C 00082E5C  41 82 00 10 */	beq lbl_80085F2C
/* 80085F20 00082E60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80085F24 00082E64  7C 1E 02 14 */	add r0, r30, r0
/* 80085F28 00082E68  90 1F 00 00 */	stw r0, 0(r31)
lbl_80085F2C:
/* 80085F2C 00082E6C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80085F30 00082E70  2C 00 00 00 */	cmpwi r0, 0
/* 80085F34 00082E74  40 82 00 34 */	bne lbl_80085F68
/* 80085F38 00082E78  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80085F3C 00082E7C  2C 05 00 00 */	cmpwi r5, 0
/* 80085F40 00082E80  40 82 00 14 */	bne lbl_80085F54
/* 80085F44 00082E84  3C 80 80 00 */	lis r4, 0x7FFFFFFF@ha
/* 80085F48 00082E88  38 04 FF FF */	addi r0, r4, 0x7FFFFFFF@l
/* 80085F4C 00082E8C  7C 03 00 40 */	cmplw r3, r0
/* 80085F50 00082E90  41 81 00 18 */	bgt lbl_80085F68
lbl_80085F54:
/* 80085F54 00082E94  2C 05 00 00 */	cmpwi r5, 0
/* 80085F58 00082E98  41 82 00 38 */	beq lbl_80085F90
/* 80085F5C 00082E9C  3C 00 80 00 */	lis r0, 0x8000
/* 80085F60 00082EA0  7C 03 00 40 */	cmplw r3, r0
/* 80085F64 00082EA4  40 81 00 2C */	ble lbl_80085F90
lbl_80085F68:
/* 80085F68 00082EA8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80085F6C 00082EAC  2C 00 00 00 */	cmpwi r0, 0
/* 80085F70 00082EB0  41 82 00 0C */	beq lbl_80085F7C
/* 80085F74 00082EB4  3C 60 80 00 */	lis r3, 0x8000
/* 80085F78 00082EB8  48 00 00 0C */	b lbl_80085F84
lbl_80085F7C:
/* 80085F7C 00082EBC  3C 60 80 00 */	lis r3, 0x7FFFFFFF@ha
/* 80085F80 00082EC0  38 63 FF FF */	addi r3, r3, 0x7FFFFFFF@l
lbl_80085F84:
/* 80085F84 00082EC4  38 00 00 22 */	li r0, 0x22
/* 80085F88 00082EC8  90 0D 92 A8 */	stw r0, errno@sda21(r13)
/* 80085F8C 00082ECC  48 00 00 10 */	b lbl_80085F9C
lbl_80085F90:
/* 80085F90 00082ED0  2C 05 00 00 */	cmpwi r5, 0
/* 80085F94 00082ED4  41 82 00 08 */	beq lbl_80085F9C
/* 80085F98 00082ED8  7C 63 00 D0 */	neg r3, r3
lbl_80085F9C:
/* 80085F9C 00082EDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80085FA0 00082EE0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80085FA4 00082EE4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80085FA8 00082EE8  7C 08 03 A6 */	mtlr r0
/* 80085FAC 00082EEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80085FB0 00082EF0  4E 80 00 20 */	blr 

.global strtoul
strtoul:
/* 80085FB4 00082EF4  7C 08 02 A6 */	mflr r0
/* 80085FB8 00082EF8  3C C0 80 00 */	lis r6, 0x7FFFFFFF@ha
/* 80085FBC 00082EFC  90 01 00 04 */	stw r0, 4(r1)
/* 80085FC0 00082F00  38 00 00 00 */	li r0, 0
/* 80085FC4 00082F04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80085FC8 00082F08  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80085FCC 00082F0C  3B E4 00 00 */	addi r31, r4, 0
/* 80085FD0 00082F10  38 86 FF FF */	addi r4, r6, 0x7FFFFFFF@l
/* 80085FD4 00082F14  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80085FD8 00082F18  7C 7E 1B 78 */	mr r30, r3
/* 80085FDC 00082F1C  3C 60 80 08 */	lis r3, __StringRead@ha
/* 80085FE0 00082F20  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80085FE4 00082F24  38 C1 00 14 */	addi r6, r1, 0x14
/* 80085FE8 00082F28  38 E1 00 24 */	addi r7, r1, 0x24
/* 80085FEC 00082F2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80085FF0 00082F30  38 03 5A E8 */	addi r0, r3, __StringRead@l
/* 80085FF4 00082F34  38 65 00 00 */	addi r3, r5, 0
/* 80085FF8 00082F38  7C 05 03 78 */	mr r5, r0
/* 80085FFC 00082F3C  39 01 00 20 */	addi r8, r1, 0x20
/* 80086000 00082F40  39 21 00 1C */	addi r9, r1, 0x1c
/* 80086004 00082F44  48 00 00 5D */	bl __strtoul
/* 80086008 00082F48  28 1F 00 00 */	cmplwi r31, 0
/* 8008600C 00082F4C  41 82 00 10 */	beq lbl_8008601C
/* 80086010 00082F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80086014 00082F54  7C 1E 02 14 */	add r0, r30, r0
/* 80086018 00082F58  90 1F 00 00 */	stw r0, 0(r31)
lbl_8008601C:
/* 8008601C 00082F5C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80086020 00082F60  2C 00 00 00 */	cmpwi r0, 0
/* 80086024 00082F64  41 82 00 14 */	beq lbl_80086038
/* 80086028 00082F68  38 00 00 22 */	li r0, 0x22
/* 8008602C 00082F6C  90 0D 92 A8 */	stw r0, errno@sda21(r13)
/* 80086030 00082F70  38 60 FF FF */	li r3, -1
/* 80086034 00082F74  48 00 00 14 */	b lbl_80086048
lbl_80086038:
/* 80086038 00082F78  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8008603C 00082F7C  2C 00 00 00 */	cmpwi r0, 0
/* 80086040 00082F80  41 82 00 08 */	beq lbl_80086048
/* 80086044 00082F84  7C 63 00 D0 */	neg r3, r3
lbl_80086048:
/* 80086048 00082F88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8008604C 00082F8C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80086050 00082F90  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80086054 00082F94  7C 08 03 A6 */	mtlr r0
/* 80086058 00082F98  38 21 00 30 */	addi r1, r1, 0x30
/* 8008605C 00082F9C  4E 80 00 20 */	blr 

.global __strtoul
__strtoul:
/* 80086060 00082FA0  7C 08 02 A6 */	mflr r0
/* 80086064 00082FA4  90 01 00 04 */	stw r0, 4(r1)
/* 80086068 00082FA8  38 00 00 00 */	li r0, 0
/* 8008606C 00082FAC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80086070 00082FB0  BE 41 00 28 */	stmw r18, 0x28(r1)
/* 80086074 00082FB4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80086078 00082FB8  3A E9 00 00 */	addi r23, r9, 0
/* 8008607C 00082FBC  7D 15 43 78 */	mr r21, r8
/* 80086080 00082FC0  3A C4 00 00 */	addi r22, r4, 0
/* 80086084 00082FC4  3B A5 00 00 */	addi r29, r5, 0
/* 80086088 00082FC8  3B C6 00 00 */	addi r30, r6, 0
/* 8008608C 00082FCC  3A 67 00 00 */	addi r19, r7, 0
/* 80086090 00082FD0  3B 00 00 01 */	li r24, 1
/* 80086094 00082FD4  3B E0 00 00 */	li r31, 0
/* 80086098 00082FD8  3B 60 00 00 */	li r27, 0
/* 8008609C 00082FDC  3B 40 00 00 */	li r26, 0
/* 800860A0 00082FE0  90 09 00 00 */	stw r0, 0(r9)
/* 800860A4 00082FE4  90 08 00 00 */	stw r0, 0(r8)
/* 800860A8 00082FE8  41 80 00 1C */	blt lbl_800860C4
/* 800860AC 00082FEC  2C 1C 00 01 */	cmpwi r28, 1
/* 800860B0 00082FF0  41 82 00 14 */	beq lbl_800860C4
/* 800860B4 00082FF4  2C 1C 00 24 */	cmpwi r28, 0x24
/* 800860B8 00082FF8  41 81 00 0C */	bgt lbl_800860C4
/* 800860BC 00082FFC  2C 16 00 01 */	cmpwi r22, 1
/* 800860C0 00083000  40 80 00 0C */	bge lbl_800860CC
lbl_800860C4:
/* 800860C4 00083004  3B 00 00 40 */	li r24, 0x40
/* 800860C8 00083008  48 00 00 24 */	b lbl_800860EC
lbl_800860CC:
/* 800860CC 0008300C  39 9D 00 00 */	addi r12, r29, 0
/* 800860D0 00083010  7D 88 03 A6 */	mtlr r12
/* 800860D4 00083014  38 7E 00 00 */	addi r3, r30, 0
/* 800860D8 00083018  3B E0 00 01 */	li r31, 1
/* 800860DC 0008301C  38 80 00 00 */	li r4, 0
/* 800860E0 00083020  38 A0 00 00 */	li r5, 0
/* 800860E4 00083024  4E 80 00 21 */	blrl 
/* 800860E8 00083028  7C 72 1B 78 */	mr r18, r3
lbl_800860EC:
/* 800860EC 0008302C  2C 1C 00 00 */	cmpwi r28, 0
/* 800860F0 00083030  41 82 00 0C */	beq lbl_800860FC
/* 800860F4 00083034  38 00 FF FF */	li r0, -1
/* 800860F8 00083038  7F 40 E3 96 */	divwu r26, r0, r28
lbl_800860FC:
/* 800860FC 0008303C  3C 60 80 37 */	lis r3, __ctype_map@ha
/* 80086100 00083040  3C 80 80 3B */	lis r4, $$2410@ha
/* 80086104 00083044  3B 23 16 20 */	addi r25, r3, __ctype_map@l
/* 80086108 00083048  3A 84 EE F8 */	addi r20, r4, $$2410@l
/* 8008610C 0008304C  48 00 02 38 */	b lbl_80086344
lbl_80086110:
/* 80086110 00083050  28 18 00 10 */	cmplwi r24, 0x10
/* 80086114 00083054  41 81 02 30 */	bgt lbl_80086344
/* 80086118 00083058  57 00 10 3A */	slwi r0, r24, 2
/* 8008611C 0008305C  7C 14 00 2E */	lwzx r0, r20, r0
/* 80086120 00083060  7C 09 03 A6 */	mtctr r0
/* 80086124 00083064  4E 80 04 20 */	bctr 
/* 80086128 00083068  56 40 06 3E */	clrlwi r0, r18, 0x18
/* 8008612C 0008306C  7C 79 02 14 */	add r3, r25, r0
/* 80086130 00083070  88 03 00 00 */	lbz r0, 0(r3)
/* 80086134 00083074  54 00 07 7D */	rlwinm. r0, r0, 0, 0x1d, 0x1e
/* 80086138 00083078  41 82 00 28 */	beq lbl_80086160
/* 8008613C 0008307C  39 9D 00 00 */	addi r12, r29, 0
/* 80086140 00083080  7D 88 03 A6 */	mtlr r12
/* 80086144 00083084  38 7E 00 00 */	addi r3, r30, 0
/* 80086148 00083088  38 80 00 00 */	li r4, 0
/* 8008614C 0008308C  38 A0 00 00 */	li r5, 0
/* 80086150 00083090  3B FF 00 01 */	addi r31, r31, 1
/* 80086154 00083094  4E 80 00 21 */	blrl 
/* 80086158 00083098  7C 72 1B 78 */	mr r18, r3
/* 8008615C 0008309C  48 00 01 E8 */	b lbl_80086344
lbl_80086160:
/* 80086160 000830A0  2C 12 00 2B */	cmpwi r18, 0x2b
/* 80086164 000830A4  40 82 00 28 */	bne lbl_8008618C
/* 80086168 000830A8  39 9D 00 00 */	addi r12, r29, 0
/* 8008616C 000830AC  7D 88 03 A6 */	mtlr r12
/* 80086170 000830B0  38 7E 00 00 */	addi r3, r30, 0
/* 80086174 000830B4  38 80 00 00 */	li r4, 0
/* 80086178 000830B8  38 A0 00 00 */	li r5, 0
/* 8008617C 000830BC  3B FF 00 01 */	addi r31, r31, 1
/* 80086180 000830C0  4E 80 00 21 */	blrl 
/* 80086184 000830C4  7C 72 1B 78 */	mr r18, r3
/* 80086188 000830C8  48 00 00 34 */	b lbl_800861BC
lbl_8008618C:
/* 8008618C 000830CC  2C 12 00 2D */	cmpwi r18, 0x2d
/* 80086190 000830D0  40 82 00 2C */	bne lbl_800861BC
/* 80086194 000830D4  39 9D 00 00 */	addi r12, r29, 0
/* 80086198 000830D8  7D 88 03 A6 */	mtlr r12
/* 8008619C 000830DC  38 7E 00 00 */	addi r3, r30, 0
/* 800861A0 000830E0  38 80 00 00 */	li r4, 0
/* 800861A4 000830E4  38 A0 00 00 */	li r5, 0
/* 800861A8 000830E8  3B FF 00 01 */	addi r31, r31, 1
/* 800861AC 000830EC  4E 80 00 21 */	blrl 
/* 800861B0 000830F0  38 00 00 01 */	li r0, 1
/* 800861B4 000830F4  90 15 00 00 */	stw r0, 0(r21)
/* 800861B8 000830F8  7C 72 1B 78 */	mr r18, r3
lbl_800861BC:
/* 800861BC 000830FC  3B 00 00 02 */	li r24, 2
/* 800861C0 00083100  48 00 01 84 */	b lbl_80086344
/* 800861C4 00083104  2C 1C 00 00 */	cmpwi r28, 0
/* 800861C8 00083108  41 82 00 0C */	beq lbl_800861D4
/* 800861CC 0008310C  2C 1C 00 10 */	cmpwi r28, 0x10
/* 800861D0 00083110  40 82 00 34 */	bne lbl_80086204
lbl_800861D4:
/* 800861D4 00083114  2C 12 00 30 */	cmpwi r18, 0x30
/* 800861D8 00083118  40 82 00 2C */	bne lbl_80086204
/* 800861DC 0008311C  39 9D 00 00 */	addi r12, r29, 0
/* 800861E0 00083120  7D 88 03 A6 */	mtlr r12
/* 800861E4 00083124  38 7E 00 00 */	addi r3, r30, 0
/* 800861E8 00083128  3B 00 00 04 */	li r24, 4
/* 800861EC 0008312C  38 80 00 00 */	li r4, 0
/* 800861F0 00083130  38 A0 00 00 */	li r5, 0
/* 800861F4 00083134  3B FF 00 01 */	addi r31, r31, 1
/* 800861F8 00083138  4E 80 00 21 */	blrl 
/* 800861FC 0008313C  7C 72 1B 78 */	mr r18, r3
/* 80086200 00083140  48 00 01 44 */	b lbl_80086344
lbl_80086204:
/* 80086204 00083144  3B 00 00 08 */	li r24, 8
/* 80086208 00083148  48 00 01 3C */	b lbl_80086344
/* 8008620C 0008314C  2C 12 00 58 */	cmpwi r18, 0x58
/* 80086210 00083150  41 82 00 0C */	beq lbl_8008621C
/* 80086214 00083154  2C 12 00 78 */	cmpwi r18, 0x78
/* 80086218 00083158  40 82 00 30 */	bne lbl_80086248
lbl_8008621C:
/* 8008621C 0008315C  39 9D 00 00 */	addi r12, r29, 0
/* 80086220 00083160  7D 88 03 A6 */	mtlr r12
/* 80086224 00083164  38 7E 00 00 */	addi r3, r30, 0
/* 80086228 00083168  3B 80 00 10 */	li r28, 0x10
/* 8008622C 0008316C  3B 00 00 08 */	li r24, 8
/* 80086230 00083170  38 80 00 00 */	li r4, 0
/* 80086234 00083174  38 A0 00 00 */	li r5, 0
/* 80086238 00083178  3B FF 00 01 */	addi r31, r31, 1
/* 8008623C 0008317C  4E 80 00 21 */	blrl 
/* 80086240 00083180  7C 72 1B 78 */	mr r18, r3
/* 80086244 00083184  48 00 01 00 */	b lbl_80086344
lbl_80086248:
/* 80086248 00083188  2C 1C 00 00 */	cmpwi r28, 0
/* 8008624C 0008318C  40 82 00 08 */	bne lbl_80086254
/* 80086250 00083190  3B 80 00 08 */	li r28, 8
lbl_80086254:
/* 80086254 00083194  3B 00 00 10 */	li r24, 0x10
/* 80086258 00083198  48 00 00 EC */	b lbl_80086344
/* 8008625C 0008319C  2C 1C 00 00 */	cmpwi r28, 0
/* 80086260 000831A0  40 82 00 08 */	bne lbl_80086268
/* 80086264 000831A4  3B 80 00 0A */	li r28, 0xa
lbl_80086268:
/* 80086268 000831A8  28 1A 00 00 */	cmplwi r26, 0
/* 8008626C 000831AC  40 82 00 0C */	bne lbl_80086278
/* 80086270 000831B0  38 00 FF FF */	li r0, -1
/* 80086274 000831B4  7F 40 E3 96 */	divwu r26, r0, r28
lbl_80086278:
/* 80086278 000831B8  56 40 06 3E */	clrlwi r0, r18, 0x18
/* 8008627C 000831BC  7C 79 02 14 */	add r3, r25, r0
/* 80086280 000831C0  88 63 00 00 */	lbz r3, 0(r3)
/* 80086284 000831C4  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80086288 000831C8  41 82 00 2C */	beq lbl_800862B4
/* 8008628C 000831CC  3A 52 FF D0 */	addi r18, r18, -48
/* 80086290 000831D0  7C 12 E0 00 */	cmpw r18, r28
/* 80086294 000831D4  41 80 00 60 */	blt lbl_800862F4
/* 80086298 000831D8  2C 18 00 10 */	cmpwi r24, 0x10
/* 8008629C 000831DC  40 82 00 0C */	bne lbl_800862A8
/* 800862A0 000831E0  3B 00 00 20 */	li r24, 0x20
/* 800862A4 000831E4  48 00 00 08 */	b lbl_800862AC
lbl_800862A8:
/* 800862A8 000831E8  3B 00 00 40 */	li r24, 0x40
lbl_800862AC:
/* 800862AC 000831EC  3A 52 00 30 */	addi r18, r18, 0x30
/* 800862B0 000831F0  48 00 00 94 */	b lbl_80086344
lbl_800862B4:
/* 800862B4 000831F4  54 60 06 33 */	rlwinm. r0, r3, 0, 0x18, 0x19
/* 800862B8 000831F8  41 82 00 18 */	beq lbl_800862D0
/* 800862BC 000831FC  7E 43 93 78 */	mr r3, r18
/* 800862C0 00083200  4B FF D5 9D */	bl toupper
/* 800862C4 00083204  38 03 FF C9 */	addi r0, r3, -55
/* 800862C8 00083208  7C 00 E0 00 */	cmpw r0, r28
/* 800862CC 0008320C  41 80 00 1C */	blt lbl_800862E8
lbl_800862D0:
/* 800862D0 00083210  2C 18 00 10 */	cmpwi r24, 0x10
/* 800862D4 00083214  40 82 00 0C */	bne lbl_800862E0
/* 800862D8 00083218  3B 00 00 20 */	li r24, 0x20
/* 800862DC 0008321C  48 00 00 68 */	b lbl_80086344
lbl_800862E0:
/* 800862E0 00083220  3B 00 00 40 */	li r24, 0x40
/* 800862E4 00083224  48 00 00 60 */	b lbl_80086344
lbl_800862E8:
/* 800862E8 00083228  7E 43 93 78 */	mr r3, r18
/* 800862EC 0008322C  4B FF D5 71 */	bl toupper
/* 800862F0 00083230  3A 43 FF C9 */	addi r18, r3, -55
lbl_800862F4:
/* 800862F4 00083234  7C 1B D0 40 */	cmplw r27, r26
/* 800862F8 00083238  40 81 00 0C */	ble lbl_80086304
/* 800862FC 0008323C  38 00 00 01 */	li r0, 1
/* 80086300 00083240  90 17 00 00 */	stw r0, 0(r23)
lbl_80086304:
/* 80086304 00083244  7F 7B E1 D6 */	mullw r27, r27, r28
/* 80086308 00083248  20 1B FF FF */	subfic r0, r27, -1
/* 8008630C 0008324C  7C 12 00 40 */	cmplw r18, r0
/* 80086310 00083250  40 81 00 0C */	ble lbl_8008631C
/* 80086314 00083254  38 00 00 01 */	li r0, 1
/* 80086318 00083258  90 17 00 00 */	stw r0, 0(r23)
lbl_8008631C:
/* 8008631C 0008325C  39 9D 00 00 */	addi r12, r29, 0
/* 80086320 00083260  7D 88 03 A6 */	mtlr r12
/* 80086324 00083264  38 7E 00 00 */	addi r3, r30, 0
/* 80086328 00083268  7F 7B 92 14 */	add r27, r27, r18
/* 8008632C 0008326C  3B 00 00 10 */	li r24, 0x10
/* 80086330 00083270  38 80 00 00 */	li r4, 0
/* 80086334 00083274  38 A0 00 00 */	li r5, 0
/* 80086338 00083278  3B FF 00 01 */	addi r31, r31, 1
/* 8008633C 0008327C  4E 80 00 21 */	blrl 
/* 80086340 00083280  7C 72 1B 78 */	mr r18, r3
lbl_80086344:
/* 80086344 00083284  7C 1F B0 00 */	cmpw r31, r22
/* 80086348 00083288  41 81 00 14 */	bgt lbl_8008635C
/* 8008634C 0008328C  2C 12 FF FF */	cmpwi r18, -1
/* 80086350 00083290  41 82 00 0C */	beq lbl_8008635C
/* 80086354 00083294  57 00 06 75 */	rlwinm. r0, r24, 0, 0x19, 0x1a
/* 80086358 00083298  41 82 FD B8 */	beq lbl_80086110
lbl_8008635C:
/* 8008635C 0008329C  73 00 00 34 */	andi. r0, r24, 0x34
/* 80086360 000832A0  40 82 00 10 */	bne lbl_80086370
/* 80086364 000832A4  3B 60 00 00 */	li r27, 0
/* 80086368 000832A8  3B E0 00 00 */	li r31, 0
/* 8008636C 000832AC  48 00 00 08 */	b lbl_80086374
lbl_80086370:
/* 80086370 000832B0  3B FF FF FF */	addi r31, r31, -1
lbl_80086374:
/* 80086374 000832B4  7F AC EB 78 */	mr r12, r29
/* 80086378 000832B8  93 F3 00 00 */	stw r31, 0(r19)
/* 8008637C 000832BC  7D 88 03 A6 */	mtlr r12
/* 80086380 000832C0  38 7E 00 00 */	addi r3, r30, 0
/* 80086384 000832C4  38 92 00 00 */	addi r4, r18, 0
/* 80086388 000832C8  38 A0 00 01 */	li r5, 1
/* 8008638C 000832CC  4E 80 00 21 */	blrl 
/* 80086390 000832D0  7F 63 DB 78 */	mr r3, r27
/* 80086394 000832D4  BA 41 00 28 */	lmw r18, 0x28(r1)
/* 80086398 000832D8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8008639C 000832DC  38 21 00 60 */	addi r1, r1, 0x60
/* 800863A0 000832E0  7C 08 03 A6 */	mtlr r0
/* 800863A4 000832E4  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
$$2410:
	.incbin "baserom.dol", 0x3ABEF8, 0x48
