.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global GXCPInterruptHandler
GXCPInterruptHandler:
/* 800A5FD4 000A2F14  7C 08 02 A6 */	mflr r0
/* 800A5FD8 000A2F18  90 01 00 04 */	stw r0, 4(r1)
/* 800A5FDC 000A2F1C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800A5FE0 000A2F20  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800A5FE4 000A2F24  7C 9F 23 78 */	mr r31, r4
/* 800A5FE8 000A2F28  80 AD 95 5C */	lwz r5, __cpReg@sda21(r13)
/* 800A5FEC 000A2F2C  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A5FF0 000A2F30  A0 05 00 00 */	lhz r0, 0(r5)
/* 800A5FF4 000A2F34  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A5FF8 000A2F38  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A5FFC 000A2F3C  80 03 00 08 */	lwz r0, 8(r3)
/* 800A6000 000A2F40  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 800A6004 000A2F44  41 82 00 38 */	beq lbl_800A603C
/* 800A6008 000A2F48  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A600C 000A2F4C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 800A6010 000A2F50  41 82 00 2C */	beq lbl_800A603C
/* 800A6014 000A2F54  80 6D 95 70 */	lwz r3, __GXCurrentThread@sda21(r13)
/* 800A6018 000A2F58  4B FE D7 F1 */	bl OSResumeThread
/* 800A601C 000A2F5C  38 00 00 00 */	li r0, 0
/* 800A6020 000A2F60  90 0D 95 78 */	stw r0, GXOverflowSuspendInProgress@sda21(r13)
/* 800A6024 000A2F64  38 60 00 01 */	li r3, 1
/* 800A6028 000A2F68  38 80 00 01 */	li r4, 1
/* 800A602C 000A2F6C  48 00 07 11 */	bl __GXWriteFifoIntReset
/* 800A6030 000A2F70  38 60 00 01 */	li r3, 1
/* 800A6034 000A2F74  38 80 00 00 */	li r4, 0
/* 800A6038 000A2F78  48 00 06 B9 */	bl __GXWriteFifoIntEnable
lbl_800A603C:
/* 800A603C 000A2F7C  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A6040 000A2F80  80 03 00 08 */	lwz r0, 8(r3)
/* 800A6044 000A2F84  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 800A6048 000A2F88  41 82 00 44 */	beq lbl_800A608C
/* 800A604C 000A2F8C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A6050 000A2F90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A6054 000A2F94  41 82 00 38 */	beq lbl_800A608C
/* 800A6058 000A2F98  80 AD 95 80 */	lwz r5, __GXOverflowCount@sda21(r13)
/* 800A605C 000A2F9C  38 60 00 00 */	li r3, 0
/* 800A6060 000A2FA0  38 80 00 01 */	li r4, 1
/* 800A6064 000A2FA4  38 05 00 01 */	addi r0, r5, 1
/* 800A6068 000A2FA8  90 0D 95 80 */	stw r0, __GXOverflowCount@sda21(r13)
/* 800A606C 000A2FAC  48 00 06 85 */	bl __GXWriteFifoIntEnable
/* 800A6070 000A2FB0  38 60 00 01 */	li r3, 1
/* 800A6074 000A2FB4  38 80 00 00 */	li r4, 0
/* 800A6078 000A2FB8  48 00 06 C5 */	bl __GXWriteFifoIntReset
/* 800A607C 000A2FBC  38 00 00 01 */	li r0, 1
/* 800A6080 000A2FC0  80 6D 95 70 */	lwz r3, __GXCurrentThread@sda21(r13)
/* 800A6084 000A2FC4  90 0D 95 78 */	stw r0, GXOverflowSuspendInProgress@sda21(r13)
/* 800A6088 000A2FC8  4B FE DA 09 */	bl OSSuspendThread
lbl_800A608C:
/* 800A608C 000A2FCC  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A6090 000A2FD0  80 83 00 08 */	lwz r4, 8(r3)
/* 800A6094 000A2FD4  38 A3 00 08 */	addi r5, r3, 8
/* 800A6098 000A2FD8  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 800A609C 000A2FDC  41 82 00 60 */	beq lbl_800A60FC
/* 800A60A0 000A2FE0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A60A4 000A2FE4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 800A60A8 000A2FE8  41 82 00 54 */	beq lbl_800A60FC
/* 800A60AC 000A2FEC  54 80 06 F2 */	rlwinm r0, r4, 0, 0x1b, 0x19
/* 800A60B0 000A2FF0  90 05 00 00 */	stw r0, 0(r5)
/* 800A60B4 000A2FF4  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A60B8 000A2FF8  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A60BC 000A2FFC  80 04 00 08 */	lwz r0, 8(r4)
/* 800A60C0 000A3000  B0 03 00 02 */	sth r0, 2(r3)
/* 800A60C4 000A3004  80 0D 95 7C */	lwz r0, BreakPointCB@sda21(r13)
/* 800A60C8 000A3008  28 00 00 00 */	cmplwi r0, 0
/* 800A60CC 000A300C  41 82 00 30 */	beq lbl_800A60FC
/* 800A60D0 000A3010  38 61 00 10 */	addi r3, r1, 0x10
/* 800A60D4 000A3014  4B FE 89 11 */	bl OSClearContext
/* 800A60D8 000A3018  38 61 00 10 */	addi r3, r1, 0x10
/* 800A60DC 000A301C  4B FE 87 41 */	bl OSSetCurrentContext
/* 800A60E0 000A3020  81 8D 95 7C */	lwz r12, BreakPointCB@sda21(r13)
/* 800A60E4 000A3024  7D 88 03 A6 */	mtlr r12
/* 800A60E8 000A3028  4E 80 00 21 */	blrl 
/* 800A60EC 000A302C  38 61 00 10 */	addi r3, r1, 0x10
/* 800A60F0 000A3030  4B FE 88 F5 */	bl OSClearContext
/* 800A60F4 000A3034  7F E3 FB 78 */	mr r3, r31
/* 800A60F8 000A3038  4B FE 87 25 */	bl OSSetCurrentContext
lbl_800A60FC:
/* 800A60FC 000A303C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800A6100 000A3040  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800A6104 000A3044  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800A6108 000A3048  7C 08 03 A6 */	mtlr r0
/* 800A610C 000A304C  4E 80 00 20 */	blr 

