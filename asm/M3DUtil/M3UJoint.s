.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __dt__24M3UMtxCalcSIAnmBlendQuatFv
__dt__24M3UMtxCalcSIAnmBlendQuatFv:
/* 800D22B4 000CF1F4  7C 08 02 A6 */	mflr r0
/* 800D22B8 000CF1F8  90 01 00 04 */	stw r0, 4(r1)
/* 800D22BC 000CF1FC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800D22C0 000CF200  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800D22C4 000CF204  7C 7F 1B 79 */	or. r31, r3, r3
/* 800D22C8 000CF208  41 82 00 90 */	beq lbl_800D2358
/* 800D22CC 000CF20C  3C 60 80 3B */	lis r3, __vt__24M3UMtxCalcSIAnmBlendQuat@ha
/* 800D22D0 000CF210  38 63 34 9C */	addi r3, r3, __vt__24M3UMtxCalcSIAnmBlendQuat@l
/* 800D22D4 000CF214  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 800D22D8 000CF218  38 A3 00 24 */	addi r5, r3, 0x24
/* 800D22DC 000CF21C  38 1F 00 64 */	addi r0, r31, 0x64
/* 800D22E0 000CF220  80 7F 00 00 */	lwz r3, 0(r31)
/* 800D22E4 000CF224  90 A3 00 00 */	stw r5, 0(r3)
/* 800D22E8 000CF228  80 7F 00 00 */	lwz r3, 0(r31)
/* 800D22EC 000CF22C  7C 03 00 50 */	subf r0, r3, r0
/* 800D22F0 000CF230  90 03 00 04 */	stw r0, 4(r3)
/* 800D22F4 000CF234  41 82 00 54 */	beq lbl_800D2348
/* 800D22F8 000CF238  3C 60 80 3B */	lis r3, __vt__19J3DMtxCalcSoftimage@ha
/* 800D22FC 000CF23C  38 63 8F 80 */	addi r3, r3, __vt__19J3DMtxCalcSoftimage@l
/* 800D2300 000CF240  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 800D2304 000CF244  38 03 00 24 */	addi r0, r3, 0x24
/* 800D2308 000CF248  38 BF 00 50 */	addi r5, r31, 0x50
/* 800D230C 000CF24C  80 7F 00 00 */	lwz r3, 0(r31)
/* 800D2310 000CF250  90 03 00 00 */	stw r0, 0(r3)
/* 800D2314 000CF254  80 7F 00 00 */	lwz r3, 0(r31)
/* 800D2318 000CF258  7C 03 28 50 */	subf r0, r3, r5
/* 800D231C 000CF25C  90 03 00 04 */	stw r0, 4(r3)
/* 800D2320 000CF260  41 82 00 28 */	beq lbl_800D2348
/* 800D2324 000CF264  3C 60 80 3B */	lis r3, __vt__15J3DMtxCalcBasic@ha
/* 800D2328 000CF268  38 63 8F C4 */	addi r3, r3, __vt__15J3DMtxCalcBasic@l
/* 800D232C 000CF26C  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 800D2330 000CF270  38 03 00 24 */	addi r0, r3, 0x24
/* 800D2334 000CF274  80 7F 00 00 */	lwz r3, 0(r31)
/* 800D2338 000CF278  90 03 00 00 */	stw r0, 0(r3)
/* 800D233C 000CF27C  80 7F 00 00 */	lwz r3, 0(r31)
/* 800D2340 000CF280  7C 03 28 50 */	subf r0, r3, r5
/* 800D2344 000CF284  90 03 00 04 */	stw r0, 4(r3)
lbl_800D2348:
/* 800D2348 000CF288  7C 80 07 35 */	extsh. r0, r4
/* 800D234C 000CF28C  40 81 00 0C */	ble lbl_800D2358
/* 800D2350 000CF290  7F E3 FB 78 */	mr r3, r31
/* 800D2354 000CF294  4B F3 A7 5D */	bl __dl__FPv
lbl_800D2358:
/* 800D2358 000CF298  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800D235C 000CF29C  7F E3 FB 78 */	mr r3, r31
/* 800D2360 000CF2A0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800D2364 000CF2A4  38 21 00 18 */	addi r1, r1, 0x18
/* 800D2368 000CF2A8  7C 08 03 A6 */	mtlr r0
/* 800D236C 000CF2AC  4E 80 00 20 */	blr 

