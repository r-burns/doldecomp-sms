.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc
__ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc:
/* 80046FD4 00043F14  7C 08 02 A6 */	mflr r0
/* 80046FD8 00043F18  90 01 00 04 */	stw r0, 4(r1)
/* 80046FDC 00043F1C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80046FE0 00043F20  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80046FE4 00043F24  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80046FE8 00043F28  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80046FEC 00043F2C  3B A4 00 00 */	addi r29, r4, 0
/* 80046FF0 00043F30  90 61 00 08 */	stw r3, 8(r1)
/* 80046FF4 00043F34  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TNameRef@ha
/* 80046FF8 00043F38  38 03 A8 60 */	addi r0, r3, __vt__Q26JDrama8TNameRef@l
/* 80046FFC 00043F3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80047000 00043F40  7C A3 2B 78 */	mr r3, r5
/* 80047004 00043F44  90 1E 00 00 */	stw r0, 0(r30)
/* 80047008 00043F48  90 BE 00 04 */	stw r5, 4(r30)
/* 8004700C 00043F4C  4B FF D6 81 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80047010 00043F50  B0 7E 00 08 */	sth r3, 8(r30)
/* 80047014 00043F54  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 80047018 00043F58  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 8004701C 00043F5C  90 1E 00 00 */	stw r0, 0(r30)
/* 80047020 00043F60  3B E0 00 00 */	li r31, 0
/* 80047024 00043F64  3C 60 80 3B */	lis r3, __vt__Q26JDrama9TViewport@ha
/* 80047028 00043F68  B3 FE 00 0C */	sth r31, 0xc(r30)
/* 8004702C 00043F6C  38 03 AA 28 */	addi r0, r3, __vt__Q26JDrama9TViewport@l
/* 80047030 00043F70  38 9D 00 00 */	addi r4, r29, 0
/* 80047034 00043F74  90 1E 00 00 */	stw r0, 0(r30)
/* 80047038 00043F78  38 7E 00 10 */	addi r3, r30, 0x10
/* 8004703C 00043F7C  4B FC C1 F5 */	bl copy__7JUTRectFRC7JUTRect
/* 80047040 00043F80  B3 FE 00 20 */	sth r31, 0x20(r30)
/* 80047044 00043F84  7F C3 F3 78 */	mr r3, r30
/* 80047048 00043F88  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8004704C 00043F8C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80047050 00043F90  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80047054 00043F94  7C 08 03 A6 */	mtlr r0
/* 80047058 00043F98  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8004705C 00043F9C  38 21 00 28 */	addi r1, r1, 0x28
/* 80047060 00043FA0  4E 80 00 20 */	blr 

.global perform__Q26JDrama9TViewportFUlPQ26JDrama9TGraphics
perform__Q26JDrama9TViewportFUlPQ26JDrama9TGraphics:
/* 80047064 00043FA4  7C 08 02 A6 */	mflr r0
/* 80047068 00043FA8  90 01 00 04 */	stw r0, 4(r1)
/* 8004706C 00043FAC  70 80 00 88 */	andi. r0, r4, 0x88
/* 80047070 00043FB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80047074 00043FB4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80047078 00043FB8  3B E5 00 00 */	addi r31, r5, 0
/* 8004707C 00043FBC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80047080 00043FC0  3B C3 00 00 */	addi r30, r3, 0
/* 80047084 00043FC4  41 82 00 78 */	beq lbl_800470FC
/* 80047088 00043FC8  C0 22 84 08 */	lfs f1, $$2516@sda21(r2)
/* 8004708C 00043FCC  7F E3 FB 78 */	mr r3, r31
/* 80047090 00043FD0  C0 42 84 0C */	lfs f2, $$2517@sda21(r2)
/* 80047094 00043FD4  38 9E 00 10 */	addi r4, r30, 0x10
/* 80047098 00043FD8  4B FF C5 6D */	bl setViewport__Q26JDrama9TGraphicsFRCQ26JDrama5TRectff
/* 8004709C 00043FDC  A0 1E 00 20 */	lhz r0, 0x20(r30)
/* 800470A0 00043FE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800470A4 00043FE4  40 82 00 58 */	bne lbl_800470FC
/* 800470A8 00043FE8  38 9F 00 44 */	addi r4, r31, 0x44
/* 800470AC 00043FEC  38 61 00 18 */	addi r3, r1, 0x18
/* 800470B0 00043FF0  4B FC C1 81 */	bl copy__7JUTRectFRC7JUTRect
/* 800470B4 00043FF4  38 61 00 18 */	addi r3, r1, 0x18
/* 800470B8 00043FF8  38 9E 00 10 */	addi r4, r30, 0x10
/* 800470BC 00043FFC  4B FC C1 CD */	bl intersect__7JUTRectFRC7JUTRect
/* 800470C0 00044000  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800470C4 00044004  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800470C8 00044008  90 7F 00 64 */	stw r3, 0x64(r31)
/* 800470CC 0004400C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 800470D0 00044010  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800470D4 00044014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800470D8 00044018  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 800470DC 0004401C  90 1F 00 70 */	stw r0, 0x70(r31)
/* 800470E0 00044020  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 800470E4 00044024  80 BF 00 70 */	lwz r5, 0x70(r31)
/* 800470E8 00044028  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 800470EC 0004402C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 800470F0 00044030  7C C4 28 50 */	subf r6, r4, r5
/* 800470F4 00044034  7C A3 00 50 */	subf r5, r3, r0
/* 800470F8 00044038  48 06 69 61 */	bl GXSetScissor
lbl_800470FC:
/* 800470FC 0004403C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80047100 00044040  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80047104 00044044  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80047108 00044048  7C 08 03 A6 */	mtlr r0
/* 8004710C 0004404C  38 21 00 30 */	addi r1, r1, 0x30
/* 80047110 00044050  4E 80 00 20 */	blr 