.global GXInitFifoBase
GXInitFifoBase:
/* 800A6110 000A3050  7C 08 02 A6 */	mflr r0
/* 800A6114 000A3054  90 01 00 04 */	stw r0, 4(r1)
/* 800A6118 000A3058  38 05 FF FC */	addi r0, r5, -4
/* 800A611C 000A305C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A6120 000A3060  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A6124 000A3064  3B E4 00 00 */	addi r31, r4, 0
/* 800A6128 000A3068  7C 1F 02 14 */	add r0, r31, r0
/* 800A612C 000A306C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A6130 000A3070  3B C3 00 00 */	addi r30, r3, 0
/* 800A6134 000A3074  38 85 C0 00 */	addi r4, r5, -16384
/* 800A6138 000A3078  93 E3 00 00 */	stw r31, 0(r3)
/* 800A613C 000A307C  90 03 00 04 */	stw r0, 4(r3)
/* 800A6140 000A3080  38 00 00 00 */	li r0, 0
/* 800A6144 000A3084  90 A3 00 08 */	stw r5, 8(r3)
/* 800A6148 000A3088  54 A5 F8 74 */	rlwinm r5, r5, 0x1f, 1, 0x1a
/* 800A614C 000A308C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 800A6150 000A3090  48 00 00 9D */	bl GXInitFifoLimits
/* 800A6154 000A3094  38 7E 00 00 */	addi r3, r30, 0
/* 800A6158 000A3098  38 9F 00 00 */	addi r4, r31, 0
/* 800A615C 000A309C  38 BF 00 00 */	addi r5, r31, 0
/* 800A6160 000A30A0  48 00 00 1D */	bl GXInitFifoPtrs
/* 800A6164 000A30A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A6168 000A30A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A616C 000A30AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A6170 000A30B0  38 21 00 20 */	addi r1, r1, 0x20
/* 800A6174 000A30B4  7C 08 03 A6 */	mtlr r0
/* 800A6178 000A30B8  4E 80 00 20 */	blr 

.global GXInitFifoPtrs
GXInitFifoPtrs:
/* 800A617C 000A30BC  7C 08 02 A6 */	mflr r0
/* 800A6180 000A30C0  90 01 00 04 */	stw r0, 4(r1)
/* 800A6184 000A30C4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800A6188 000A30C8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800A618C 000A30CC  3B E5 00 00 */	addi r31, r5, 0
/* 800A6190 000A30D0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800A6194 000A30D4  3B C4 00 00 */	addi r30, r4, 0
/* 800A6198 000A30D8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800A619C 000A30DC  3B A3 00 00 */	addi r29, r3, 0
/* 800A61A0 000A30E0  4B FE A0 2D */	bl OSDisableInterrupts
/* 800A61A4 000A30E4  93 DD 00 14 */	stw r30, 0x14(r29)
/* 800A61A8 000A30E8  7C 1E F8 50 */	subf r0, r30, r31
/* 800A61AC 000A30EC  93 FD 00 18 */	stw r31, 0x18(r29)
/* 800A61B0 000A30F0  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 800A61B4 000A30F4  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 800A61B8 000A30F8  2C 04 00 00 */	cmpwi r4, 0
/* 800A61BC 000A30FC  40 80 00 10 */	bge lbl_800A61CC
/* 800A61C0 000A3100  80 1D 00 08 */	lwz r0, 8(r29)
/* 800A61C4 000A3104  7C 04 02 14 */	add r0, r4, r0
/* 800A61C8 000A3108  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_800A61CC:
/* 800A61CC 000A310C  4B FE A0 29 */	bl OSRestoreInterrupts
/* 800A61D0 000A3110  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800A61D4 000A3114  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800A61D8 000A3118  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800A61DC 000A311C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800A61E0 000A3120  38 21 00 28 */	addi r1, r1, 0x28
/* 800A61E4 000A3124  7C 08 03 A6 */	mtlr r0
/* 800A61E8 000A3128  4E 80 00 20 */	blr 