.global calc__24M3UMtxCalcSIAnmBlendQuatFUs
calc__24M3UMtxCalcSIAnmBlendQuatFUs:
/* 800D2370 000CF2B0  7C 08 02 A6 */	mflr r0
/* 800D2374 000CF2B4  90 01 00 04 */	stw r0, 4(r1)
/* 800D2378 000CF2B8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800D237C 000CF2BC  93 E1 00 AC */	stw r31, 0xac(r1)
/* 800D2380 000CF2C0  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 800D2384 000CF2C4  3B C4 00 00 */	addi r30, r4, 0
/* 800D2388 000CF2C8  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 800D238C 000CF2CC  7C 7D 1B 79 */	or. r29, r3, r3
/* 800D2390 000CF2D0  38 1D 00 00 */	addi r0, r29, 0
/* 800D2394 000CF2D4  41 82 00 08 */	beq lbl_800D239C
/* 800D2398 000CF2D8  80 1D 00 00 */	lwz r0, 0(r29)
lbl_800D239C:
/* 800D239C 000CF2DC  3C 60 80 40 */	lis r3, j3dSys@ha
/* 800D23A0 000CF2E0  38 63 0E D8 */	addi r3, r3, j3dSys@l
/* 800D23A4 000CF2E4  90 03 00 30 */	stw r0, 0x30(r3)
/* 800D23A8 000CF2E8  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 800D23AC 000CF2EC  28 03 00 00 */	cmplwi r3, 0
/* 800D23B0 000CF2F0  40 82 00 10 */	bne lbl_800D23C0
/* 800D23B4 000CF2F4  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 800D23B8 000CF2F8  28 00 00 00 */	cmplwi r0, 0
/* 800D23BC 000CF2FC  41 82 00 38 */	beq lbl_800D23F4
lbl_800D23C0:
/* 800D23C0 000CF300  28 03 00 00 */	cmplwi r3, 0
/* 800D23C4 000CF304  40 82 00 14 */	bne lbl_800D23D8
/* 800D23C8 000CF308  C0 22 8E E8 */	lfs f1, $$21572-_SDA2_BASE_(r2)
/* 800D23CC 000CF30C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 800D23D0 000CF310  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800D23D4 000CF314  41 82 00 20 */	beq lbl_800D23F4
lbl_800D23D8:
/* 800D23D8 000CF318  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 800D23DC 000CF31C  28 00 00 00 */	cmplwi r0, 0
/* 800D23E0 000CF320  40 82 00 98 */	bne lbl_800D2478
/* 800D23E4 000CF324  C0 22 8E EC */	lfs f1, $$21573-_SDA2_BASE_(r2)
/* 800D23E8 000CF328  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 800D23EC 000CF32C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800D23F0 000CF330  40 82 00 88 */	bne lbl_800D2478
lbl_800D23F4:
/* 800D23F4 000CF334  3C 60 80 40 */	lis r3, j3dSys@ha
/* 800D23F8 000CF338  38 63 0E D8 */	addi r3, r3, j3dSys@l
/* 800D23FC 000CF33C  80 63 00 38 */	lwz r3, 0x38(r3)
/* 800D2400 000CF340  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 800D2404 000CF344  38 9E 00 00 */	addi r4, r30, 0
/* 800D2408 000CF348  80 A3 00 04 */	lwz r5, 4(r3)
/* 800D240C 000CF34C  38 7D 00 00 */	addi r3, r29, 0
/* 800D2410 000CF350  80 C5 00 20 */	lwz r6, 0x20(r5)
/* 800D2414 000CF354  38 A1 00 7C */	addi r5, r1, 0x7c
/* 800D2418 000CF358  7C C6 00 2E */	lwzx r6, r6, r0
/* 800D241C 000CF35C  C4 06 00 1C */	lfsu f0, 0x1c(r6)
/* 800D2420 000CF360  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800D2424 000CF364  C0 06 00 04 */	lfs f0, 4(r6)
/* 800D2428 000CF368  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 800D242C 000CF36C  C0 06 00 08 */	lfs f0, 8(r6)
/* 800D2430 000CF370  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 800D2434 000CF374  A8 06 00 0C */	lha r0, 0xc(r6)
/* 800D2438 000CF378  B0 01 00 88 */	sth r0, 0x88(r1)
/* 800D243C 000CF37C  A8 06 00 0E */	lha r0, 0xe(r6)
/* 800D2440 000CF380  B0 01 00 8A */	sth r0, 0x8a(r1)
/* 800D2444 000CF384  A8 06 00 10 */	lha r0, 0x10(r6)
/* 800D2448 000CF388  B0 01 00 8C */	sth r0, 0x8c(r1)
/* 800D244C 000CF38C  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 800D2450 000CF390  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 800D2454 000CF394  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 800D2458 000CF398  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 800D245C 000CF39C  C0 06 00 1C */	lfs f0, 0x1c(r6)
/* 800D2460 000CF3A0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 800D2464 000CF3A4  81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 800D2468 000CF3A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800D246C 000CF3AC  7D 88 03 A6 */	mtlr r12
/* 800D2470 000CF3B0  4E 80 00 21 */	blrl 
/* 800D2474 000CF3B4  48 00 00 F4 */	b lbl_800D2568
lbl_800D2478:
/* 800D2478 000CF3B8  C0 02 8E E8 */	lfs f0, $$21572-_SDA2_BASE_(r2)
/* 800D247C 000CF3BC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 800D2480 000CF3C0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800D2484 000CF3C4  41 82 00 0C */	beq lbl_800D2490
/* 800D2488 000CF3C8  28 00 00 00 */	cmplwi r0, 0
/* 800D248C 000CF3CC  40 82 00 3C */	bne lbl_800D24C8
lbl_800D2490:
/* 800D2490 000CF3D0  81 83 00 0C */	lwz r12, 0xc(r3)
/* 800D2494 000CF3D4  38 9E 00 00 */	addi r4, r30, 0
/* 800D2498 000CF3D8  38 A1 00 7C */	addi r5, r1, 0x7c
/* 800D249C 000CF3DC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800D24A0 000CF3E0  7D 88 03 A6 */	mtlr r12
/* 800D24A4 000CF3E4  4E 80 00 21 */	blrl 
/* 800D24A8 000CF3E8  7F A3 EB 78 */	mr r3, r29
/* 800D24AC 000CF3EC  81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 800D24B0 000CF3F0  38 9E 00 00 */	addi r4, r30, 0
/* 800D24B4 000CF3F4  38 A1 00 7C */	addi r5, r1, 0x7c
/* 800D24B8 000CF3F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800D24BC 000CF3FC  7D 88 03 A6 */	mtlr r12
/* 800D24C0 000CF400  4E 80 00 21 */	blrl 
/* 800D24C4 000CF404  48 00 00 A4 */	b lbl_800D2568
lbl_800D24C8:
/* 800D24C8 000CF408  C0 02 8E EC */	lfs f0, $$21573-_SDA2_BASE_(r2)
/* 800D24CC 000CF40C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800D24D0 000CF410  41 82 00 0C */	beq lbl_800D24DC
/* 800D24D4 000CF414  28 03 00 00 */	cmplwi r3, 0
/* 800D24D8 000CF418  40 82 00 40 */	bne lbl_800D2518
lbl_800D24DC:
/* 800D24DC 000CF41C  7C 03 03 78 */	mr r3, r0
/* 800D24E0 000CF420  81 83 00 0C */	lwz r12, 0xc(r3)
/* 800D24E4 000CF424  38 9E 00 00 */	addi r4, r30, 0
/* 800D24E8 000CF428  38 A1 00 7C */	addi r5, r1, 0x7c
/* 800D24EC 000CF42C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800D24F0 000CF430  7D 88 03 A6 */	mtlr r12
/* 800D24F4 000CF434  4E 80 00 21 */	blrl 
/* 800D24F8 000CF438  7F A3 EB 78 */	mr r3, r29
/* 800D24FC 000CF43C  81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 800D2500 000CF440  38 9E 00 00 */	addi r4, r30, 0
/* 800D2504 000CF444  38 A1 00 7C */	addi r5, r1, 0x7c
/* 800D2508 000CF448  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800D250C 000CF44C  7D 88 03 A6 */	mtlr r12
/* 800D2510 000CF450  4E 80 00 21 */	blrl 
/* 800D2514 000CF454  48 00 00 54 */	b lbl_800D2568
lbl_800D2518:
/* 800D2518 000CF458  81 83 00 0C */	lwz r12, 0xc(r3)
/* 800D251C 000CF45C  38 9E 00 00 */	addi r4, r30, 0
/* 800D2520 000CF460  38 A1 00 3C */	addi r5, r1, 0x3c
/* 800D2524 000CF464  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800D2528 000CF468  7D 88 03 A6 */	mtlr r12
/* 800D252C 000CF46C  4E 80 00 21 */	blrl 
/* 800D2530 000CF470  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 800D2534 000CF474  3B E1 00 5C */	addi r31, r1, 0x5c
/* 800D2538 000CF478  38 9E 00 00 */	addi r4, r30, 0
/* 800D253C 000CF47C  81 83 00 0C */	lwz r12, 0xc(r3)
/* 800D2540 000CF480  7F E5 FB 78 */	mr r5, r31
/* 800D2544 000CF484  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800D2548 000CF488  7D 88 03 A6 */	mtlr r12
/* 800D254C 000CF48C  4E 80 00 21 */	blrl 
/* 800D2550 000CF490  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 800D2554 000CF494  7F C3 F3 78 */	mr r3, r30
/* 800D2558 000CF498  88 DD 00 5C */	lbz r6, 0x5c(r29)
/* 800D255C 000CF49C  38 BF 00 00 */	addi r5, r31, 0
/* 800D2560 000CF4A0  38 81 00 3C */	addi r4, r1, 0x3c
/* 800D2564 000CF4A4  48 00 02 8D */	bl M3UMtxCalcBlendAux__FUsP16J3DTransformInfoP16J3DTransformInfofb
lbl_800D2568:
/* 800D2568 000CF4A8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800D256C 000CF4AC  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 800D2570 000CF4B0  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 800D2574 000CF4B4  7C 08 03 A6 */	mtlr r0
/* 800D2578 000CF4B8  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 800D257C 000CF4BC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800D2580 000CF4C0  4E 80 00 20 */	blr 