.global load__Q26JDrama9TViewportFR20JSUMemoryInputStream
load__Q26JDrama9TViewportFR20JSUMemoryInputStream:
/* 80047114 00044054  7C 08 02 A6 */	mflr r0
/* 80047118 00044058  90 01 00 04 */	stw r0, 4(r1)
/* 8004711C 0004405C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80047120 00044060  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80047124 00044064  3B E4 00 00 */	addi r31, r4, 0
/* 80047128 00044068  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8004712C 0004406C  3B C3 00 00 */	addi r30, r3, 0
/* 80047130 00044070  4B FF D7 21 */	bl load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
/* 80047134 00044074  38 7F 00 00 */	addi r3, r31, 0
/* 80047138 00044078  38 9E 00 10 */	addi r4, r30, 0x10
/* 8004713C 0004407C  38 A0 00 04 */	li r5, 4
/* 80047140 00044080  4B FC 74 51 */	bl read__14JSUInputStreamFPvl
/* 80047144 00044084  38 7F 00 00 */	addi r3, r31, 0
/* 80047148 00044088  38 9E 00 14 */	addi r4, r30, 0x14
/* 8004714C 0004408C  38 A0 00 04 */	li r5, 4
/* 80047150 00044090  4B FC 74 41 */	bl read__14JSUInputStreamFPvl
/* 80047154 00044094  38 7F 00 00 */	addi r3, r31, 0
/* 80047158 00044098  38 9E 00 18 */	addi r4, r30, 0x18
/* 8004715C 0004409C  38 A0 00 04 */	li r5, 4
/* 80047160 000440A0  4B FC 74 31 */	bl read__14JSUInputStreamFPvl
/* 80047164 000440A4  38 7F 00 00 */	addi r3, r31, 0
/* 80047168 000440A8  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8004716C 000440AC  38 A0 00 04 */	li r5, 4
/* 80047170 000440B0  4B FC 74 21 */	bl read__14JSUInputStreamFPvl
/* 80047174 000440B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80047178 000440B8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8004717C 000440BC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80047180 000440C0  7C 08 03 A6 */	mtlr r0
/* 80047184 000440C4  38 21 00 18 */	addi r1, r1, 0x18
/* 80047188 000440C8  4E 80 00 20 */	blr 

.global __dt__Q26JDrama9TViewportFv
__dt__Q26JDrama9TViewportFv:
/* 8004718C 000440CC  7C 08 02 A6 */	mflr r0
/* 80047190 000440D0  90 01 00 04 */	stw r0, 4(r1)
/* 80047194 000440D4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80047198 000440D8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8004719C 000440DC  3B E4 00 00 */	addi r31, r4, 0
/* 800471A0 000440E0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800471A4 000440E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 800471A8 000440E8  41 82 00 3C */	beq lbl_800471E4
/* 800471AC 000440EC  3C 60 80 3B */	lis r3, __vt__Q26JDrama9TViewport@ha
/* 800471B0 000440F0  38 03 AA 28 */	addi r0, r3, __vt__Q26JDrama9TViewport@l
/* 800471B4 000440F4  90 1E 00 00 */	stw r0, 0(r30)
/* 800471B8 000440F8  41 82 00 1C */	beq lbl_800471D4
/* 800471BC 000440FC  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 800471C0 00044100  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 800471C4 00044104  90 1E 00 00 */	stw r0, 0(r30)
/* 800471C8 00044108  38 7E 00 00 */	addi r3, r30, 0
/* 800471CC 0004410C  38 80 00 00 */	li r4, 0
/* 800471D0 00044110  4B FF D6 2D */	bl __dt__Q26JDrama8TNameRefFv
lbl_800471D4:
/* 800471D4 00044114  7F E0 07 35 */	extsh. r0, r31
/* 800471D8 00044118  40 81 00 0C */	ble lbl_800471E4
/* 800471DC 0004411C  7F C3 F3 78 */	mr r3, r30
/* 800471E0 00044120  4B FC 58 D1 */	bl __dl__FPv
lbl_800471E4:
/* 800471E4 00044124  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800471E8 00044128  7F C3 F3 78 */	mr r3, r30
/* 800471EC 0004412C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800471F0 00044130  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800471F4 00044134  7C 08 03 A6 */	mtlr r0
/* 800471F8 00044138  38 21 00 18 */	addi r1, r1, 0x18
/* 800471FC 0004413C  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__Q26JDrama9TViewport
__vt__Q26JDrama9TViewport:
  .4byte 0
  .4byte 0
  .4byte __dt__Q26JDrama9TViewportFv
  .4byte getType__Q26JDrama8TNameRefCFv
  .4byte load__Q26JDrama9TViewportFR20JSUMemoryInputStream
  .4byte save__Q26JDrama8TNameRefFR21JSUMemoryOutputStream
  .4byte loadAfter__Q26JDrama8TNameRefFv
  .4byte searchF__Q26JDrama8TNameRefFUsPCc
  .4byte perform__Q26JDrama9TViewportFUlPQ26JDrama9TGraphics
  .4byte 0

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
$$2516:
  .4byte 0
$$2517:
	.incbin "baserom.dol", 0x3E410C, 0x4