.global GXInitFifoLimits
GXInitFifoLimits:
/* 800A61EC 000A312C  90 83 00 0C */	stw r4, 0xc(r3)
/* 800A61F0 000A3130  90 A3 00 10 */	stw r5, 0x10(r3)
/* 800A61F4 000A3134  4E 80 00 20 */	blr 

.global GXSetCPUFifo
GXSetCPUFifo:
/* 800A61F8 000A3138  7C 08 02 A6 */	mflr r0
/* 800A61FC 000A313C  90 01 00 04 */	stw r0, 4(r1)
/* 800A6200 000A3140  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A6204 000A3144  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A6208 000A3148  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800A620C 000A314C  7C 7E 1B 78 */	mr r30, r3
/* 800A6210 000A3150  4B FE 9F BD */	bl OSDisableInterrupts
/* 800A6214 000A3154  80 0D 95 6C */	lwz r0, GPFifo@sda21(r13)
/* 800A6218 000A3158  3B E3 00 00 */	addi r31, r3, 0
/* 800A621C 000A315C  93 CD 95 68 */	stw r30, CPUFifo@sda21(r13)
/* 800A6220 000A3160  7C 1E 00 40 */	cmplw r30, r0
/* 800A6224 000A3164  40 82 00 64 */	bne lbl_800A6288
/* 800A6228 000A3168  80 BE 00 00 */	lwz r5, 0(r30)
/* 800A622C 000A316C  38 00 00 01 */	li r0, 1
/* 800A6230 000A3170  80 8D 95 58 */	lwz r4, __piReg@sda21(r13)
/* 800A6234 000A3174  38 60 00 01 */	li r3, 1
/* 800A6238 000A3178  54 A5 00 BE */	clrlwi r5, r5, 2
/* 800A623C 000A317C  90 A4 00 0C */	stw r5, 0xc(r4)
/* 800A6240 000A3180  38 80 00 01 */	li r4, 1
/* 800A6244 000A3184  80 DE 00 04 */	lwz r6, 4(r30)
/* 800A6248 000A3188  80 AD 95 58 */	lwz r5, __piReg@sda21(r13)
/* 800A624C 000A318C  54 C6 00 BE */	clrlwi r6, r6, 2
/* 800A6250 000A3190  90 C5 00 10 */	stw r6, 0x10(r5)
/* 800A6254 000A3194  80 DE 00 18 */	lwz r6, 0x18(r30)
/* 800A6258 000A3198  80 AD 95 58 */	lwz r5, __piReg@sda21(r13)
/* 800A625C 000A319C  54 C6 00 B4 */	rlwinm r6, r6, 0, 2, 0x1a
/* 800A6260 000A31A0  54 C6 01 88 */	rlwinm r6, r6, 0, 6, 4
/* 800A6264 000A31A4  90 C5 00 14 */	stw r6, 0x14(r5)
/* 800A6268 000A31A8  98 0D 95 74 */	stb r0, CPGPLinked@sda21(r13)
/* 800A626C 000A31AC  48 00 04 D1 */	bl __GXWriteFifoIntReset
/* 800A6270 000A31B0  38 60 00 01 */	li r3, 1
/* 800A6274 000A31B4  38 80 00 00 */	li r4, 0
/* 800A6278 000A31B8  48 00 04 79 */	bl __GXWriteFifoIntEnable
/* 800A627C 000A31BC  38 60 00 01 */	li r3, 1
/* 800A6280 000A31C0  48 00 04 2D */	bl __GXFifoLink
/* 800A6284 000A31C4  48 00 00 60 */	b lbl_800A62E4
lbl_800A6288:
/* 800A6288 000A31C8  88 0D 95 74 */	lbz r0, CPGPLinked@sda21(r13)
/* 800A628C 000A31CC  28 00 00 00 */	cmplwi r0, 0
/* 800A6290 000A31D0  41 82 00 14 */	beq lbl_800A62A4
/* 800A6294 000A31D4  38 60 00 00 */	li r3, 0
/* 800A6298 000A31D8  48 00 04 15 */	bl __GXFifoLink
/* 800A629C 000A31DC  38 00 00 00 */	li r0, 0
/* 800A62A0 000A31E0  98 0D 95 74 */	stb r0, CPGPLinked@sda21(r13)
lbl_800A62A4:
/* 800A62A4 000A31E4  38 60 00 00 */	li r3, 0
/* 800A62A8 000A31E8  38 80 00 00 */	li r4, 0
/* 800A62AC 000A31EC  48 00 04 45 */	bl __GXWriteFifoIntEnable
/* 800A62B0 000A31F0  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A62B4 000A31F4  80 6D 95 58 */	lwz r3, __piReg@sda21(r13)
/* 800A62B8 000A31F8  54 00 00 BE */	clrlwi r0, r0, 2
/* 800A62BC 000A31FC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A62C0 000A3200  80 1E 00 04 */	lwz r0, 4(r30)
/* 800A62C4 000A3204  80 6D 95 58 */	lwz r3, __piReg@sda21(r13)
/* 800A62C8 000A3208  54 00 00 BE */	clrlwi r0, r0, 2
/* 800A62CC 000A320C  90 03 00 10 */	stw r0, 0x10(r3)
/* 800A62D0 000A3210  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800A62D4 000A3214  80 6D 95 58 */	lwz r3, __piReg@sda21(r13)
/* 800A62D8 000A3218  54 00 00 B4 */	rlwinm r0, r0, 0, 2, 0x1a
/* 800A62DC 000A321C  54 00 01 88 */	rlwinm r0, r0, 0, 6, 4
/* 800A62E0 000A3220  90 03 00 14 */	stw r0, 0x14(r3)
lbl_800A62E4:
/* 800A62E4 000A3224  7C 00 04 AC */	sync 0
/* 800A62E8 000A3228  7F E3 FB 78 */	mr r3, r31
/* 800A62EC 000A322C  4B FE 9F 09 */	bl OSRestoreInterrupts
/* 800A62F0 000A3230  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A62F4 000A3234  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A62F8 000A3238  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800A62FC 000A323C  38 21 00 18 */	addi r1, r1, 0x18
/* 800A6300 000A3240  7C 08 03 A6 */	mtlr r0
/* 800A6304 000A3244  4E 80 00 20 */	blr 

