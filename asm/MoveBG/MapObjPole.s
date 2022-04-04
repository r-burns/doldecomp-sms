.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __dt__18TMapObjPoleManagerFv
__dt__18TMapObjPoleManagerFv:
/* 801C18AC 001BE7EC  7C 08 02 A6 */	mflr r0
/* 801C18B0 001BE7F0  90 01 00 04 */	stw r0, 4(r1)
/* 801C18B4 001BE7F4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801C18B8 001BE7F8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801C18BC 001BE7FC  3B E4 00 00 */	addi r31, r4, 0
/* 801C18C0 001BE800  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801C18C4 001BE804  7C 7E 1B 79 */	or. r30, r3, r3
/* 801C18C8 001BE808  41 82 00 3C */	beq lbl_801C1904
/* 801C18CC 001BE80C  3C 60 80 3D */	lis r3, __vt__18TMapObjPoleManager@ha
/* 801C18D0 001BE810  38 03 B6 60 */	addi r0, r3, __vt__18TMapObjPoleManager@l
/* 801C18D4 001BE814  90 1E 00 00 */	stw r0, 0(r30)
/* 801C18D8 001BE818  41 82 00 1C */	beq lbl_801C18F4
/* 801C18DC 001BE81C  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 801C18E0 001BE820  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 801C18E4 001BE824  90 1E 00 00 */	stw r0, 0(r30)
/* 801C18E8 001BE828  38 7E 00 00 */	addi r3, r30, 0
/* 801C18EC 001BE82C  38 80 00 00 */	li r4, 0
/* 801C18F0 001BE830  4B E8 2F 0D */	bl __dt__Q26JDrama8TNameRefFv
lbl_801C18F4:
/* 801C18F4 001BE834  7F E0 07 35 */	extsh. r0, r31
/* 801C18F8 001BE838  40 81 00 0C */	ble lbl_801C1904
/* 801C18FC 001BE83C  7F C3 F3 78 */	mr r3, r30
/* 801C1900 001BE840  4B E4 B1 B1 */	bl __dl__FPv
lbl_801C1904:
/* 801C1904 001BE844  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801C1908 001BE848  7F C3 F3 78 */	mr r3, r30
/* 801C190C 001BE84C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801C1910 001BE850  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801C1914 001BE854  7C 08 03 A6 */	mtlr r0
/* 801C1918 001BE858  38 21 00 18 */	addi r1, r1, 0x18
/* 801C191C 001BE85C  4E 80 00 20 */	blr 

.global __ct__18TMapObjPoleManagerFPCc
__ct__18TMapObjPoleManagerFPCc:
/* 801C1920 001BE860  7C 08 02 A6 */	mflr r0
/* 801C1924 001BE864  90 01 00 04 */	stw r0, 4(r1)
/* 801C1928 001BE868  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801C192C 001BE86C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801C1930 001BE870  90 61 00 08 */	stw r3, 8(r1)
/* 801C1934 001BE874  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TNameRef@ha
/* 801C1938 001BE878  38 03 A8 60 */	addi r0, r3, __vt__Q26JDrama8TNameRef@l
/* 801C193C 001BE87C  83 E1 00 08 */	lwz r31, 8(r1)
/* 801C1940 001BE880  38 64 00 00 */	addi r3, r4, 0
/* 801C1944 001BE884  90 1F 00 00 */	stw r0, 0(r31)
/* 801C1948 001BE888  90 9F 00 04 */	stw r4, 4(r31)
/* 801C194C 001BE88C  4B E8 2D 41 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 801C1950 001BE890  B0 7F 00 08 */	sth r3, 8(r31)
/* 801C1954 001BE894  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 801C1958 001BE898  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 801C195C 001BE89C  90 1F 00 00 */	stw r0, 0(r31)
/* 801C1960 001BE8A0  38 00 00 00 */	li r0, 0
/* 801C1964 001BE8A4  3C 60 80 3D */	lis r3, __vt__18TMapObjPoleManager@ha
/* 801C1968 001BE8A8  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 801C196C 001BE8AC  38 03 B6 60 */	addi r0, r3, __vt__18TMapObjPoleManager@l
/* 801C1970 001BE8B0  3C 60 80 1C */	lis r3, __ct__Q218TMapObjPoleManager15TMapObjPoleInfoFv@ha
/* 801C1974 001BE8B4  90 1F 00 00 */	stw r0, 0(r31)
/* 801C1978 001BE8B8  38 83 19 AC */	addi r4, r3, __ct__Q218TMapObjPoleManager15TMapObjPoleInfoFv@l
/* 801C197C 001BE8BC  38 7F 00 10 */	addi r3, r31, 0x10
/* 801C1980 001BE8C0  38 A0 00 00 */	li r5, 0
/* 801C1984 001BE8C4  38 C0 00 58 */	li r6, 0x58
/* 801C1988 001BE8C8  38 E0 00 01 */	li r7, 1
/* 801C198C 001BE8CC  4B EC 0E A9 */	bl __construct_array
/* 801C1990 001BE8D0  93 ED 9A 88 */	stw r31, gpMapObjPoleManager@sda21(r13)
/* 801C1994 001BE8D4  7F E3 FB 78 */	mr r3, r31
/* 801C1998 001BE8D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801C199C 001BE8DC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801C19A0 001BE8E0  38 21 00 18 */	addi r1, r1, 0x18
/* 801C19A4 001BE8E4  7C 08 03 A6 */	mtlr r0
/* 801C19A8 001BE8E8  4E 80 00 20 */	blr 