.global init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf
init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf:
/* 800D2584 000CF4C4  7C 08 02 A6 */	mflr r0
/* 800D2588 000CF4C8  90 01 00 04 */	stw r0, 4(r1)
/* 800D258C 000CF4CC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800D2590 000CF4D0  88 03 00 5C */	lbz r0, 0x5c(r3)
/* 800D2594 000CF4D4  28 00 00 00 */	cmplwi r0, 0
/* 800D2598 000CF4D8  41 82 01 14 */	beq lbl_800D26AC
/* 800D259C 000CF4DC  3C C0 80 40 */	lis r6, mCurrentS__6J3DSys@ha
/* 800D25A0 000CF4E0  80 64 00 00 */	lwz r3, 0(r4)
/* 800D25A4 000CF4E4  39 26 10 B4 */	addi r9, r6, mCurrentS__6J3DSys@l
/* 800D25A8 000CF4E8  80 04 00 04 */	lwz r0, 4(r4)
/* 800D25AC 000CF4EC  3C E0 80 3B */	lis r7, $$21411@ha
/* 800D25B0 000CF4F0  90 69 00 00 */	stw r3, 0(r9)
/* 800D25B4 000CF4F4  3C C0 80 40 */	lis r6, mParentS__6J3DSys@ha
/* 800D25B8 000CF4F8  39 07 34 90 */	addi r8, r7, $$21411@l
/* 800D25BC 000CF4FC  90 09 00 04 */	stw r0, 4(r9)
/* 800D25C0 000CF500  38 E6 10 C0 */	addi r7, r6, mParentS__6J3DSys@l
/* 800D25C4 000CF504  3C 60 80 40 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 800D25C8 000CF508  80 04 00 08 */	lwz r0, 8(r4)
/* 800D25CC 000CF50C  90 09 00 08 */	stw r0, 8(r9)
/* 800D25D0 000CF510  80 C8 00 00 */	lwz r6, 0(r8)
/* 800D25D4 000CF514  80 08 00 04 */	lwz r0, 4(r8)
/* 800D25D8 000CF518  90 C1 00 18 */	stw r6, 0x18(r1)
/* 800D25DC 000CF51C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D25E0 000CF520  80 08 00 08 */	lwz r0, 8(r8)
/* 800D25E4 000CF524  90 01 00 20 */	stw r0, 0x20(r1)
/* 800D25E8 000CF528  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 800D25EC 000CF52C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800D25F0 000CF530  90 C7 00 00 */	stw r6, 0(r7)
/* 800D25F4 000CF534  90 07 00 04 */	stw r0, 4(r7)
/* 800D25F8 000CF538  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800D25FC 000CF53C  90 07 00 08 */	stw r0, 8(r7)
/* 800D2600 000CF540  C0 25 00 00 */	lfs f1, 0(r5)
/* 800D2604 000CF544  C0 04 00 00 */	lfs f0, 0(r4)
/* 800D2608 000CF548  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D260C 000CF54C  D4 03 10 84 */	stfsu f0, mCurrentMtx__6J3DSys@l(r3)
/* 800D2610 000CF550  C0 25 00 04 */	lfs f1, 4(r5)
/* 800D2614 000CF554  C0 04 00 04 */	lfs f0, 4(r4)
/* 800D2618 000CF558  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D261C 000CF55C  D0 03 00 04 */	stfs f0, 4(r3)
/* 800D2620 000CF560  C0 25 00 08 */	lfs f1, 8(r5)
/* 800D2624 000CF564  C0 04 00 08 */	lfs f0, 8(r4)
/* 800D2628 000CF568  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D262C 000CF56C  D0 03 00 08 */	stfs f0, 8(r3)
/* 800D2630 000CF570  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 800D2634 000CF574  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800D2638 000CF578  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 800D263C 000CF57C  C0 04 00 00 */	lfs f0, 0(r4)
/* 800D2640 000CF580  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2644 000CF584  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800D2648 000CF588  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 800D264C 000CF58C  C0 04 00 04 */	lfs f0, 4(r4)
/* 800D2650 000CF590  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2654 000CF594  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 800D2658 000CF598  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 800D265C 000CF59C  C0 04 00 08 */	lfs f0, 8(r4)
/* 800D2660 000CF5A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2664 000CF5A4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800D2668 000CF5A8  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 800D266C 000CF5AC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800D2670 000CF5B0  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 800D2674 000CF5B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 800D2678 000CF5B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D267C 000CF5BC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 800D2680 000CF5C0  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 800D2684 000CF5C4  C0 04 00 04 */	lfs f0, 4(r4)
/* 800D2688 000CF5C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D268C 000CF5CC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 800D2690 000CF5D0  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 800D2694 000CF5D4  C0 04 00 08 */	lfs f0, 8(r4)
/* 800D2698 000CF5D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D269C 000CF5DC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 800D26A0 000CF5E0  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 800D26A4 000CF5E4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 800D26A8 000CF5E8  48 00 00 38 */	b lbl_800D26E0
lbl_800D26AC:
/* 800D26AC 000CF5EC  3C 60 80 40 */	lis r3, mCurrentS__6J3DSys@ha
/* 800D26B0 000CF5F0  80 04 00 00 */	lwz r0, 0(r4)
/* 800D26B4 000CF5F4  80 C4 00 04 */	lwz r6, 4(r4)
/* 800D26B8 000CF5F8  38 E3 10 B4 */	addi r7, r3, mCurrentS__6J3DSys@l
/* 800D26BC 000CF5FC  3C 60 80 40 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 800D26C0 000CF600  90 07 00 00 */	stw r0, 0(r7)
/* 800D26C4 000CF604  38 03 10 84 */	addi r0, r3, mCurrentMtx__6J3DSys@l
/* 800D26C8 000CF608  38 65 00 00 */	addi r3, r5, 0
/* 800D26CC 000CF60C  90 C7 00 04 */	stw r6, 4(r7)
/* 800D26D0 000CF610  80 A4 00 08 */	lwz r5, 8(r4)
/* 800D26D4 000CF614  7C 04 03 78 */	mr r4, r0
/* 800D26D8 000CF618  90 A7 00 08 */	stw r5, 8(r7)
/* 800D26DC 000CF61C  4B FC 1C 01 */	bl PSMTXCopy
lbl_800D26E0:
/* 800D26E0 000CF620  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800D26E4 000CF624  38 21 00 28 */	addi r1, r1, 0x28
/* 800D26E8 000CF628  7C 08 03 A6 */	mtlr r0
/* 800D26EC 000CF62C  4E 80 00 20 */	blr 