.global GXSetGPFifo
GXSetGPFifo:
/* 800A6308 000A3248  7C 08 02 A6 */	mflr r0
/* 800A630C 000A324C  90 01 00 04 */	stw r0, 4(r1)
/* 800A6310 000A3250  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A6314 000A3254  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A6318 000A3258  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800A631C 000A325C  7C 7E 1B 78 */	mr r30, r3
/* 800A6320 000A3260  4B FE 9E AD */	bl OSDisableInterrupts
/* 800A6324 000A3264  7C 7F 1B 78 */	mr r31, r3
/* 800A6328 000A3268  48 00 03 61 */	bl __GXFifoReadDisable
/* 800A632C 000A326C  38 60 00 00 */	li r3, 0
/* 800A6330 000A3270  38 80 00 00 */	li r4, 0
/* 800A6334 000A3274  48 00 03 BD */	bl __GXWriteFifoIntEnable
/* 800A6338 000A3278  93 CD 95 6C */	stw r30, GPFifo@sda21(r13)
/* 800A633C 000A327C  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6340 000A3280  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A6344 000A3284  B0 03 00 20 */	sth r0, 0x20(r3)
/* 800A6348 000A3288  80 1E 00 04 */	lwz r0, 4(r30)
/* 800A634C 000A328C  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6350 000A3290  B0 03 00 24 */	sth r0, 0x24(r3)
/* 800A6354 000A3294  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800A6358 000A3298  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A635C 000A329C  B0 03 00 30 */	sth r0, 0x30(r3)
/* 800A6360 000A32A0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800A6364 000A32A4  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6368 000A32A8  B0 03 00 34 */	sth r0, 0x34(r3)
/* 800A636C 000A32AC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800A6370 000A32B0  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6374 000A32B4  B0 03 00 38 */	sth r0, 0x38(r3)
/* 800A6378 000A32B8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800A637C 000A32BC  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6380 000A32C0  B0 03 00 28 */	sth r0, 0x28(r3)
/* 800A6384 000A32C4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800A6388 000A32C8  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A638C 000A32CC  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 800A6390 000A32D0  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A6394 000A32D4  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6398 000A32D8  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800A639C 000A32DC  B0 03 00 22 */	sth r0, 0x22(r3)
/* 800A63A0 000A32E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 800A63A4 000A32E4  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A63A8 000A32E8  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800A63AC 000A32EC  B0 03 00 26 */	sth r0, 0x26(r3)
/* 800A63B0 000A32F0  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800A63B4 000A32F4  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A63B8 000A32F8  7C 00 86 70 */	srawi r0, r0, 0x10
/* 800A63BC 000A32FC  B0 03 00 32 */	sth r0, 0x32(r3)
/* 800A63C0 000A3300  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800A63C4 000A3304  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A63C8 000A3308  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800A63CC 000A330C  B0 03 00 36 */	sth r0, 0x36(r3)
/* 800A63D0 000A3310  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800A63D4 000A3314  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A63D8 000A3318  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800A63DC 000A331C  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 800A63E0 000A3320  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800A63E4 000A3324  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A63E8 000A3328  54 00 84 3E */	srwi r0, r0, 0x10
/* 800A63EC 000A332C  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 800A63F0 000A3330  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800A63F4 000A3334  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A63F8 000A3338  54 00 84 3E */	srwi r0, r0, 0x10
/* 800A63FC 000A333C  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 800A6400 000A3340  7C 00 04 AC */	sync 0
/* 800A6404 000A3344  80 6D 95 68 */	lwz r3, CPUFifo@sda21(r13)
/* 800A6408 000A3348  80 0D 95 6C */	lwz r0, GPFifo@sda21(r13)
/* 800A640C 000A334C  7C 03 00 40 */	cmplw r3, r0
/* 800A6410 000A3350  40 82 00 24 */	bne lbl_800A6434
/* 800A6414 000A3354  38 00 00 01 */	li r0, 1
/* 800A6418 000A3358  98 0D 95 74 */	stb r0, CPGPLinked@sda21(r13)
/* 800A641C 000A335C  38 60 00 01 */	li r3, 1
/* 800A6420 000A3360  38 80 00 00 */	li r4, 0
/* 800A6424 000A3364  48 00 02 CD */	bl __GXWriteFifoIntEnable
/* 800A6428 000A3368  38 60 00 01 */	li r3, 1
/* 800A642C 000A336C  48 00 02 81 */	bl __GXFifoLink
/* 800A6430 000A3370  48 00 00 20 */	b lbl_800A6450
lbl_800A6434:
/* 800A6434 000A3374  38 00 00 00 */	li r0, 0
/* 800A6438 000A3378  98 0D 95 74 */	stb r0, CPGPLinked@sda21(r13)
/* 800A643C 000A337C  38 60 00 00 */	li r3, 0
/* 800A6440 000A3380  38 80 00 00 */	li r4, 0
/* 800A6444 000A3384  48 00 02 AD */	bl __GXWriteFifoIntEnable
/* 800A6448 000A3388  38 60 00 00 */	li r3, 0
/* 800A644C 000A338C  48 00 02 61 */	bl __GXFifoLink
lbl_800A6450:
/* 800A6450 000A3390  38 60 00 01 */	li r3, 1
/* 800A6454 000A3394  38 80 00 01 */	li r4, 1
/* 800A6458 000A3398  48 00 02 E5 */	bl __GXWriteFifoIntReset
/* 800A645C 000A339C  48 00 02 05 */	bl __GXFifoReadEnable
/* 800A6460 000A33A0  7F E3 FB 78 */	mr r3, r31
/* 800A6464 000A33A4  4B FE 9D 91 */	bl OSRestoreInterrupts
/* 800A6468 000A33A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A646C 000A33AC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A6470 000A33B0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800A6474 000A33B4  38 21 00 18 */	addi r1, r1, 0x18
/* 800A6478 000A33B8  7C 08 03 A6 */	mtlr r0
/* 800A647C 000A33BC  4E 80 00 20 */	blr 