.global __ct__Q218TMapObjPoleManager15TMapObjPoleInfoFv
__ct__Q218TMapObjPoleManager15TMapObjPoleInfoFv:
/* 801C19AC 001BE8EC  38 00 00 00 */	li r0, 0
/* 801C19B0 001BE8F0  90 03 00 00 */	stw r0, 0(r3)
/* 801C19B4 001BE8F4  90 03 00 54 */	stw r0, 0x54(r3)
/* 801C19B8 001BE8F8  4E 80 00 20 */	blr 

.global load__18TMapObjPoleManagerFR20JSUMemoryInputStream
load__18TMapObjPoleManagerFR20JSUMemoryInputStream:
/* 801C19BC 001BE8FC  7C 08 02 A6 */	mflr r0
/* 801C19C0 001BE900  90 01 00 04 */	stw r0, 4(r1)
/* 801C19C4 001BE904  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801C19C8 001BE908  93 E1 00 34 */	stw r31, 0x34(r1)
/* 801C19CC 001BE90C  7C 9F 23 78 */	mr r31, r4
/* 801C19D0 001BE910  4B E8 2E 81 */	bl load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
/* 801C19D4 001BE914  38 7F 00 00 */	addi r3, r31, 0
/* 801C19D8 001BE918  38 81 00 10 */	addi r4, r1, 0x10
/* 801C19DC 001BE91C  38 A0 00 20 */	li r5, 0x20
/* 801C19E0 001BE920  4B E4 CC DD */	bl readString__14JSUInputStreamFPcUs
/* 801C19E4 001BE924  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801C19E8 001BE928  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 801C19EC 001BE92C  38 21 00 38 */	addi r1, r1, 0x38
/* 801C19F0 001BE930  7C 08 03 A6 */	mtlr r0
/* 801C19F4 001BE934  4E 80 00 20 */	blr 

.global perform__18TMapObjPoleManagerFUlPQ26JDrama9TGraphics
perform__18TMapObjPoleManagerFUlPQ26JDrama9TGraphics:
/* 801C19F8 001BE938  7C 08 02 A6 */	mflr r0
/* 801C19FC 001BE93C  90 01 00 04 */	stw r0, 4(r1)
/* 801C1A00 001BE940  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 801C1A04 001BE944  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 801C1A08 001BE948  93 E1 00 74 */	stw r31, 0x74(r1)
/* 801C1A0C 001BE94C  93 C1 00 70 */	stw r30, 0x70(r1)
/* 801C1A10 001BE950  93 A1 00 6C */	stw r29, 0x6c(r1)
/* 801C1A14 001BE954  3B A3 00 00 */	addi r29, r3, 0
/* 801C1A18 001BE958  41 82 00 70 */	beq lbl_801C1A88
/* 801C1A1C 001BE95C  7F A3 EB 78 */	mr r3, r29
/* 801C1A20 001BE960  48 00 00 85 */	bl initDraw__18TMapObjPoleManagerFv
/* 801C1A24 001BE964  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 801C1A28 001BE968  2C 00 00 00 */	cmpwi r0, 0
/* 801C1A2C 001BE96C  41 82 00 5C */	beq lbl_801C1A88
/* 801C1A30 001BE970  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 801C1A34 001BE974  3B E0 00 00 */	li r31, 0
/* 801C1A38 001BE978  38 61 00 14 */	addi r3, r1, 0x14
/* 801C1A3C 001BE97C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801C1A40 001BE980  4B E5 1C 3D */	bl storeTIMG__10JUTTextureFPC7ResTIMG
/* 801C1A44 001BE984  9B E1 00 64 */	stb r31, 0x64(r1)
/* 801C1A48 001BE988  38 61 00 14 */	addi r3, r1, 0x14
/* 801C1A4C 001BE98C  38 80 00 00 */	li r4, 0
/* 801C1A50 001BE990  4B E5 20 29 */	bl load__10JUTTextureF11_GXTexMapID
/* 801C1A54 001BE994  3B C0 00 00 */	li r30, 0
/* 801C1A58 001BE998  48 00 00 18 */	b lbl_801C1A70
lbl_801C1A5C:
/* 801C1A5C 001BE99C  38 1F 00 14 */	addi r0, r31, 0x14
/* 801C1A60 001BE9A0  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801C1A64 001BE9A4  48 00 02 11 */	bl draw__11TMapObjPoleFv
/* 801C1A68 001BE9A8  3B DE 00 01 */	addi r30, r30, 1
/* 801C1A6C 001BE9AC  3B FF 00 04 */	addi r31, r31, 4
lbl_801C1A70:
/* 801C1A70 001BE9B0  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 801C1A74 001BE9B4  7C 1E 00 00 */	cmpw r30, r0
/* 801C1A78 001BE9B8  41 80 FF E4 */	blt lbl_801C1A5C
/* 801C1A7C 001BE9BC  38 61 00 14 */	addi r3, r1, 0x14
/* 801C1A80 001BE9C0  38 80 FF FF */	li r4, -1
/* 801C1A84 001BE9C4  4B E5 1B 89 */	bl __dt__10JUTTextureFv
lbl_801C1A88:
/* 801C1A88 001BE9C8  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 801C1A8C 001BE9CC  83 E1 00 74 */	lwz r31, 0x74(r1)
/* 801C1A90 001BE9D0  83 C1 00 70 */	lwz r30, 0x70(r1)
/* 801C1A94 001BE9D4  7C 08 03 A6 */	mtlr r0
/* 801C1A98 001BE9D8  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 801C1A9C 001BE9DC  38 21 00 78 */	addi r1, r1, 0x78
/* 801C1AA0 001BE9E0  4E 80 00 20 */	blr 