.global calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo
calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo:
/* 800D26F0 000CF630  7C 08 02 A6 */	mflr r0
/* 800D26F4 000CF634  90 01 00 04 */	stw r0, 4(r1)
/* 800D26F8 000CF638  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D26FC 000CF63C  88 03 00 5C */	lbz r0, 0x5c(r3)
/* 800D2700 000CF640  28 00 00 00 */	cmplwi r0, 0
/* 800D2704 000CF644  41 82 00 0C */	beq lbl_800D2710
/* 800D2708 000CF648  4B F4 B9 61 */	bl calcTransform__15J3DMtxCalcBasicFUsRC16J3DTransformInfo
/* 800D270C 000CF64C  48 00 00 08 */	b lbl_800D2714
lbl_800D2710:
/* 800D2710 000CF650  4B F4 BB A5 */	bl calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo
lbl_800D2714:
/* 800D2714 000CF654  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D2718 000CF658  38 21 00 08 */	addi r1, r1, 8
/* 800D271C 000CF65C  7C 08 03 A6 */	mtlr r0
/* 800D2720 000CF660  4E 80 00 20 */	blr 

.global __ct__24M3UMtxCalcSIAnmBlendQuatFb
__ct__24M3UMtxCalcSIAnmBlendQuatFb:
/* 800D2724 000CF664  7C 08 02 A6 */	mflr r0
/* 800D2728 000CF668  90 01 00 04 */	stw r0, 4(r1)
/* 800D272C 000CF66C  7C 80 07 35 */	extsh. r0, r4
/* 800D2730 000CF670  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800D2734 000CF674  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800D2738 000CF678  3B E5 00 00 */	addi r31, r5, 0
/* 800D273C 000CF67C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800D2740 000CF680  3B C3 00 00 */	addi r30, r3, 0
/* 800D2744 000CF684  41 82 00 18 */	beq lbl_800D275C
/* 800D2748 000CF688  38 1E 00 64 */	addi r0, r30, 0x64
/* 800D274C 000CF68C  3C 60 80 3B */	lis r3, __vt__10J3DMtxCalc@ha
/* 800D2750 000CF690  90 1E 00 00 */	stw r0, 0(r30)
/* 800D2754 000CF694  38 03 90 08 */	addi r0, r3, __vt__10J3DMtxCalc@l
/* 800D2758 000CF698  90 1E 00 64 */	stw r0, 0x64(r30)
lbl_800D275C:
/* 800D275C 000CF69C  38 7E 00 00 */	addi r3, r30, 0
/* 800D2760 000CF6A0  38 80 00 00 */	li r4, 0
/* 800D2764 000CF6A4  4B F4 B4 4D */	bl __ct__15J3DMtxCalcBasicFv
/* 800D2768 000CF6A8  3C 60 80 3B */	lis r3, __vt__19J3DMtxCalcSoftimage@ha
/* 800D276C 000CF6AC  38 83 8F 80 */	addi r4, r3, __vt__19J3DMtxCalcSoftimage@l
/* 800D2770 000CF6B0  90 9E 00 4C */	stw r4, 0x4c(r30)
/* 800D2774 000CF6B4  3C 60 80 3B */	lis r3, __vt__24M3UMtxCalcSIAnmBlendQuat@ha
/* 800D2778 000CF6B8  38 A3 34 9C */	addi r5, r3, __vt__24M3UMtxCalcSIAnmBlendQuat@l
/* 800D277C 000CF6BC  80 7E 00 00 */	lwz r3, 0(r30)
/* 800D2780 000CF6C0  38 04 00 24 */	addi r0, r4, 0x24
/* 800D2784 000CF6C4  38 FE 00 50 */	addi r7, r30, 0x50
/* 800D2788 000CF6C8  90 03 00 00 */	stw r0, 0(r3)
/* 800D278C 000CF6CC  38 C5 00 24 */	addi r6, r5, 0x24
/* 800D2790 000CF6D0  38 9E 00 64 */	addi r4, r30, 0x64
/* 800D2794 000CF6D4  81 1E 00 00 */	lwz r8, 0(r30)
/* 800D2798 000CF6D8  38 00 00 00 */	li r0, 0
/* 800D279C 000CF6DC  38 7E 00 00 */	addi r3, r30, 0
/* 800D27A0 000CF6E0  7C E8 38 50 */	subf r7, r8, r7
/* 800D27A4 000CF6E4  90 E8 00 04 */	stw r7, 4(r8)
/* 800D27A8 000CF6E8  90 BE 00 4C */	stw r5, 0x4c(r30)
/* 800D27AC 000CF6EC  80 BE 00 00 */	lwz r5, 0(r30)
/* 800D27B0 000CF6F0  90 C5 00 00 */	stw r6, 0(r5)
/* 800D27B4 000CF6F4  80 BE 00 00 */	lwz r5, 0(r30)
/* 800D27B8 000CF6F8  7C 85 20 50 */	subf r4, r5, r4
/* 800D27BC 000CF6FC  90 85 00 04 */	stw r4, 4(r5)
/* 800D27C0 000CF700  C0 02 8E E8 */	lfs f0, $$21572-_SDA2_BASE_(r2)
/* 800D27C4 000CF704  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 800D27C8 000CF708  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 800D27CC 000CF70C  90 1E 00 58 */	stw r0, 0x58(r30)
/* 800D27D0 000CF710  90 1E 00 54 */	stw r0, 0x54(r30)
/* 800D27D4 000CF714  9B FE 00 5C */	stb r31, 0x5c(r30)
/* 800D27D8 000CF718  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800D27DC 000CF71C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800D27E0 000CF720  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800D27E4 000CF724  7C 08 03 A6 */	mtlr r0
/* 800D27E8 000CF728  38 21 00 18 */	addi r1, r1, 0x18
/* 800D27EC 000CF72C  4E 80 00 20 */	blr 