.global GXGetFifoPtrs
GXGetFifoPtrs:
/* 800A6480 000A33C0  80 0D 95 68 */	lwz r0, CPUFifo@sda21(r13)
/* 800A6484 000A33C4  7C 03 00 40 */	cmplw r3, r0
/* 800A6488 000A33C8  40 82 00 18 */	bne lbl_800A64A0
/* 800A648C 000A33CC  80 CD 95 58 */	lwz r6, __piReg@sda21(r13)
/* 800A6490 000A33D0  80 06 00 14 */	lwz r0, 0x14(r6)
/* 800A6494 000A33D4  54 06 01 88 */	rlwinm r6, r0, 0, 6, 4
/* 800A6498 000A33D8  3C 06 80 00 */	addis r0, r6, 0x8000
/* 800A649C 000A33DC  90 03 00 18 */	stw r0, 0x18(r3)
lbl_800A64A0:
/* 800A64A0 000A33E0  80 0D 95 6C */	lwz r0, GPFifo@sda21(r13)
/* 800A64A4 000A33E4  7C 03 00 40 */	cmplw r3, r0
/* 800A64A8 000A33E8  40 82 00 34 */	bne lbl_800A64DC
/* 800A64AC 000A33EC  80 ED 95 5C */	lwz r7, __cpReg@sda21(r13)
/* 800A64B0 000A33F0  A0 C7 00 3A */	lhz r6, 0x3a(r7)
/* 800A64B4 000A33F4  A0 E7 00 38 */	lhz r7, 0x38(r7)
/* 800A64B8 000A33F8  50 C7 80 1E */	rlwimi r7, r6, 0x10, 0, 0xf
/* 800A64BC 000A33FC  3C 07 80 00 */	addis r0, r7, 0x8000
/* 800A64C0 000A3400  90 03 00 14 */	stw r0, 0x14(r3)
/* 800A64C4 000A3404  80 ED 95 5C */	lwz r7, __cpReg@sda21(r13)
/* 800A64C8 000A3408  A0 C7 00 32 */	lhz r6, 0x32(r7)
/* 800A64CC 000A340C  A0 07 00 30 */	lhz r0, 0x30(r7)
/* 800A64D0 000A3410  50 C0 80 1E */	rlwimi r0, r6, 0x10, 0, 0xf
/* 800A64D4 000A3414  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800A64D8 000A3418  48 00 00 2C */	b lbl_800A6504
lbl_800A64DC:
/* 800A64DC 000A341C  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 800A64E0 000A3420  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800A64E4 000A3424  7C 06 00 50 */	subf r0, r6, r0
/* 800A64E8 000A3428  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800A64EC 000A342C  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 800A64F0 000A3430  2C 06 00 00 */	cmpwi r6, 0
/* 800A64F4 000A3434  40 80 00 10 */	bge lbl_800A6504
/* 800A64F8 000A3438  80 03 00 08 */	lwz r0, 8(r3)
/* 800A64FC 000A343C  7C 06 02 14 */	add r0, r6, r0
/* 800A6500 000A3440  90 03 00 1C */	stw r0, 0x1c(r3)
lbl_800A6504:
/* 800A6504 000A3444  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800A6508 000A3448  90 04 00 00 */	stw r0, 0(r4)
/* 800A650C 000A344C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800A6510 000A3450  90 05 00 00 */	stw r0, 0(r5)
/* 800A6514 000A3454  4E 80 00 20 */	blr 