.global initDraw__18TMapObjPoleManagerFv
initDraw__18TMapObjPoleManagerFv:
/* 801C1AA4 001BE9E4  7C 08 02 A6 */	mflr r0
/* 801C1AA8 001BE9E8  38 60 00 00 */	li r3, 0
/* 801C1AAC 001BE9EC  90 01 00 04 */	stw r0, 4(r1)
/* 801C1AB0 001BE9F0  38 80 00 09 */	li r4, 9
/* 801C1AB4 001BE9F4  38 A0 00 01 */	li r5, 1
/* 801C1AB8 001BE9F8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801C1ABC 001BE9FC  38 C0 00 04 */	li r6, 4
/* 801C1AC0 001BEA00  38 E0 00 00 */	li r7, 0
/* 801C1AC4 001BEA04  4B EE 58 F1 */	bl GXSetVtxAttrFmt
/* 801C1AC8 001BEA08  38 60 00 00 */	li r3, 0
/* 801C1ACC 001BEA0C  38 80 00 0D */	li r4, 0xd
/* 801C1AD0 001BEA10  38 A0 00 01 */	li r5, 1
/* 801C1AD4 001BEA14  38 C0 00 04 */	li r6, 4
/* 801C1AD8 001BEA18  38 E0 00 00 */	li r7, 0
/* 801C1ADC 001BEA1C  4B EE 58 D9 */	bl GXSetVtxAttrFmt
/* 801C1AE0 001BEA20  4B EE 58 89 */	bl GXClearVtxDesc
/* 801C1AE4 001BEA24  38 60 00 09 */	li r3, 9
/* 801C1AE8 001BEA28  38 80 00 01 */	li r4, 1
/* 801C1AEC 001BEA2C  4B EE 4D FD */	bl GXSetVtxDesc
/* 801C1AF0 001BEA30  38 60 00 0D */	li r3, 0xd
/* 801C1AF4 001BEA34  38 80 00 01 */	li r4, 1
/* 801C1AF8 001BEA38  4B EE 4D F1 */	bl GXSetVtxDesc
/* 801C1AFC 001BEA3C  38 60 00 00 */	li r3, 0
/* 801C1B00 001BEA40  4B EE BD 0D */	bl GXSetCurrentMtx
/* 801C1B04 001BEA44  3C 60 80 40 */	lis r3, j3dSys@ha
/* 801C1B08 001BEA48  38 63 0E D8 */	addi r3, r3, j3dSys@l
/* 801C1B0C 001BEA4C  38 80 00 00 */	li r4, 0
/* 801C1B10 001BEA50  4B EE BC 1D */	bl GXLoadPosMtxImm
/* 801C1B14 001BEA54  38 60 00 00 */	li r3, 0
/* 801C1B18 001BEA58  4B EE 84 8D */	bl GXSetNumChans
/* 801C1B1C 001BEA5C  38 60 00 04 */	li r3, 4
/* 801C1B20 001BEA60  38 80 00 00 */	li r4, 0
/* 801C1B24 001BEA64  38 A0 00 00 */	li r5, 0
/* 801C1B28 001BEA68  38 C0 00 00 */	li r6, 0
/* 801C1B2C 001BEA6C  38 E0 00 00 */	li r7, 0
/* 801C1B30 001BEA70  39 00 00 00 */	li r8, 0
/* 801C1B34 001BEA74  39 20 00 02 */	li r9, 2
/* 801C1B38 001BEA78  4B EE 84 B9 */	bl GXSetChanCtrl
/* 801C1B3C 001BEA7C  38 60 00 05 */	li r3, 5
/* 801C1B40 001BEA80  38 80 00 00 */	li r4, 0
/* 801C1B44 001BEA84  38 A0 00 00 */	li r5, 0
/* 801C1B48 001BEA88  38 C0 00 00 */	li r6, 0
/* 801C1B4C 001BEA8C  38 E0 00 00 */	li r7, 0
/* 801C1B50 001BEA90  39 00 00 00 */	li r8, 0
/* 801C1B54 001BEA94  39 20 00 02 */	li r9, 2
/* 801C1B58 001BEA98  4B EE 84 99 */	bl GXSetChanCtrl
/* 801C1B5C 001BEA9C  80 02 C8 70 */	lwz r0, "@2186"@sda21(r2)
/* 801C1B60 001BEAA0  38 81 00 14 */	addi r4, r1, 0x14
/* 801C1B64 001BEAA4  38 60 00 04 */	li r3, 4
/* 801C1B68 001BEAA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C1B6C 001BEAAC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C1B70 001BEAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C1B74 001BEAB4  4B EE 82 C9 */	bl GXSetChanMatColor
/* 801C1B78 001BEAB8  38 60 00 01 */	li r3, 1
/* 801C1B7C 001BEABC  4B EE 65 D5 */	bl GXSetNumTexGens
/* 801C1B80 001BEAC0  38 60 00 00 */	li r3, 0
/* 801C1B84 001BEAC4  38 80 00 01 */	li r4, 1
/* 801C1B88 001BEAC8  38 A0 00 04 */	li r5, 4
/* 801C1B8C 001BEACC  38 C0 00 3C */	li r6, 0x3c
/* 801C1B90 001BEAD0  38 E0 00 00 */	li r7, 0
/* 801C1B94 001BEAD4  39 00 00 7D */	li r8, 0x7d
/* 801C1B98 001BEAD8  4B EE 62 E9 */	bl GXSetTexCoordGen2
/* 801C1B9C 001BEADC  38 60 00 01 */	li r3, 1
/* 801C1BA0 001BEAE0  4B EE A8 6D */	bl GXSetNumTevStages
/* 801C1BA4 001BEAE4  38 60 00 00 */	li r3, 0
/* 801C1BA8 001BEAE8  38 80 00 00 */	li r4, 0
/* 801C1BAC 001BEAEC  38 A0 00 00 */	li r5, 0
/* 801C1BB0 001BEAF0  38 C0 00 FF */	li r6, 0xff
/* 801C1BB4 001BEAF4  4B EE A6 7D */	bl GXSetTevOrder
/* 801C1BB8 001BEAF8  38 60 00 00 */	li r3, 0
/* 801C1BBC 001BEAFC  38 80 00 08 */	li r4, 8
/* 801C1BC0 001BEB00  38 A0 00 0F */	li r5, 0xf
/* 801C1BC4 001BEB04  38 C0 00 0F */	li r6, 0xf
/* 801C1BC8 001BEB08  38 E0 00 0F */	li r7, 0xf
/* 801C1BCC 001BEB0C  4B EE 9F E1 */	bl GXSetTevColorIn
/* 801C1BD0 001BEB10  38 60 00 00 */	li r3, 0
/* 801C1BD4 001BEB14  38 80 00 00 */	li r4, 0
/* 801C1BD8 001BEB18  38 A0 00 00 */	li r5, 0
/* 801C1BDC 001BEB1C  38 C0 00 00 */	li r6, 0
/* 801C1BE0 001BEB20  38 E0 00 01 */	li r7, 1
/* 801C1BE4 001BEB24  39 00 00 00 */	li r8, 0
/* 801C1BE8 001BEB28  4B EE A0 C9 */	bl GXSetTevColorOp
/* 801C1BEC 001BEB2C  38 60 00 00 */	li r3, 0
/* 801C1BF0 001BEB30  38 80 00 04 */	li r4, 4
/* 801C1BF4 001BEB34  38 A0 00 07 */	li r5, 7
/* 801C1BF8 001BEB38  38 C0 00 07 */	li r6, 7
/* 801C1BFC 001BEB3C  38 E0 00 07 */	li r7, 7
/* 801C1C00 001BEB40  4B EE A0 2D */	bl GXSetTevAlphaIn
/* 801C1C04 001BEB44  38 60 00 00 */	li r3, 0
/* 801C1C08 001BEB48  38 80 00 00 */	li r4, 0
/* 801C1C0C 001BEB4C  38 A0 00 00 */	li r5, 0
/* 801C1C10 001BEB50  38 C0 00 00 */	li r6, 0
/* 801C1C14 001BEB54  38 E0 00 01 */	li r7, 1
/* 801C1C18 001BEB58  39 00 00 00 */	li r8, 0
/* 801C1C1C 001BEB5C  4B EE A1 55 */	bl GXSetTevAlphaOp
/* 801C1C20 001BEB60  38 60 00 01 */	li r3, 1
/* 801C1C24 001BEB64  38 80 00 01 */	li r4, 1
/* 801C1C28 001BEB68  38 A0 00 00 */	li r5, 0
/* 801C1C2C 001BEB6C  38 C0 00 05 */	li r6, 5
/* 801C1C30 001BEB70  4B EE AA C1 */	bl GXSetBlendMode
/* 801C1C34 001BEB74  38 60 00 04 */	li r3, 4
/* 801C1C38 001BEB78  38 80 00 00 */	li r4, 0
/* 801C1C3C 001BEB7C  38 A0 00 00 */	li r5, 0
/* 801C1C40 001BEB80  38 C0 00 04 */	li r6, 4
/* 801C1C44 001BEB84  38 E0 00 00 */	li r7, 0
/* 801C1C48 001BEB88  4B EE A5 15 */	bl GXSetAlphaCompare
/* 801C1C4C 001BEB8C  38 60 00 01 */	li r3, 1
/* 801C1C50 001BEB90  38 80 00 03 */	li r4, 3
/* 801C1C54 001BEB94  38 A0 00 01 */	li r5, 1
/* 801C1C58 001BEB98  4B EE AC 1D */	bl GXSetZMode
/* 801C1C5C 001BEB9C  38 60 00 00 */	li r3, 0
/* 801C1C60 001BEBA0  4B EE 6E D1 */	bl GXSetCullMode
/* 801C1C64 001BEBA4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801C1C68 001BEBA8  38 21 00 18 */	addi r1, r1, 0x18
/* 801C1C6C 001BEBAC  7C 08 03 A6 */	mtlr r0
/* 801C1C70 001BEBB0  4E 80 00 20 */	blr 