.global M3UMtxCalcBlendAux__FUsP16J3DTransformInfoP16J3DTransformInfofb
M3UMtxCalcBlendAux__FUsP16J3DTransformInfoP16J3DTransformInfofb:
/* 800D27F0 000CF730  7C 08 02 A6 */	mflr r0
/* 800D27F4 000CF734  90 01 00 04 */	stw r0, 4(r1)
/* 800D27F8 000CF738  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 800D27FC 000CF73C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800D2800 000CF740  DB E1 00 F8 */	stfd f31, 0xf8(r1)
/* 800D2804 000CF744  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 800D2808 000CF748  DB A1 00 E8 */	stfd f29, 0xe8(r1)
/* 800D280C 000CF74C  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 800D2810 000CF750  DB 61 00 D8 */	stfd f27, 0xd8(r1)
/* 800D2814 000CF754  FF 60 08 90 */	fmr f27, f1
/* 800D2818 000CF758  BF 01 00 B8 */	stmw r24, 0xb8(r1)
/* 800D281C 000CF75C  7C DC 33 78 */	mr r28, r6
/* 800D2820 000CF760  3C C0 80 40 */	lis r6, mCurrentS__6J3DSys@ha
/* 800D2824 000CF764  3B 44 00 00 */	addi r26, r4, 0
/* 800D2828 000CF768  3B 65 00 00 */	addi r27, r5, 0
/* 800D282C 000CF76C  3B E6 10 B4 */	addi r31, r6, mCurrentS__6J3DSys@l
/* 800D2830 000CF770  C0 02 8E EC */	lfs f0, $$21573-_SDA2_BASE_(r2)
/* 800D2834 000CF774  EF 80 D8 28 */	fsubs f28, f0, f27
/* 800D2838 000CF778  41 82 00 14 */	beq lbl_800D284C
/* 800D283C 000CF77C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800D2840 000CF780  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800D2844 000CF784  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800D2848 000CF788  48 00 00 1C */	b lbl_800D2864
lbl_800D284C:
/* 800D284C 000CF78C  80 9F 00 00 */	lwz r4, 0(r31)
/* 800D2850 000CF790  80 1F 00 04 */	lwz r0, 4(r31)
/* 800D2854 000CF794  90 81 00 74 */	stw r4, 0x74(r1)
/* 800D2858 000CF798  90 01 00 78 */	stw r0, 0x78(r1)
/* 800D285C 000CF79C  80 1F 00 08 */	lwz r0, 8(r31)
/* 800D2860 000CF7A0  90 01 00 7C */	stw r0, 0x7c(r1)
lbl_800D2864:
/* 800D2864 000CF7A4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 800D2868 000CF7A8  C0 1B 00 04 */	lfs f0, 4(r27)
/* 800D286C 000CF7AC  EC 41 06 F2 */	fmuls f2, f1, f27
/* 800D2870 000CF7B0  C0 BA 00 00 */	lfs f5, 0(r26)
/* 800D2874 000CF7B4  C0 3B 00 08 */	lfs f1, 8(r27)
/* 800D2878 000CF7B8  EC 60 06 F2 */	fmuls f3, f0, f27
/* 800D287C 000CF7BC  C0 9A 00 04 */	lfs f4, 4(r26)
/* 800D2880 000CF7C0  EF A5 17 3A */	fmadds f29, f5, f28, f2
/* 800D2884 000CF7C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800D2888 000CF7C8  C0 5A 00 08 */	lfs f2, 8(r26)
/* 800D288C 000CF7CC  EC 21 06 F2 */	fmuls f1, f1, f27
/* 800D2890 000CF7D0  EF E4 1F 3A */	fmadds f31, f4, f28, f3
/* 800D2894 000CF7D4  EC 00 07 72 */	fmuls f0, f0, f29
/* 800D2898 000CF7D8  EF C2 0F 3A */	fmadds f30, f2, f28, f1
/* 800D289C 000CF7DC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800D28A0 000CF7E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800D28A4 000CF7E4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800D28A8 000CF7E8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 800D28AC 000CF7EC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800D28B0 000CF7F0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 800D28B4 000CF7F4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 800D28B8 000CF7F8  80 9F 00 00 */	lwz r4, 0(r31)
/* 800D28BC 000CF7FC  80 1F 00 04 */	lwz r0, 4(r31)
/* 800D28C0 000CF800  C0 22 8E EC */	lfs f1, $$21573-_SDA2_BASE_(r2)
/* 800D28C4 000CF804  90 81 00 2C */	stw r4, 0x2c(r1)
/* 800D28C8 000CF808  90 01 00 30 */	stw r0, 0x30(r1)
/* 800D28CC 000CF80C  80 1F 00 08 */	lwz r0, 8(r31)
/* 800D28D0 000CF810  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D28D4 000CF814  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800D28D8 000CF818  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800D28DC 000CF81C  40 82 00 24 */	bne lbl_800D2900
/* 800D28E0 000CF820  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800D28E4 000CF824  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800D28E8 000CF828  40 82 00 18 */	bne lbl_800D2900
/* 800D28EC 000CF82C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800D28F0 000CF830  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800D28F4 000CF834  40 82 00 0C */	bne lbl_800D2900
/* 800D28F8 000CF838  3B 20 00 01 */	li r25, 1
/* 800D28FC 000CF83C  48 00 00 08 */	b lbl_800D2904
lbl_800D2900:
/* 800D2900 000CF840  3B 20 00 00 */	li r25, 0
lbl_800D2904:
/* 800D2904 000CF844  3C 80 80 40 */	lis r4, j3dSys@ha
/* 800D2908 000CF848  38 84 0E D8 */	addi r4, r4, j3dSys@l
/* 800D290C 000CF84C  3B C4 00 38 */	addi r30, r4, 0x38
/* 800D2910 000CF850  80 84 00 38 */	lwz r4, 0x38(r4)
/* 800D2914 000CF854  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 800D2918 000CF858  80 64 00 50 */	lwz r3, 0x50(r4)
/* 800D291C 000CF85C  38 C1 00 48 */	addi r6, r1, 0x48
/* 800D2920 000CF860  7F 23 E9 AE */	stbx r25, r3, r29
/* 800D2924 000CF864  A8 7A 00 0C */	lha r3, 0xc(r26)
/* 800D2928 000CF868  A8 9A 00 0E */	lha r4, 0xe(r26)
/* 800D292C 000CF86C  A8 BA 00 10 */	lha r5, 0x10(r26)
/* 800D2930 000CF870  4B F4 13 59 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 800D2934 000CF874  3B 01 00 58 */	addi r24, r1, 0x58
/* 800D2938 000CF878  A8 7B 00 0C */	lha r3, 0xc(r27)
/* 800D293C 000CF87C  A8 9B 00 0E */	lha r4, 0xe(r27)
/* 800D2940 000CF880  7F 06 C3 78 */	mr r6, r24
/* 800D2944 000CF884  A8 BB 00 10 */	lha r5, 0x10(r27)
/* 800D2948 000CF888  4B F4 13 41 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 800D294C 000CF88C  FC 20 D8 90 */	fmr f1, f27
/* 800D2950 000CF890  38 98 00 00 */	addi r4, r24, 0
/* 800D2954 000CF894  38 61 00 48 */	addi r3, r1, 0x48
/* 800D2958 000CF898  38 A1 00 38 */	addi r5, r1, 0x38
/* 800D295C 000CF89C  4B F4 13 E5 */	bl JMAQuatLerp__FP10QuaternionP10QuaternionfP10Quaternion
/* 800D2960 000CF8A0  38 61 00 84 */	addi r3, r1, 0x84
/* 800D2964 000CF8A4  38 81 00 38 */	addi r4, r1, 0x38
/* 800D2968 000CF8A8  4B FC 1E 71 */	bl PSMTXQuat
/* 800D296C 000CF8AC  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 800D2970 000CF8B0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800D2974 000CF8B4  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 800D2978 000CF8B8  EC 00 06 F2 */	fmuls f0, f0, f27
/* 800D297C 000CF8BC  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 800D2980 000CF8C0  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 800D2984 000CF8C4  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 800D2988 000CF8C8  EC 01 07 3A */	fmadds f0, f1, f28, f0
/* 800D298C 000CF8CC  EC 04 00 32 */	fmuls f0, f4, f0
/* 800D2990 000CF8D0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 800D2994 000CF8D4  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 800D2998 000CF8D8  C0 3A 00 18 */	lfs f1, 0x18(r26)
/* 800D299C 000CF8DC  EC 00 06 F2 */	fmuls f0, f0, f27
/* 800D29A0 000CF8E0  EC 01 07 3A */	fmadds f0, f1, f28, f0
/* 800D29A4 000CF8E4  EC 03 00 32 */	fmuls f0, f3, f0
/* 800D29A8 000CF8E8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 800D29AC 000CF8EC  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 800D29B0 000CF8F0  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 800D29B4 000CF8F4  EC 00 06 F2 */	fmuls f0, f0, f27
/* 800D29B8 000CF8F8  EC 01 07 3A */	fmadds f0, f1, f28, f0
/* 800D29BC 000CF8FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800D29C0 000CF900  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 800D29C4 000CF904  41 82 00 AC */	beq lbl_800D2A70
/* 800D29C8 000CF908  2C 19 00 00 */	cmpwi r25, 0
/* 800D29CC 000CF90C  40 82 00 70 */	bne lbl_800D2A3C
/* 800D29D0 000CF910  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 800D29D4 000CF914  EC 00 07 72 */	fmuls f0, f0, f29
/* 800D29D8 000CF918  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 800D29DC 000CF91C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 800D29E0 000CF920  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800D29E4 000CF924  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 800D29E8 000CF928  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800D29EC 000CF92C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 800D29F0 000CF930  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 800D29F4 000CF934  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 800D29F8 000CF938  EC 00 07 72 */	fmuls f0, f0, f29
/* 800D29FC 000CF93C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 800D2A00 000CF940  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 800D2A04 000CF944  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800D2A08 000CF948  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 800D2A0C 000CF94C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 800D2A10 000CF950  EC 00 07 B2 */	fmuls f0, f0, f30
/* 800D2A14 000CF954  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 800D2A18 000CF958  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 800D2A1C 000CF95C  EC 00 07 72 */	fmuls f0, f0, f29
/* 800D2A20 000CF960  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 800D2A24 000CF964  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 800D2A28 000CF968  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800D2A2C 000CF96C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 800D2A30 000CF970  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 800D2A34 000CF974  EC 00 07 B2 */	fmuls f0, f0, f30
/* 800D2A38 000CF978  D0 01 00 AC */	stfs f0, 0xac(r1)
lbl_800D2A3C:
/* 800D2A3C 000CF97C  3C 60 80 40 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 800D2A40 000CF980  3B 43 10 84 */	addi r26, r3, mCurrentMtx__6J3DSys@l
/* 800D2A44 000CF984  38 7A 00 00 */	addi r3, r26, 0
/* 800D2A48 000CF988  38 BA 00 00 */	addi r5, r26, 0
/* 800D2A4C 000CF98C  38 81 00 84 */	addi r4, r1, 0x84
/* 800D2A50 000CF990  4B FC 18 C1 */	bl PSMTXConcat
/* 800D2A54 000CF994  80 7E 00 00 */	lwz r3, 0(r30)
/* 800D2A58 000CF998  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 800D2A5C 000CF99C  80 83 00 58 */	lwz r4, 0x58(r3)
/* 800D2A60 000CF9A0  38 7A 00 00 */	addi r3, r26, 0
/* 800D2A64 000CF9A4  7C 84 02 14 */	add r4, r4, r0
/* 800D2A68 000CF9A8  4B FC 18 75 */	bl PSMTXCopy
/* 800D2A6C 000CF9AC  48 00 01 00 */	b lbl_800D2B6C
lbl_800D2A70:
/* 800D2A70 000CF9B0  3C 60 80 40 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 800D2A74 000CF9B4  3B 43 10 84 */	addi r26, r3, mCurrentMtx__6J3DSys@l
/* 800D2A78 000CF9B8  38 7A 00 00 */	addi r3, r26, 0
/* 800D2A7C 000CF9BC  38 BA 00 00 */	addi r5, r26, 0
/* 800D2A80 000CF9C0  38 81 00 84 */	addi r4, r1, 0x84
/* 800D2A84 000CF9C4  4B FC 18 8D */	bl PSMTXConcat
/* 800D2A88 000CF9C8  2C 19 00 00 */	cmpwi r25, 0
/* 800D2A8C 000CF9CC  41 82 00 20 */	beq lbl_800D2AAC
/* 800D2A90 000CF9D0  80 7E 00 00 */	lwz r3, 0(r30)
/* 800D2A94 000CF9D4  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 800D2A98 000CF9D8  80 83 00 58 */	lwz r4, 0x58(r3)
/* 800D2A9C 000CF9DC  38 7A 00 00 */	addi r3, r26, 0
/* 800D2AA0 000CF9E0  7C 84 02 14 */	add r4, r4, r0
/* 800D2AA4 000CF9E4  4B FC 18 39 */	bl PSMTXCopy
/* 800D2AA8 000CF9E8  48 00 00 C4 */	b lbl_800D2B6C
lbl_800D2AAC:
/* 800D2AAC 000CF9EC  C0 3A 00 00 */	lfs f1, 0(r26)
/* 800D2AB0 000CF9F0  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 800D2AB4 000CF9F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800D2AB8 000CF9F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2ABC 000CF9FC  38 61 00 84 */	addi r3, r1, 0x84
/* 800D2AC0 000CFA00  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 800D2AC4 000CFA04  C0 3A 00 04 */	lfs f1, 4(r26)
/* 800D2AC8 000CFA08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800D2ACC 000CFA0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2AD0 000CFA10  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 800D2AD4 000CFA14  C0 3A 00 08 */	lfs f1, 8(r26)
/* 800D2AD8 000CFA18  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800D2ADC 000CFA1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2AE0 000CFA20  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 800D2AE4 000CFA24  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 800D2AE8 000CFA28  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 800D2AEC 000CFA2C  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 800D2AF0 000CFA30  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800D2AF4 000CFA34  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2AF8 000CFA38  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 800D2AFC 000CFA3C  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 800D2B00 000CFA40  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800D2B04 000CFA44  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2B08 000CFA48  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 800D2B0C 000CFA4C  C0 3A 00 18 */	lfs f1, 0x18(r26)
/* 800D2B10 000CFA50  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800D2B14 000CFA54  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2B18 000CFA58  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 800D2B1C 000CFA5C  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800D2B20 000CFA60  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 800D2B24 000CFA64  C0 3A 00 20 */	lfs f1, 0x20(r26)
/* 800D2B28 000CFA68  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800D2B2C 000CFA6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2B30 000CFA70  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 800D2B34 000CFA74  C0 3A 00 24 */	lfs f1, 0x24(r26)
/* 800D2B38 000CFA78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800D2B3C 000CFA7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2B40 000CFA80  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 800D2B44 000CFA84  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 800D2B48 000CFA88  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800D2B4C 000CFA8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D2B50 000CFA90  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 800D2B54 000CFA94  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 800D2B58 000CFA98  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 800D2B5C 000CFA9C  80 9E 00 00 */	lwz r4, 0(r30)
/* 800D2B60 000CFAA0  80 84 00 58 */	lwz r4, 0x58(r4)
/* 800D2B64 000CFAA4  7C 84 02 14 */	add r4, r4, r0
/* 800D2B68 000CFAA8  4B FC 17 75 */	bl PSMTXCopy
lbl_800D2B6C:
/* 800D2B6C 000CFAAC  BB 01 00 B8 */	lmw r24, 0xb8(r1)
/* 800D2B70 000CFAB0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 800D2B74 000CFAB4  CB E1 00 F8 */	lfd f31, 0xf8(r1)
/* 800D2B78 000CFAB8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 800D2B7C 000CFABC  7C 08 03 A6 */	mtlr r0
/* 800D2B80 000CFAC0  CB A1 00 E8 */	lfd f29, 0xe8(r1)
/* 800D2B84 000CFAC4  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 800D2B88 000CFAC8  CB 61 00 D8 */	lfd f27, 0xd8(r1)
/* 800D2B8C 000CFACC  38 21 01 00 */	addi r1, r1, 0x100
/* 800D2B90 000CFAD0  4E 80 00 20 */	blr 