.global GXEnableBreakPt
GXEnableBreakPt:
/* 800A6518 000A3458  7C 08 02 A6 */	mflr r0
/* 800A651C 000A345C  90 01 00 04 */	stw r0, 4(r1)
/* 800A6520 000A3460  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A6524 000A3464  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A6528 000A3468  7C 7F 1B 78 */	mr r31, r3
/* 800A652C 000A346C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800A6530 000A3470  4B FE 9C 9D */	bl OSDisableInterrupts
/* 800A6534 000A3474  7C 7E 1B 78 */	mr r30, r3
/* 800A6538 000A3478  48 00 01 51 */	bl __GXFifoReadDisable
/* 800A653C 000A347C  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6540 000A3480  57 E0 84 BE */	rlwinm r0, r31, 0x10, 0x12, 0x1f
/* 800A6544 000A3484  B3 E3 00 3C */	sth r31, 0x3c(r3)
/* 800A6548 000A3488  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A654C 000A348C  B0 03 00 3E */	sth r0, 0x3e(r3)
/* 800A6550 000A3490  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A6554 000A3494  84 03 00 08 */	lwzu r0, 8(r3)
/* 800A6558 000A3498  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800A655C 000A349C  60 00 00 02 */	ori r0, r0, 2
/* 800A6560 000A34A0  90 03 00 00 */	stw r0, 0(r3)
/* 800A6564 000A34A4  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A6568 000A34A8  84 03 00 08 */	lwzu r0, 8(r3)
/* 800A656C 000A34AC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800A6570 000A34B0  60 00 00 20 */	ori r0, r0, 0x20
/* 800A6574 000A34B4  90 03 00 00 */	stw r0, 0(r3)
/* 800A6578 000A34B8  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A657C 000A34BC  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6580 000A34C0  80 04 00 08 */	lwz r0, 8(r4)
/* 800A6584 000A34C4  B0 03 00 02 */	sth r0, 2(r3)
/* 800A6588 000A34C8  93 ED 95 84 */	stw r31, __GXCurrentBP@sda21(r13)
/* 800A658C 000A34CC  48 00 00 D5 */	bl __GXFifoReadEnable
/* 800A6590 000A34D0  7F C3 F3 78 */	mr r3, r30
/* 800A6594 000A34D4  4B FE 9C 61 */	bl OSRestoreInterrupts
/* 800A6598 000A34D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A659C 000A34DC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A65A0 000A34E0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800A65A4 000A34E4  38 21 00 18 */	addi r1, r1, 0x18
/* 800A65A8 000A34E8  7C 08 03 A6 */	mtlr r0
/* 800A65AC 000A34EC  4E 80 00 20 */	blr 