.global draw__11TMapObjPoleFv
draw__11TMapObjPoleFv:
/* 801C1C74 001BEBB4  7C 08 02 A6 */	mflr r0
/* 801C1C78 001BEBB8  38 80 00 00 */	li r4, 0
/* 801C1C7C 001BEBBC  90 01 00 04 */	stw r0, 4(r1)
/* 801C1C80 001BEBC0  38 A0 00 08 */	li r5, 8
/* 801C1C84 001BEBC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C1C88 001BEBC8  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 801C1C8C 001BEBCC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801C1C90 001BEBD0  DB A1 00 38 */	stfd f29, 0x38(r1)
/* 801C1C94 001BEBD4  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 801C1C98 001BEBD8  DB 61 00 28 */	stfd f27, 0x28(r1)
/* 801C1C9C 001BEBDC  DB 41 00 20 */	stfd f26, 0x20(r1)
/* 801C1CA0 001BEBE0  DB 21 00 18 */	stfd f25, 0x18(r1)
/* 801C1CA4 001BEBE4  DB 01 00 10 */	stfd f24, 0x10(r1)
/* 801C1CA8 001BEBE8  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 801C1CAC 001BEBEC  C0 42 C8 78 */	lfs f2, "@2279"@sda21(r2)
/* 801C1CB0 001BEBF0  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 801C1CB4 001BEBF4  EC 1F F8 28 */	fsubs f0, f31, f31
/* 801C1CB8 001BEBF8  C0 A3 00 6C */	lfs f5, 0x6c(r3)
/* 801C1CBC 001BEBFC  EF 42 F8 7A */	fmadds f26, f2, f1, f31
/* 801C1CC0 001BEC00  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 801C1CC4 001BEC04  C0 43 00 68 */	lfs f2, 0x68(r3)
/* 801C1CC8 001BEC08  C0 83 00 18 */	lfs f4, 0x18(r3)
/* 801C1CCC 001BEC0C  EF 05 00 32 */	fmuls f24, f5, f0
/* 801C1CD0 001BEC10  EC 3A F8 28 */	fsubs f1, f26, f31
/* 801C1CD4 001BEC14  38 60 00 98 */	li r3, 0x98
/* 801C1CD8 001BEC18  EF C3 10 2A */	fadds f30, f3, f2
/* 801C1CDC 001BEC1C  EF A3 10 28 */	fsubs f29, f3, f2
/* 801C1CE0 001BEC20  EF 84 10 2A */	fadds f28, f4, f2
/* 801C1CE4 001BEC24  EF 64 10 28 */	fsubs f27, f4, f2
/* 801C1CE8 001BEC28  EF 25 00 72 */	fmuls f25, f5, f1
/* 801C1CEC 001BEC2C  4B EE 6B BD */	bl GXBegin
/* 801C1CF0 001BEC30  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 801C1CF4 001BEC34  C0 22 C8 74 */	lfs f1, "@2263"@sda21(r2)
/* 801C1CF8 001BEC38  D3 A3 80 00 */	stfs f29, 0xCC008000@l(r3)
/* 801C1CFC 001BEC3C  C0 02 C8 7C */	lfs f0, "@2303"@sda21(r2)
/* 801C1D00 001BEC40  D3 43 80 00 */	stfs f26, -0x8000(r3)
/* 801C1D04 001BEC44  D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 801C1D08 001BEC48  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 801C1D0C 001BEC4C  D3 23 80 00 */	stfs f25, -0x8000(r3)
/* 801C1D10 001BEC50  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 801C1D14 001BEC54  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 801C1D18 001BEC58  D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 801C1D1C 001BEC5C  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 801C1D20 001BEC60  D3 03 80 00 */	stfs f24, -0x8000(r3)
/* 801C1D24 001BEC64  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 801C1D28 001BEC68  D3 43 80 00 */	stfs f26, -0x8000(r3)
/* 801C1D2C 001BEC6C  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 801C1D30 001BEC70  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 801C1D34 001BEC74  D3 23 80 00 */	stfs f25, -0x8000(r3)
/* 801C1D38 001BEC78  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 801C1D3C 001BEC7C  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 801C1D40 001BEC80  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 801C1D44 001BEC84  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 801C1D48 001BEC88  D3 03 80 00 */	stfs f24, -0x8000(r3)
/* 801C1D4C 001BEC8C  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 801C1D50 001BEC90  D3 43 80 00 */	stfs f26, -0x8000(r3)
/* 801C1D54 001BEC94  D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 801C1D58 001BEC98  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 801C1D5C 001BEC9C  D3 23 80 00 */	stfs f25, -0x8000(r3)
/* 801C1D60 001BECA0  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 801C1D64 001BECA4  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 801C1D68 001BECA8  D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 801C1D6C 001BECAC  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 801C1D70 001BECB0  D3 03 80 00 */	stfs f24, -0x8000(r3)
/* 801C1D74 001BECB4  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 801C1D78 001BECB8  D3 43 80 00 */	stfs f26, -0x8000(r3)
/* 801C1D7C 001BECBC  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 801C1D80 001BECC0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 801C1D84 001BECC4  D3 23 80 00 */	stfs f25, -0x8000(r3)
/* 801C1D88 001BECC8  D3 A3 80 00 */	stfs f29, -0x8000(r3)
/* 801C1D8C 001BECCC  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 801C1D90 001BECD0  D3 83 80 00 */	stfs f28, -0x8000(r3)
/* 801C1D94 001BECD4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 801C1D98 001BECD8  D3 03 80 00 */	stfs f24, -0x8000(r3)
/* 801C1D9C 001BECDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C1DA0 001BECE0  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 801C1DA4 001BECE4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801C1DA8 001BECE8  CB A1 00 38 */	lfd f29, 0x38(r1)
/* 801C1DAC 001BECEC  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 801C1DB0 001BECF0  CB 61 00 28 */	lfd f27, 0x28(r1)
/* 801C1DB4 001BECF4  CB 41 00 20 */	lfd f26, 0x20(r1)
/* 801C1DB8 001BECF8  CB 21 00 18 */	lfd f25, 0x18(r1)
/* 801C1DBC 001BECFC  CB 01 00 10 */	lfd f24, 0x10(r1)
/* 801C1DC0 001BED00  38 21 00 50 */	addi r1, r1, 0x50
/* 801C1DC4 001BED04  7C 08 03 A6 */	mtlr r0
/* 801C1DC8 001BED08  4E 80 00 20 */	blr 