.global $$2100$$24$$2calc__24M3UMtxCalcSIAnmBlendQuatFUs
$$2100$$24$$2calc__24M3UMtxCalcSIAnmBlendQuatFUs:
/* 800D2B94 000CFAD4  39 60 00 04 */	li r11, 4
/* 800D2B98 000CFAD8  7D 63 58 2E */	lwzx r11, r3, r11
/* 800D2B9C 000CFADC  7C 63 5A 14 */	add r3, r3, r11
/* 800D2BA0 000CFAE0  38 63 FF 9C */	addi r3, r3, -100
/* 800D2BA4 000CFAE4  4B FF F7 CC */	b calc__24M3UMtxCalcSIAnmBlendQuatFUs

.global $$2100$$24$$2calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo
$$2100$$24$$2calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo:
/* 800D2BA8 000CFAE8  39 60 00 04 */	li r11, 4
/* 800D2BAC 000CFAEC  7D 63 58 2E */	lwzx r11, r3, r11
/* 800D2BB0 000CFAF0  7C 63 5A 14 */	add r3, r3, r11
/* 800D2BB4 000CFAF4  38 63 FF 9C */	addi r3, r3, -100
/* 800D2BB8 000CFAF8  4B FF FB 38 */	b calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo

.global $$2100$$24$$2recursiveEntry__15J3DMtxCalcBasicFP7J3DNode
$$2100$$24$$2recursiveEntry__15J3DMtxCalcBasicFP7J3DNode:
/* 800D2BBC 000CFAFC  39 60 00 04 */	li r11, 4
/* 800D2BC0 000CFB00  7D 63 58 2E */	lwzx r11, r3, r11
/* 800D2BC4 000CFB04  7C 63 5A 14 */	add r3, r3, r11
/* 800D2BC8 000CFB08  38 63 FF 9C */	addi r3, r3, -100
/* 800D2BCC 000CFB0C  4B F4 B4 1C */	b recursiveEntry__15J3DMtxCalcBasicFP7J3DNode