.global GXDisableBreakPt
GXDisableBreakPt:
/* 800A65B0 000A34F0  7C 08 02 A6 */	mflr r0
/* 800A65B4 000A34F4  90 01 00 04 */	stw r0, 4(r1)
/* 800A65B8 000A34F8  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A65BC 000A34FC  4B FE 9C 11 */	bl OSDisableInterrupts
/* 800A65C0 000A3500  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A65C4 000A3504  38 00 00 00 */	li r0, 0
/* 800A65C8 000A3508  38 A4 00 08 */	addi r5, r4, 8
/* 800A65CC 000A350C  80 84 00 08 */	lwz r4, 8(r4)
/* 800A65D0 000A3510  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 800A65D4 000A3514  90 85 00 00 */	stw r4, 0(r5)
/* 800A65D8 000A3518  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A65DC 000A351C  38 A4 00 08 */	addi r5, r4, 8
/* 800A65E0 000A3520  80 84 00 08 */	lwz r4, 8(r4)
/* 800A65E4 000A3524  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 800A65E8 000A3528  90 85 00 00 */	stw r4, 0(r5)
/* 800A65EC 000A352C  80 AD 82 C8 */	lwz r5, gx@sda21(r13)
/* 800A65F0 000A3530  80 8D 95 5C */	lwz r4, __cpReg@sda21(r13)
/* 800A65F4 000A3534  80 A5 00 08 */	lwz r5, 8(r5)
/* 800A65F8 000A3538  B0 A4 00 02 */	sth r5, 2(r4)
/* 800A65FC 000A353C  90 0D 95 84 */	stw r0, __GXCurrentBP@sda21(r13)
/* 800A6600 000A3540  4B FE 9B F5 */	bl OSRestoreInterrupts
/* 800A6604 000A3544  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A6608 000A3548  38 21 00 08 */	addi r1, r1, 8
/* 800A660C 000A354C  7C 08 03 A6 */	mtlr r0
/* 800A6610 000A3550  4E 80 00 20 */	blr 

.global __GXFifoInit
__GXFifoInit:
/* 800A6614 000A3554  7C 08 02 A6 */	mflr r0
/* 800A6618 000A3558  3C 60 80 0A */	lis r3, GXCPInterruptHandler@ha
/* 800A661C 000A355C  90 01 00 04 */	stw r0, 4(r1)
/* 800A6620 000A3560  38 83 5F D4 */	addi r4, r3, GXCPInterruptHandler@l
/* 800A6624 000A3564  38 60 00 11 */	li r3, 0x11
/* 800A6628 000A3568  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A662C 000A356C  4B FE 9B ED */	bl __OSSetInterruptHandler
/* 800A6630 000A3570  38 60 40 00 */	li r3, 0x4000
/* 800A6634 000A3574  4B FE 9F E9 */	bl __OSUnmaskInterrupts
/* 800A6638 000A3578  4B FE C6 51 */	bl OSGetCurrentThread
/* 800A663C 000A357C  38 00 00 00 */	li r0, 0
/* 800A6640 000A3580  90 6D 95 70 */	stw r3, __GXCurrentThread@sda21(r13)
/* 800A6644 000A3584  90 0D 95 78 */	stw r0, GXOverflowSuspendInProgress@sda21(r13)
/* 800A6648 000A3588  90 0D 95 68 */	stw r0, CPUFifo@sda21(r13)
/* 800A664C 000A358C  90 0D 95 6C */	stw r0, GPFifo@sda21(r13)
/* 800A6650 000A3590  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A6654 000A3594  38 21 00 08 */	addi r1, r1, 8
/* 800A6658 000A3598  7C 08 03 A6 */	mtlr r0
/* 800A665C 000A359C  4E 80 00 20 */	blr 

.global __GXFifoReadEnable
__GXFifoReadEnable:
/* 800A6660 000A35A0  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A6664 000A35A4  84 03 00 08 */	lwzu r0, 8(r3)
/* 800A6668 000A35A8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800A666C 000A35AC  60 00 00 01 */	ori r0, r0, 1
/* 800A6670 000A35B0  90 03 00 00 */	stw r0, 0(r3)
/* 800A6674 000A35B4  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A6678 000A35B8  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A667C 000A35BC  80 04 00 08 */	lwz r0, 8(r4)
/* 800A6680 000A35C0  B0 03 00 02 */	sth r0, 2(r3)
/* 800A6684 000A35C4  4E 80 00 20 */	blr 

.global __GXFifoReadDisable
__GXFifoReadDisable:
/* 800A6688 000A35C8  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A668C 000A35CC  84 03 00 08 */	lwzu r0, 8(r3)
/* 800A6690 000A35D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800A6694 000A35D4  90 03 00 00 */	stw r0, 0(r3)
/* 800A6698 000A35D8  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A669C 000A35DC  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A66A0 000A35E0  80 04 00 08 */	lwz r0, 8(r4)
/* 800A66A4 000A35E4  B0 03 00 02 */	sth r0, 2(r3)
/* 800A66A8 000A35E8  4E 80 00 20 */	blr 