.global __sinit_MapObjPole_cpp
__sinit_MapObjPole_cpp:
/* 801C1DCC 001BED0C  7C 08 02 A6 */	mflr r0
/* 801C1DD0 001BED10  3C 60 80 3F */	lis r3, "@2311"@ha
/* 801C1DD4 001BED14  90 01 00 04 */	stw r0, 4(r1)
/* 801C1DD8 001BED18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C1DDC 001BED1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C1DE0 001BED20  3B E3 6B 48 */	addi r31, r3, "@2311"@l
/* 801C1DE4 001BED24  88 0D 97 CC */	lbz r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
/* 801C1DE8 001BED28  7C 00 07 75 */	extsb. r0, r0
/* 801C1DEC 001BED2C  40 82 00 28 */	bne lbl_801C1E14
/* 801C1DF0 001BED30  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 801C1DF4 001BED34  4B E4 CE 41 */	bl initiate__10JSUPtrListFv
/* 801C1DF8 001BED38  3C 60 80 0E */	lis r3, "__dt__15JSUList<5MSBgm>Fv"@ha
/* 801C1DFC 001BED3C  38 83 6A 44 */	addi r4, r3, "__dt__15JSUList<5MSBgm>Fv"@l
/* 801C1E00 001BED40  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 801C1E04 001BED44  38 BF 00 00 */	addi r5, r31, 0
/* 801C1E08 001BED48  4B EC 09 21 */	bl __register_global_object
/* 801C1E0C 001BED4C  38 00 00 01 */	li r0, 1
/* 801C1E10 001BED50  98 0D 97 CC */	stb r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
lbl_801C1E14:
/* 801C1E14 001BED54  88 0D 97 CD */	lbz r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
/* 801C1E18 001BED58  7C 00 07 75 */	extsb. r0, r0
/* 801C1E1C 001BED5C  40 82 00 28 */	bne lbl_801C1E44
/* 801C1E20 001BED60  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 801C1E24 001BED64  4B E4 CE 11 */	bl initiate__10JSUPtrListFv
/* 801C1E28 001BED68  3C 60 80 0E */	lis r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@ha
/* 801C1E2C 001BED6C  38 83 69 EC */	addi r4, r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@l
/* 801C1E30 001BED70  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 801C1E34 001BED74  38 BF 00 0C */	addi r5, r31, 0xc
/* 801C1E38 001BED78  4B EC 08 F1 */	bl __register_global_object
/* 801C1E3C 001BED7C  38 00 00 01 */	li r0, 1
/* 801C1E40 001BED80  98 0D 97 CD */	stb r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
lbl_801C1E44:
/* 801C1E44 001BED84  88 0D 97 CE */	lbz r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
/* 801C1E48 001BED88  7C 00 07 75 */	extsb. r0, r0
/* 801C1E4C 001BED8C  40 82 00 28 */	bne lbl_801C1E74
/* 801C1E50 001BED90  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 801C1E54 001BED94  4B E4 CD E1 */	bl initiate__10JSUPtrListFv
/* 801C1E58 001BED98  3C 60 80 0E */	lis r3, "__dt__21JSUList<10MSSetSound>Fv"@ha
/* 801C1E5C 001BED9C  38 83 69 94 */	addi r4, r3, "__dt__21JSUList<10MSSetSound>Fv"@l
/* 801C1E60 001BEDA0  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 801C1E64 001BEDA4  38 BF 00 18 */	addi r5, r31, 0x18
/* 801C1E68 001BEDA8  4B EC 08 C1 */	bl __register_global_object
/* 801C1E6C 001BEDAC  38 00 00 01 */	li r0, 1
/* 801C1E70 001BEDB0  98 0D 97 CE */	stb r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
lbl_801C1E74:
/* 801C1E74 001BEDB4  88 0D 8F 8C */	lbz r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
/* 801C1E78 001BEDB8  7C 00 07 75 */	extsb. r0, r0
/* 801C1E7C 001BEDBC  40 82 00 28 */	bne lbl_801C1EA4
/* 801C1E80 001BEDC0  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 801C1E84 001BEDC4  4B E4 CD B1 */	bl initiate__10JSUPtrListFv
/* 801C1E88 001BEDC8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@ha
/* 801C1E8C 001BEDCC  38 83 A8 0C */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@l
/* 801C1E90 001BEDD0  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 801C1E94 001BEDD4  38 BF 00 24 */	addi r5, r31, 0x24
/* 801C1E98 001BEDD8  4B EC 08 91 */	bl __register_global_object
/* 801C1E9C 001BEDDC  38 00 00 01 */	li r0, 1
/* 801C1EA0 001BEDE0  98 0D 8F 8C */	stb r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
lbl_801C1EA4:
/* 801C1EA4 001BEDE4  88 0D 8F 8D */	lbz r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
/* 801C1EA8 001BEDE8  7C 00 07 75 */	extsb. r0, r0
/* 801C1EAC 001BEDEC  40 82 00 28 */	bne lbl_801C1ED4
/* 801C1EB0 001BEDF0  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 801C1EB4 001BEDF4  4B E4 CD 81 */	bl initiate__10JSUPtrListFv
/* 801C1EB8 001BEDF8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@ha
/* 801C1EBC 001BEDFC  38 83 A7 B4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@l
/* 801C1EC0 001BEE00  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 801C1EC4 001BEE04  38 BF 00 30 */	addi r5, r31, 0x30
/* 801C1EC8 001BEE08  4B EC 08 61 */	bl __register_global_object
/* 801C1ECC 001BEE0C  38 00 00 01 */	li r0, 1
/* 801C1ED0 001BEE10  98 0D 8F 8D */	stb r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
lbl_801C1ED4:
/* 801C1ED4 001BEE14  88 0D 8F 8E */	lbz r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
/* 801C1ED8 001BEE18  7C 00 07 75 */	extsb. r0, r0
/* 801C1EDC 001BEE1C  40 82 00 28 */	bne lbl_801C1F04
/* 801C1EE0 001BEE20  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 801C1EE4 001BEE24  4B E4 CD 51 */	bl initiate__10JSUPtrListFv
/* 801C1EE8 001BEE28  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@ha
/* 801C1EEC 001BEE2C  38 83 A7 5C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@l
/* 801C1EF0 001BEE30  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 801C1EF4 001BEE34  38 BF 00 3C */	addi r5, r31, 0x3c
/* 801C1EF8 001BEE38  4B EC 08 31 */	bl __register_global_object
/* 801C1EFC 001BEE3C  38 00 00 01 */	li r0, 1
/* 801C1F00 001BEE40  98 0D 8F 8E */	stb r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
lbl_801C1F04:
/* 801C1F04 001BEE44  88 0D 8F 8F */	lbz r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
/* 801C1F08 001BEE48  7C 00 07 75 */	extsb. r0, r0
/* 801C1F0C 001BEE4C  40 82 00 28 */	bne lbl_801C1F34
/* 801C1F10 001BEE50  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 801C1F14 001BEE54  4B E4 CD 21 */	bl initiate__10JSUPtrListFv
/* 801C1F18 001BEE58  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@ha
/* 801C1F1C 001BEE5C  38 83 A7 04 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@l
/* 801C1F20 001BEE60  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 801C1F24 001BEE64  38 BF 00 48 */	addi r5, r31, 0x48
/* 801C1F28 001BEE68  4B EC 08 01 */	bl __register_global_object
/* 801C1F2C 001BEE6C  38 00 00 01 */	li r0, 1
/* 801C1F30 001BEE70  98 0D 8F 8F */	stb r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
lbl_801C1F34:
/* 801C1F34 001BEE74  88 0D 8F 90 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
/* 801C1F38 001BEE78  7C 00 07 75 */	extsb. r0, r0
/* 801C1F3C 001BEE7C  40 82 00 28 */	bne lbl_801C1F64
/* 801C1F40 001BEE80  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 801C1F44 001BEE84  4B E4 CC F1 */	bl initiate__10JSUPtrListFv
/* 801C1F48 001BEE88  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@ha
/* 801C1F4C 001BEE8C  38 83 A6 AC */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@l
/* 801C1F50 001BEE90  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 801C1F54 001BEE94  38 BF 00 54 */	addi r5, r31, 0x54
/* 801C1F58 001BEE98  4B EC 07 D1 */	bl __register_global_object
/* 801C1F5C 001BEE9C  38 00 00 01 */	li r0, 1
/* 801C1F60 001BEEA0  98 0D 8F 90 */	stb r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
lbl_801C1F64:
/* 801C1F64 001BEEA4  88 0D 8F 91 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
/* 801C1F68 001BEEA8  7C 00 07 75 */	extsb. r0, r0
/* 801C1F6C 001BEEAC  40 82 00 28 */	bne lbl_801C1F94
/* 801C1F70 001BEEB0  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 801C1F74 001BEEB4  4B E4 CC C1 */	bl initiate__10JSUPtrListFv
/* 801C1F78 001BEEB8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@ha
/* 801C1F7C 001BEEBC  38 83 A6 54 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@l
/* 801C1F80 001BEEC0  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 801C1F84 001BEEC4  38 BF 00 60 */	addi r5, r31, 0x60
/* 801C1F88 001BEEC8  4B EC 07 A1 */	bl __register_global_object
/* 801C1F8C 001BEECC  38 00 00 01 */	li r0, 1
/* 801C1F90 001BEED0  98 0D 8F 91 */	stb r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
lbl_801C1F94:
/* 801C1F94 001BEED4  88 0D 8F 92 */	lbz r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
/* 801C1F98 001BEED8  7C 00 07 75 */	extsb. r0, r0
/* 801C1F9C 001BEEDC  40 82 00 28 */	bne lbl_801C1FC4
/* 801C1FA0 001BEEE0  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 801C1FA4 001BEEE4  4B E4 CC 91 */	bl initiate__10JSUPtrListFv
/* 801C1FA8 001BEEE8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@ha
/* 801C1FAC 001BEEEC  38 83 A5 FC */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@l
/* 801C1FB0 001BEEF0  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 801C1FB4 001BEEF4  38 BF 00 6C */	addi r5, r31, 0x6c
/* 801C1FB8 001BEEF8  4B EC 07 71 */	bl __register_global_object
/* 801C1FBC 001BEEFC  38 00 00 01 */	li r0, 1
/* 801C1FC0 001BEF00  98 0D 8F 92 */	stb r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
lbl_801C1FC4:
/* 801C1FC4 001BEF04  88 0D 8F 93 */	lbz r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
/* 801C1FC8 001BEF08  7C 00 07 75 */	extsb. r0, r0
/* 801C1FCC 001BEF0C  40 82 00 28 */	bne lbl_801C1FF4
/* 801C1FD0 001BEF10  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 801C1FD4 001BEF14  4B E4 CC 61 */	bl initiate__10JSUPtrListFv
/* 801C1FD8 001BEF18  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@ha
/* 801C1FDC 001BEF1C  38 83 A5 A4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@l
/* 801C1FE0 001BEF20  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 801C1FE4 001BEF24  38 BF 00 78 */	addi r5, r31, 0x78
/* 801C1FE8 001BEF28  4B EC 07 41 */	bl __register_global_object
/* 801C1FEC 001BEF2C  38 00 00 01 */	li r0, 1
/* 801C1FF0 001BEF30  98 0D 8F 93 */	stb r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
lbl_801C1FF4:
/* 801C1FF4 001BEF34  88 0D 8F 94 */	lbz r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
/* 801C1FF8 001BEF38  7C 00 07 75 */	extsb. r0, r0
/* 801C1FFC 001BEF3C  40 82 00 28 */	bne lbl_801C2024
/* 801C2000 001BEF40  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 801C2004 001BEF44  4B E4 CC 31 */	bl initiate__10JSUPtrListFv
/* 801C2008 001BEF48  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@ha
/* 801C200C 001BEF4C  38 83 A5 4C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@l
/* 801C2010 001BEF50  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 801C2014 001BEF54  38 BF 00 84 */	addi r5, r31, 0x84
/* 801C2018 001BEF58  4B EC 07 11 */	bl __register_global_object
/* 801C201C 001BEF5C  38 00 00 01 */	li r0, 1
/* 801C2020 001BEF60  98 0D 8F 94 */	stb r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
lbl_801C2024:
/* 801C2024 001BEF64  88 0D 8F 95 */	lbz r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
/* 801C2028 001BEF68  7C 00 07 75 */	extsb. r0, r0
/* 801C202C 001BEF6C  40 82 00 28 */	bne lbl_801C2054
/* 801C2030 001BEF70  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 801C2034 001BEF74  4B E4 CC 01 */	bl initiate__10JSUPtrListFv
/* 801C2038 001BEF78  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@ha
/* 801C203C 001BEF7C  38 83 A4 F4 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@l
/* 801C2040 001BEF80  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 801C2044 001BEF84  38 BF 00 90 */	addi r5, r31, 0x90
/* 801C2048 001BEF88  4B EC 06 E1 */	bl __register_global_object
/* 801C204C 001BEF8C  38 00 00 01 */	li r0, 1
/* 801C2050 001BEF90  98 0D 8F 95 */	stb r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
lbl_801C2054:
/* 801C2054 001BEF94  88 0D 8F 96 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
/* 801C2058 001BEF98  7C 00 07 75 */	extsb. r0, r0
/* 801C205C 001BEF9C  40 82 00 28 */	bne lbl_801C2084
/* 801C2060 001BEFA0  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 801C2064 001BEFA4  4B E4 CB D1 */	bl initiate__10JSUPtrListFv
/* 801C2068 001BEFA8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@ha
/* 801C206C 001BEFAC  38 83 A4 9C */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@l
/* 801C2070 001BEFB0  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 801C2074 001BEFB4  38 BF 00 9C */	addi r5, r31, 0x9c
/* 801C2078 001BEFB8  4B EC 06 B1 */	bl __register_global_object
/* 801C207C 001BEFBC  38 00 00 01 */	li r0, 1
/* 801C2080 001BEFC0  98 0D 8F 96 */	stb r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
lbl_801C2084:
/* 801C2084 001BEFC4  88 0D 8F 97 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
/* 801C2088 001BEFC8  7C 00 07 75 */	extsb. r0, r0
/* 801C208C 001BEFCC  40 82 00 28 */	bne lbl_801C20B4
/* 801C2090 001BEFD0  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 801C2094 001BEFD4  4B E4 CB A1 */	bl initiate__10JSUPtrListFv
/* 801C2098 001BEFD8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@ha
/* 801C209C 001BEFDC  38 83 A4 44 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@l
/* 801C20A0 001BEFE0  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 801C20A4 001BEFE4  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 801C20A8 001BEFE8  4B EC 06 81 */	bl __register_global_object
/* 801C20AC 001BEFEC  38 00 00 01 */	li r0, 1
/* 801C20B0 001BEFF0  98 0D 8F 97 */	stb r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
lbl_801C20B4:
/* 801C20B4 001BEFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C20B8 001BEFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C20BC 001BEFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C20C0 001BF000  7C 08 03 A6 */	mtlr r0
/* 801C20C4 001BF004  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
lbl_constructor:
  .4byte __sinit_MapObjPole_cpp

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__18TMapObjPoleManager
__vt__18TMapObjPoleManager:
  .4byte 0
  .4byte 0
  .4byte __dt__18TMapObjPoleManagerFv
  .4byte getType__Q26JDrama8TNameRefCFv
  .4byte load__18TMapObjPoleManagerFR20JSUMemoryInputStream
  .4byte save__Q26JDrama8TNameRefFR21JSUMemoryOutputStream
  .4byte loadAfter__Q26JDrama8TNameRefFv
  .4byte searchF__Q26JDrama8TNameRefFUsPCc
  .4byte perform__18TMapObjPoleManagerFUlPQ26JDrama9TGraphics
  .4byte 0

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@2186":
  .4byte -1
"@2263":
  .4byte 0
"@2279":
	.incbin "baserom.dol", 0x3E8578, 0x4
"@2303":
	.incbin "baserom.dol", 0x3E857C, 0x4

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
"@2311":
	.skip 0xC
"@2312":
	.skip 0xC
"@2313":
	.skip 0xC
"@2314":
	.skip 0xC
"@2315":
	.skip 0xC
"@2316":
	.skip 0xC
"@2317":
	.skip 0xC
"@2318":
	.skip 0xC
"@2319":
	.skip 0xC
"@2320":
	.skip 0xC
"@2321":
	.skip 0xC
"@2322":
	.skip 0xC
"@2323":
	.skip 0xC
"@2324":
	.skip 0xC
"@2325":
	.skip 0x10

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global gpMapObjPoleManager
gpMapObjPoleManager:
	.skip 0x8