.global $$2100$$24$$2recursiveCalc__15J3DMtxCalcBasicFP7J3DNode
$$2100$$24$$2recursiveCalc__15J3DMtxCalcBasicFP7J3DNode:
/* 800D2BD0 000CFB10  39 60 00 04 */	li r11, 4
/* 800D2BD4 000CFB14  7D 63 58 2E */	lwzx r11, r3, r11
/* 800D2BD8 000CFB18  7C 63 5A 14 */	add r3, r3, r11
/* 800D2BDC 000CFB1C  38 63 FF 9C */	addi r3, r3, -100
/* 800D2BE0 000CFB20  4B F4 B2 44 */	b recursiveCalc__15J3DMtxCalcBasicFP7J3DNode

.global $$2100$$24$$2recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode
$$2100$$24$$2recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode:
/* 800D2BE4 000CFB24  39 60 00 04 */	li r11, 4
/* 800D2BE8 000CFB28  7D 63 58 2E */	lwzx r11, r3, r11
/* 800D2BEC 000CFB2C  7C 63 5A 14 */	add r3, r3, r11
/* 800D2BF0 000CFB30  38 63 FF 9C */	addi r3, r3, -100
/* 800D2BF4 000CFB34  4B F4 B0 04 */	b recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode

.global $$2100$$24$$2init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf
$$2100$$24$$2init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf:
/* 800D2BF8 000CFB38  39 60 00 04 */	li r11, 4
/* 800D2BFC 000CFB3C  7D 63 58 2E */	lwzx r11, r3, r11
/* 800D2C00 000CFB40  7C 63 5A 14 */	add r3, r3, r11
/* 800D2C04 000CFB44  38 63 FF 9C */	addi r3, r3, -100
/* 800D2C08 000CFB48  4B FF F9 7C */	b init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global $$21411
$$21411:
	.incbin "baserom.dol", 0x3B0490, 0xC
.global __vt__24M3UMtxCalcSIAnmBlendQuat
__vt__24M3UMtxCalcSIAnmBlendQuat:
	.incbin "baserom.dol", 0x3B049C, 0x44

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
.global $$21572
$$21572:
	.incbin "baserom.dol", 0x3E4BE8, 0x4
.global $$21573
$$21573:
	.incbin "baserom.dol", 0x3E4BEC, 0x4