.global __GXFifoLink
__GXFifoLink:
/* 800A66AC 000A35EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A66B0 000A35F0  41 82 00 0C */	beq lbl_800A66BC
/* 800A66B4 000A35F4  38 00 00 01 */	li r0, 1
/* 800A66B8 000A35F8  48 00 00 08 */	b lbl_800A66C0
lbl_800A66BC:
/* 800A66BC 000A35FC  38 00 00 00 */	li r0, 0
lbl_800A66C0:
/* 800A66C0 000A3600  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A66C4 000A3604  54 00 20 36 */	slwi r0, r0, 4
/* 800A66C8 000A3608  38 83 00 08 */	addi r4, r3, 8
/* 800A66CC 000A360C  80 63 00 08 */	lwz r3, 8(r3)
/* 800A66D0 000A3610  54 63 07 34 */	rlwinm r3, r3, 0, 0x1c, 0x1a
/* 800A66D4 000A3614  7C 60 03 78 */	or r0, r3, r0
/* 800A66D8 000A3618  90 04 00 00 */	stw r0, 0(r4)
/* 800A66DC 000A361C  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A66E0 000A3620  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A66E4 000A3624  80 04 00 08 */	lwz r0, 8(r4)
/* 800A66E8 000A3628  B0 03 00 02 */	sth r0, 2(r3)
/* 800A66EC 000A362C  4E 80 00 20 */	blr 

.global __GXWriteFifoIntEnable
__GXWriteFifoIntEnable:
/* 800A66F0 000A3630  80 AD 82 C8 */	lwz r5, gx@sda21(r13)
/* 800A66F4 000A3634  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 800A66F8 000A3638  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 800A66FC 000A363C  38 C5 00 08 */	addi r6, r5, 8
/* 800A6700 000A3640  80 A5 00 08 */	lwz r5, 8(r5)
/* 800A6704 000A3644  54 A4 07 B8 */	rlwinm r4, r5, 0, 0x1e, 0x1c
/* 800A6708 000A3648  7C 83 1B 78 */	or r3, r4, r3
/* 800A670C 000A364C  90 66 00 00 */	stw r3, 0(r6)
/* 800A6710 000A3650  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A6714 000A3654  38 83 00 08 */	addi r4, r3, 8
/* 800A6718 000A3658  80 63 00 08 */	lwz r3, 8(r3)
/* 800A671C 000A365C  54 63 07 76 */	rlwinm r3, r3, 0, 0x1d, 0x1b
/* 800A6720 000A3660  7C 60 03 78 */	or r0, r3, r0
/* 800A6724 000A3664  90 04 00 00 */	stw r0, 0(r4)
/* 800A6728 000A3668  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A672C 000A366C  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A6730 000A3670  80 04 00 08 */	lwz r0, 8(r4)
/* 800A6734 000A3674  B0 03 00 02 */	sth r0, 2(r3)
/* 800A6738 000A3678  4E 80 00 20 */	blr 

.global __GXWriteFifoIntReset
__GXWriteFifoIntReset:
/* 800A673C 000A367C  80 AD 82 C8 */	lwz r5, gx@sda21(r13)
/* 800A6740 000A3680  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800A6744 000A3684  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 800A6748 000A3688  38 C5 00 10 */	addi r6, r5, 0x10
/* 800A674C 000A368C  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800A6750 000A3690  54 A4 00 3C */	rlwinm r4, r5, 0, 0, 0x1e
/* 800A6754 000A3694  7C 83 1B 78 */	or r3, r4, r3
/* 800A6758 000A3698  90 66 00 00 */	stw r3, 0(r6)
/* 800A675C 000A369C  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800A6760 000A36A0  38 83 00 10 */	addi r4, r3, 0x10
/* 800A6764 000A36A4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800A6768 000A36A8  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 800A676C 000A36AC  7C 60 03 78 */	or r0, r3, r0
/* 800A6770 000A36B0  90 04 00 00 */	stw r0, 0(r4)
/* 800A6774 000A36B4  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800A6778 000A36B8  80 6D 95 5C */	lwz r3, __cpReg@sda21(r13)
/* 800A677C 000A36BC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800A6780 000A36C0  B0 03 00 04 */	sth r0, 4(r3)
/* 800A6784 000A36C4  4E 80 00 20 */	blr 

.global GXGetCPUFifo
GXGetCPUFifo:
/* 800A6788 000A36C8  80 6D 95 68 */	lwz r3, CPUFifo@sda21(r13)
/* 800A678C 000A36CC  4E 80 00 20 */	blr 

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
CPUFifo:
	.skip 0x4
GPFifo:
	.skip 0x4
__GXCurrentThread:
	.skip 0x4
CPGPLinked:
	.skip 0x4
GXOverflowSuspendInProgress:
	.skip 0x4
BreakPointCB:
	.skip 0x4
__GXOverflowCount:
	.skip 0x4
__GXCurrentBP:
	.skip 0x4
