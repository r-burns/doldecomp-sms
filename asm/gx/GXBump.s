.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global GXSetTevIndirect
GXSetTevIndirect:
/* 800AB338 000A8278  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800AB33C 000A827C  54 84 07 B6 */	rlwinm r4, r4, 0, 0x1e, 0x1b
/* 800AB340 000A8280  54 A0 10 3A */	slwi r0, r5, 2
/* 800AB344 000A8284  7C 80 03 78 */	or r0, r4, r0
/* 800AB348 000A8288  81 61 00 34 */	lwz r11, 0x34(r1)
/* 800AB34C 000A828C  54 05 07 30 */	rlwinm r5, r0, 0, 0x1c, 0x18
/* 800AB350 000A8290  89 81 00 33 */	lbz r12, 0x33(r1)
/* 800AB354 000A8294  54 C0 20 36 */	slwi r0, r6, 4
/* 800AB358 000A8298  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800AB35C 000A829C  7C A0 03 78 */	or r0, r5, r0
/* 800AB360 000A82A0  54 05 06 6C */	rlwinm r5, r0, 0, 0x19, 0x16
/* 800AB364 000A82A4  55 60 38 30 */	slwi r0, r11, 7
/* 800AB368 000A82A8  7C A0 03 78 */	or r0, r5, r0
/* 800AB36C 000A82AC  54 05 05 E4 */	rlwinm r5, r0, 0, 0x17, 0x12
/* 800AB370 000A82B0  54 E0 48 2C */	slwi r0, r7, 9
/* 800AB374 000A82B4  7C A0 03 78 */	or r0, r5, r0
/* 800AB378 000A82B8  54 05 04 DE */	rlwinm r5, r0, 0, 0x13, 0xf
/* 800AB37C 000A82BC  55 00 68 24 */	slwi r0, r8, 0xd
/* 800AB380 000A82C0  7C A0 03 78 */	or r0, r5, r0
/* 800AB384 000A82C4  38 A3 00 10 */	addi r5, r3, 0x10
/* 800AB388 000A82C8  54 03 04 18 */	rlwinm r3, r0, 0, 0x10, 0xc
/* 800AB38C 000A82CC  55 20 80 1E */	slwi r0, r9, 0x10
/* 800AB390 000A82D0  7C 60 03 78 */	or r0, r3, r0
/* 800AB394 000A82D4  54 03 03 56 */	rlwinm r3, r0, 0, 0xd, 0xb
/* 800AB398 000A82D8  55 80 98 18 */	slwi r0, r12, 0x13
/* 800AB39C 000A82DC  7C 60 03 78 */	or r0, r3, r0
/* 800AB3A0 000A82E0  54 03 03 14 */	rlwinm r3, r0, 0, 0xc, 0xa
/* 800AB3A4 000A82E4  55 40 A1 16 */	rlwinm r0, r10, 0x14, 4, 0xb
/* 800AB3A8 000A82E8  7C 66 03 78 */	or r6, r3, r0
/* 800AB3AC 000A82EC  38 00 00 61 */	li r0, 0x61
/* 800AB3B0 000A82F0  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800AB3B4 000A82F4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800AB3B8 000A82F8  54 A0 C0 0E */	slwi r0, r5, 0x18
/* 800AB3BC 000A82FC  50 C0 02 3E */	rlwimi r0, r6, 0, 8, 0x1f
/* 800AB3C0 000A8300  90 03 80 00 */	stw r0, -0x8000(r3)
/* 800AB3C4 000A8304  38 00 00 00 */	li r0, 0
/* 800AB3C8 000A8308  B0 04 00 02 */	sth r0, 2(r4)
/* 800AB3CC 000A830C  38 21 00 28 */	addi r1, r1, 0x28
/* 800AB3D0 000A8310  4E 80 00 20 */	blr 

.global GXSetIndTexMtx
GXSetIndTexMtx:
/* 800AB3D4 000A8314  2C 03 00 08 */	cmpwi r3, 8
/* 800AB3D8 000A8318  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 800AB3DC 000A831C  41 82 00 44 */	beq lbl_800AB420
/* 800AB3E0 000A8320  40 80 00 1C */	bge lbl_800AB3FC
/* 800AB3E4 000A8324  2C 03 00 04 */	cmpwi r3, 4
/* 800AB3E8 000A8328  41 82 00 38 */	beq lbl_800AB420
/* 800AB3EC 000A832C  40 80 00 24 */	bge lbl_800AB410
/* 800AB3F0 000A8330  2C 03 00 01 */	cmpwi r3, 1
/* 800AB3F4 000A8334  40 80 00 14 */	bge lbl_800AB408
/* 800AB3F8 000A8338  48 00 00 28 */	b lbl_800AB420
lbl_800AB3FC:
/* 800AB3FC 000A833C  2C 03 00 0C */	cmpwi r3, 0xc
/* 800AB400 000A8340  40 80 00 20 */	bge lbl_800AB420
/* 800AB404 000A8344  48 00 00 14 */	b lbl_800AB418
lbl_800AB408:
/* 800AB408 000A8348  38 03 FF FF */	addi r0, r3, -1
/* 800AB40C 000A834C  48 00 00 18 */	b lbl_800AB424
lbl_800AB410:
/* 800AB410 000A8350  38 03 FF FB */	addi r0, r3, -5
/* 800AB414 000A8354  48 00 00 10 */	b lbl_800AB424
lbl_800AB418:
/* 800AB418 000A8358  38 03 FF F7 */	addi r0, r3, -9
/* 800AB41C 000A835C  48 00 00 08 */	b lbl_800AB424
lbl_800AB420:
/* 800AB420 000A8360  38 00 00 00 */	li r0, 0
lbl_800AB424:
/* 800AB424 000A8364  C0 42 8B 50 */	lfs f2, $$245@sda21(r2)
/* 800AB428 000A8368  1C 60 00 03 */	mulli r3, r0, 3
/* 800AB42C 000A836C  C0 24 00 00 */	lfs f1, 0(r4)
/* 800AB430 000A8370  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 800AB434 000A8374  EC 22 00 72 */	fmuls f1, f2, f1
/* 800AB438 000A8378  39 65 00 11 */	addi r11, r5, 0x11
/* 800AB43C 000A837C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800AB440 000A8380  38 03 00 06 */	addi r0, r3, 6
/* 800AB444 000A8384  7D 6B 07 74 */	extsb r11, r11
/* 800AB448 000A8388  FC 20 08 1E */	fctiwz f1, f1
/* 800AB44C 000A838C  39 40 00 61 */	li r10, 0x61
/* 800AB450 000A8390  FC 00 00 1E */	fctiwz f0, f0
/* 800AB454 000A8394  3D 20 CC 01 */	lis r9, 0xCC008000@ha
/* 800AB458 000A8398  99 49 80 00 */	stb r10, 0xCC008000@l(r9)
/* 800AB45C 000A839C  D8 21 00 70 */	stfd f1, 0x70(r1)
/* 800AB460 000A83A0  54 00 C0 0E */	slwi r0, r0, 0x18
/* 800AB464 000A83A4  38 C3 00 07 */	addi r6, r3, 7
/* 800AB468 000A83A8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 800AB46C 000A83AC  38 A3 00 08 */	addi r5, r3, 8
/* 800AB470 000A83B0  81 01 00 74 */	lwz r8, 0x74(r1)
/* 800AB474 000A83B4  80 E1 00 6C */	lwz r7, 0x6c(r1)
/* 800AB478 000A83B8  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB47C 000A83BC  54 E7 5A A8 */	rlwinm r7, r7, 0xb, 0xa, 0x14
/* 800AB480 000A83C0  51 07 05 7E */	rlwimi r7, r8, 0, 0x15, 0x1f
/* 800AB484 000A83C4  54 E7 02 8E */	rlwinm r7, r7, 0, 0xa, 7
/* 800AB488 000A83C8  51 67 B2 12 */	rlwimi r7, r11, 0x16, 8, 9
/* 800AB48C 000A83CC  50 E0 02 3E */	rlwimi r0, r7, 0, 8, 0x1f
/* 800AB490 000A83D0  90 09 80 00 */	stw r0, -0x8000(r9)
/* 800AB494 000A83D4  38 00 00 00 */	li r0, 0
/* 800AB498 000A83D8  C0 24 00 04 */	lfs f1, 4(r4)
/* 800AB49C 000A83DC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 800AB4A0 000A83E0  EC 22 00 72 */	fmuls f1, f2, f1
/* 800AB4A4 000A83E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800AB4A8 000A83E8  99 49 80 00 */	stb r10, -0x8000(r9)
/* 800AB4AC 000A83EC  FC 20 08 1E */	fctiwz f1, f1
/* 800AB4B0 000A83F0  FC 00 00 1E */	fctiwz f0, f0
/* 800AB4B4 000A83F4  D8 21 00 60 */	stfd f1, 0x60(r1)
/* 800AB4B8 000A83F8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 800AB4BC 000A83FC  81 01 00 64 */	lwz r8, 0x64(r1)
/* 800AB4C0 000A8400  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 800AB4C4 000A8404  54 E7 5A A8 */	rlwinm r7, r7, 0xb, 0xa, 0x14
/* 800AB4C8 000A8408  51 07 05 7E */	rlwimi r7, r8, 0, 0x15, 0x1f
/* 800AB4CC 000A840C  54 E7 02 8E */	rlwinm r7, r7, 0, 0xa, 7
/* 800AB4D0 000A8410  51 67 A2 12 */	rlwimi r7, r11, 0x14, 8, 9
/* 800AB4D4 000A8414  54 E7 02 3E */	clrlwi r7, r7, 8
/* 800AB4D8 000A8418  50 C7 C0 0E */	rlwimi r7, r6, 0x18, 0, 7
/* 800AB4DC 000A841C  90 E9 80 00 */	stw r7, -0x8000(r9)
/* 800AB4E0 000A8420  C0 24 00 08 */	lfs f1, 8(r4)
/* 800AB4E4 000A8424  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 800AB4E8 000A8428  EC 22 00 72 */	fmuls f1, f2, f1
/* 800AB4EC 000A842C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800AB4F0 000A8430  99 49 80 00 */	stb r10, -0x8000(r9)
/* 800AB4F4 000A8434  FC 20 08 1E */	fctiwz f1, f1
/* 800AB4F8 000A8438  FC 00 00 1E */	fctiwz f0, f0
/* 800AB4FC 000A843C  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 800AB500 000A8440  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 800AB504 000A8444  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 800AB508 000A8448  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 800AB50C 000A844C  54 84 5A A8 */	rlwinm r4, r4, 0xb, 0xa, 0x14
/* 800AB510 000A8450  50 C4 05 7E */	rlwimi r4, r6, 0, 0x15, 0x1f
/* 800AB514 000A8454  54 84 02 8E */	rlwinm r4, r4, 0, 0xa, 7
/* 800AB518 000A8458  51 64 92 12 */	rlwimi r4, r11, 0x12, 8, 9
/* 800AB51C 000A845C  54 84 02 3E */	clrlwi r4, r4, 8
/* 800AB520 000A8460  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 800AB524 000A8464  90 89 80 00 */	stw r4, -0x8000(r9)
/* 800AB528 000A8468  B0 03 00 02 */	sth r0, 2(r3)
/* 800AB52C 000A846C  38 21 00 78 */	addi r1, r1, 0x78
/* 800AB530 000A8470  4E 80 00 20 */	blr 

.global GXSetIndTexCoordScale
GXSetIndTexCoordScale:
/* 800AB534 000A8474  2C 03 00 02 */	cmpwi r3, 2
/* 800AB538 000A8478  41 82 00 F4 */	beq lbl_800AB62C
/* 800AB53C 000A847C  40 80 00 14 */	bge lbl_800AB550
/* 800AB540 000A8480  2C 03 00 00 */	cmpwi r3, 0
/* 800AB544 000A8484  41 82 00 18 */	beq lbl_800AB55C
/* 800AB548 000A8488  40 80 00 7C */	bge lbl_800AB5C4
/* 800AB54C 000A848C  48 00 01 AC */	b lbl_800AB6F8
lbl_800AB550:
/* 800AB550 000A8490  2C 03 00 04 */	cmpwi r3, 4
/* 800AB554 000A8494  40 80 01 A4 */	bge lbl_800AB6F8
/* 800AB558 000A8498  48 00 01 3C */	b lbl_800AB694
lbl_800AB55C:
/* 800AB55C 000A849C  80 CD 82 C8 */	lwz r6, gx@sda21(r13)
/* 800AB560 000A84A0  54 A3 20 36 */	slwi r3, r5, 4
/* 800AB564 000A84A4  38 00 00 61 */	li r0, 0x61
/* 800AB568 000A84A8  38 E6 01 28 */	addi r7, r6, 0x128
/* 800AB56C 000A84AC  80 C6 01 28 */	lwz r6, 0x128(r6)
/* 800AB570 000A84B0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AB574 000A84B4  54 C6 00 36 */	rlwinm r6, r6, 0, 0, 0x1b
/* 800AB578 000A84B8  7C C4 23 78 */	or r4, r6, r4
/* 800AB57C 000A84BC  90 87 00 00 */	stw r4, 0(r7)
/* 800AB580 000A84C0  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800AB584 000A84C4  38 C4 01 28 */	addi r6, r4, 0x128
/* 800AB588 000A84C8  80 84 01 28 */	lwz r4, 0x128(r4)
/* 800AB58C 000A84CC  54 84 07 2E */	rlwinm r4, r4, 0, 0x1c, 0x17
/* 800AB590 000A84D0  7C 83 1B 78 */	or r3, r4, r3
/* 800AB594 000A84D4  90 66 00 00 */	stw r3, 0(r6)
/* 800AB598 000A84D8  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB59C 000A84DC  38 83 01 28 */	addi r4, r3, 0x128
/* 800AB5A0 000A84E0  80 63 01 28 */	lwz r3, 0x128(r3)
/* 800AB5A4 000A84E4  54 63 02 3E */	clrlwi r3, r3, 8
/* 800AB5A8 000A84E8  64 63 25 00 */	oris r3, r3, 0x2500
/* 800AB5AC 000A84EC  90 64 00 00 */	stw r3, 0(r4)
/* 800AB5B0 000A84F0  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800AB5B4 000A84F4  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB5B8 000A84F8  80 03 01 28 */	lwz r0, 0x128(r3)
/* 800AB5BC 000A84FC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800AB5C0 000A8500  48 00 01 38 */	b lbl_800AB6F8
lbl_800AB5C4:
/* 800AB5C4 000A8504  80 ED 82 C8 */	lwz r7, gx@sda21(r13)
/* 800AB5C8 000A8508  54 A3 60 26 */	slwi r3, r5, 0xc
/* 800AB5CC 000A850C  84 A7 01 28 */	lwzu r5, 0x128(r7)
/* 800AB5D0 000A8510  54 86 40 2E */	slwi r6, r4, 8
/* 800AB5D4 000A8514  38 00 00 61 */	li r0, 0x61
/* 800AB5D8 000A8518  54 A5 06 26 */	rlwinm r5, r5, 0, 0x18, 0x13
/* 800AB5DC 000A851C  7C A5 33 78 */	or r5, r5, r6
/* 800AB5E0 000A8520  90 A7 00 00 */	stw r5, 0(r7)
/* 800AB5E4 000A8524  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800AB5E8 000A8528  80 AD 82 C8 */	lwz r5, gx@sda21(r13)
/* 800AB5EC 000A852C  38 C5 01 28 */	addi r6, r5, 0x128
/* 800AB5F0 000A8530  80 A5 01 28 */	lwz r5, 0x128(r5)
/* 800AB5F4 000A8534  54 A5 05 1E */	rlwinm r5, r5, 0, 0x14, 0xf
/* 800AB5F8 000A8538  7C A3 1B 78 */	or r3, r5, r3
/* 800AB5FC 000A853C  90 66 00 00 */	stw r3, 0(r6)
/* 800AB600 000A8540  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB604 000A8544  38 A3 01 28 */	addi r5, r3, 0x128
/* 800AB608 000A8548  80 63 01 28 */	lwz r3, 0x128(r3)
/* 800AB60C 000A854C  54 63 02 3E */	clrlwi r3, r3, 8
/* 800AB610 000A8550  64 63 25 00 */	oris r3, r3, 0x2500
/* 800AB614 000A8554  90 65 00 00 */	stw r3, 0(r5)
/* 800AB618 000A8558  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800AB61C 000A855C  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB620 000A8560  80 03 01 28 */	lwz r0, 0x128(r3)
/* 800AB624 000A8564  90 04 80 00 */	stw r0, -0x8000(r4)
/* 800AB628 000A8568  48 00 00 D0 */	b lbl_800AB6F8
lbl_800AB62C:
/* 800AB62C 000A856C  80 CD 82 C8 */	lwz r6, gx@sda21(r13)
/* 800AB630 000A8570  54 A3 20 36 */	slwi r3, r5, 4
/* 800AB634 000A8574  38 00 00 61 */	li r0, 0x61
/* 800AB638 000A8578  38 E6 01 2C */	addi r7, r6, 0x12c
/* 800AB63C 000A857C  80 C6 01 2C */	lwz r6, 0x12c(r6)
/* 800AB640 000A8580  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AB644 000A8584  54 C6 00 36 */	rlwinm r6, r6, 0, 0, 0x1b
/* 800AB648 000A8588  7C C4 23 78 */	or r4, r6, r4
/* 800AB64C 000A858C  90 87 00 00 */	stw r4, 0(r7)
/* 800AB650 000A8590  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800AB654 000A8594  38 C4 01 2C */	addi r6, r4, 0x12c
/* 800AB658 000A8598  80 84 01 2C */	lwz r4, 0x12c(r4)
/* 800AB65C 000A859C  54 84 07 2E */	rlwinm r4, r4, 0, 0x1c, 0x17
/* 800AB660 000A85A0  7C 83 1B 78 */	or r3, r4, r3
/* 800AB664 000A85A4  90 66 00 00 */	stw r3, 0(r6)
/* 800AB668 000A85A8  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB66C 000A85AC  38 83 01 2C */	addi r4, r3, 0x12c
/* 800AB670 000A85B0  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 800AB674 000A85B4  54 63 02 3E */	clrlwi r3, r3, 8
/* 800AB678 000A85B8  64 63 26 00 */	oris r3, r3, 0x2600
/* 800AB67C 000A85BC  90 64 00 00 */	stw r3, 0(r4)
/* 800AB680 000A85C0  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800AB684 000A85C4  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB688 000A85C8  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 800AB68C 000A85CC  90 05 80 00 */	stw r0, -0x8000(r5)
/* 800AB690 000A85D0  48 00 00 68 */	b lbl_800AB6F8
lbl_800AB694:
/* 800AB694 000A85D4  80 ED 82 C8 */	lwz r7, gx@sda21(r13)
/* 800AB698 000A85D8  54 A3 60 26 */	slwi r3, r5, 0xc
/* 800AB69C 000A85DC  84 A7 01 2C */	lwzu r5, 0x12c(r7)
/* 800AB6A0 000A85E0  54 86 40 2E */	slwi r6, r4, 8
/* 800AB6A4 000A85E4  38 00 00 61 */	li r0, 0x61
/* 800AB6A8 000A85E8  54 A5 06 26 */	rlwinm r5, r5, 0, 0x18, 0x13
/* 800AB6AC 000A85EC  7C A5 33 78 */	or r5, r5, r6
/* 800AB6B0 000A85F0  90 A7 00 00 */	stw r5, 0(r7)
/* 800AB6B4 000A85F4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800AB6B8 000A85F8  80 AD 82 C8 */	lwz r5, gx@sda21(r13)
/* 800AB6BC 000A85FC  38 C5 01 2C */	addi r6, r5, 0x12c
/* 800AB6C0 000A8600  80 A5 01 2C */	lwz r5, 0x12c(r5)
/* 800AB6C4 000A8604  54 A5 05 1E */	rlwinm r5, r5, 0, 0x14, 0xf
/* 800AB6C8 000A8608  7C A3 1B 78 */	or r3, r5, r3
/* 800AB6CC 000A860C  90 66 00 00 */	stw r3, 0(r6)
/* 800AB6D0 000A8610  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB6D4 000A8614  38 A3 01 2C */	addi r5, r3, 0x12c
/* 800AB6D8 000A8618  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 800AB6DC 000A861C  54 63 02 3E */	clrlwi r3, r3, 8
/* 800AB6E0 000A8620  64 63 26 00 */	oris r3, r3, 0x2600
/* 800AB6E4 000A8624  90 65 00 00 */	stw r3, 0(r5)
/* 800AB6E8 000A8628  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 800AB6EC 000A862C  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB6F0 000A8630  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 800AB6F4 000A8634  90 04 80 00 */	stw r0, -0x8000(r4)
lbl_800AB6F8:
/* 800AB6F8 000A8638  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB6FC 000A863C  38 00 00 00 */	li r0, 0
/* 800AB700 000A8640  B0 03 00 02 */	sth r0, 2(r3)
/* 800AB704 000A8644  4E 80 00 20 */	blr 

.global GXSetIndTexOrder
GXSetIndTexOrder:
/* 800AB708 000A8648  2C 03 00 02 */	cmpwi r3, 2
/* 800AB70C 000A864C  41 82 00 94 */	beq lbl_800AB7A0
/* 800AB710 000A8650  40 80 00 14 */	bge lbl_800AB724
/* 800AB714 000A8654  2C 03 00 00 */	cmpwi r3, 0
/* 800AB718 000A8658  41 82 00 18 */	beq lbl_800AB730
/* 800AB71C 000A865C  40 80 00 4C */	bge lbl_800AB768
/* 800AB720 000A8660  48 00 00 EC */	b lbl_800AB80C
lbl_800AB724:
/* 800AB724 000A8664  2C 03 00 04 */	cmpwi r3, 4
/* 800AB728 000A8668  40 80 00 E4 */	bge lbl_800AB80C
/* 800AB72C 000A866C  48 00 00 AC */	b lbl_800AB7D8
lbl_800AB730:
/* 800AB730 000A8670  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB734 000A8674  54 80 18 38 */	slwi r0, r4, 3
/* 800AB738 000A8678  38 83 01 20 */	addi r4, r3, 0x120
/* 800AB73C 000A867C  80 63 01 20 */	lwz r3, 0x120(r3)
/* 800AB740 000A8680  54 63 00 38 */	rlwinm r3, r3, 0, 0, 0x1c
/* 800AB744 000A8684  7C 63 2B 78 */	or r3, r3, r5
/* 800AB748 000A8688  90 64 00 00 */	stw r3, 0(r4)
/* 800AB74C 000A868C  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB750 000A8690  38 83 01 20 */	addi r4, r3, 0x120
/* 800AB754 000A8694  80 63 01 20 */	lwz r3, 0x120(r3)
/* 800AB758 000A8698  54 63 07 72 */	rlwinm r3, r3, 0, 0x1d, 0x19
/* 800AB75C 000A869C  7C 60 03 78 */	or r0, r3, r0
/* 800AB760 000A86A0  90 04 00 00 */	stw r0, 0(r4)
/* 800AB764 000A86A4  48 00 00 A8 */	b lbl_800AB80C
lbl_800AB768:
/* 800AB768 000A86A8  80 CD 82 C8 */	lwz r6, gx@sda21(r13)
/* 800AB76C 000A86AC  54 80 48 2C */	slwi r0, r4, 9
/* 800AB770 000A86B0  54 A3 30 32 */	slwi r3, r5, 6
/* 800AB774 000A86B4  80 86 01 20 */	lwz r4, 0x120(r6)
/* 800AB778 000A86B8  54 84 06 AC */	rlwinm r4, r4, 0, 0x1a, 0x16
/* 800AB77C 000A86BC  7C 83 1B 78 */	or r3, r4, r3
/* 800AB780 000A86C0  90 66 01 20 */	stw r3, 0x120(r6)
/* 800AB784 000A86C4  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB788 000A86C8  38 83 01 20 */	addi r4, r3, 0x120
/* 800AB78C 000A86CC  80 63 01 20 */	lwz r3, 0x120(r3)
/* 800AB790 000A86D0  54 63 05 E6 */	rlwinm r3, r3, 0, 0x17, 0x13
/* 800AB794 000A86D4  7C 60 03 78 */	or r0, r3, r0
/* 800AB798 000A86D8  90 04 00 00 */	stw r0, 0(r4)
/* 800AB79C 000A86DC  48 00 00 70 */	b lbl_800AB80C
lbl_800AB7A0:
/* 800AB7A0 000A86E0  80 CD 82 C8 */	lwz r6, gx@sda21(r13)
/* 800AB7A4 000A86E4  54 80 78 20 */	slwi r0, r4, 0xf
/* 800AB7A8 000A86E8  54 A3 60 26 */	slwi r3, r5, 0xc
/* 800AB7AC 000A86EC  80 86 01 20 */	lwz r4, 0x120(r6)
/* 800AB7B0 000A86F0  54 84 05 20 */	rlwinm r4, r4, 0, 0x14, 0x10
/* 800AB7B4 000A86F4  7C 83 1B 78 */	or r3, r4, r3
/* 800AB7B8 000A86F8  90 66 01 20 */	stw r3, 0x120(r6)
/* 800AB7BC 000A86FC  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB7C0 000A8700  38 83 01 20 */	addi r4, r3, 0x120
/* 800AB7C4 000A8704  80 63 01 20 */	lwz r3, 0x120(r3)
/* 800AB7C8 000A8708  54 63 04 5A */	rlwinm r3, r3, 0, 0x11, 0xd
/* 800AB7CC 000A870C  7C 60 03 78 */	or r0, r3, r0
/* 800AB7D0 000A8710  90 04 00 00 */	stw r0, 0(r4)
/* 800AB7D4 000A8714  48 00 00 38 */	b lbl_800AB80C
lbl_800AB7D8:
/* 800AB7D8 000A8718  80 CD 82 C8 */	lwz r6, gx@sda21(r13)
/* 800AB7DC 000A871C  54 80 A8 14 */	slwi r0, r4, 0x15
/* 800AB7E0 000A8720  54 A3 90 1A */	slwi r3, r5, 0x12
/* 800AB7E4 000A8724  80 86 01 20 */	lwz r4, 0x120(r6)
/* 800AB7E8 000A8728  54 84 03 94 */	rlwinm r4, r4, 0, 0xe, 0xa
/* 800AB7EC 000A872C  7C 83 1B 78 */	or r3, r4, r3
/* 800AB7F0 000A8730  90 66 01 20 */	stw r3, 0x120(r6)
/* 800AB7F4 000A8734  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB7F8 000A8738  38 83 01 20 */	addi r4, r3, 0x120
/* 800AB7FC 000A873C  80 63 01 20 */	lwz r3, 0x120(r3)
/* 800AB800 000A8740  54 63 02 CE */	rlwinm r3, r3, 0, 0xb, 7
/* 800AB804 000A8744  7C 60 03 78 */	or r0, r3, r0
/* 800AB808 000A8748  90 04 00 00 */	stw r0, 0(r4)
lbl_800AB80C:
/* 800AB80C 000A874C  38 00 00 61 */	li r0, 0x61
/* 800AB810 000A8750  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800AB814 000A8754  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AB818 000A8758  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800AB81C 000A875C  38 00 00 00 */	li r0, 0
/* 800AB820 000A8760  80 64 01 20 */	lwz r3, 0x120(r4)
/* 800AB824 000A8764  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800AB828 000A8768  80 64 04 F4 */	lwz r3, 0x4f4(r4)
/* 800AB82C 000A876C  60 63 00 03 */	ori r3, r3, 3
/* 800AB830 000A8770  90 64 04 F4 */	stw r3, 0x4f4(r4)
/* 800AB834 000A8774  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB838 000A8778  B0 03 00 02 */	sth r0, 2(r3)
/* 800AB83C 000A877C  4E 80 00 20 */	blr 

.global GXSetNumIndStages
GXSetNumIndStages:
/* 800AB840 000A8780  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800AB844 000A8784  54 60 82 1E */	rlwinm r0, r3, 0x10, 8, 0xf
/* 800AB848 000A8788  84 64 02 04 */	lwzu r3, 0x204(r4)
/* 800AB84C 000A878C  54 63 04 18 */	rlwinm r3, r3, 0, 0x10, 0xc
/* 800AB850 000A8790  7C 60 03 78 */	or r0, r3, r0
/* 800AB854 000A8794  90 04 00 00 */	stw r0, 0(r4)
/* 800AB858 000A8798  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB85C 000A879C  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 800AB860 000A87A0  60 00 00 06 */	ori r0, r0, 6
/* 800AB864 000A87A4  90 03 04 F4 */	stw r0, 0x4f4(r3)
/* 800AB868 000A87A8  4E 80 00 20 */	blr 

.global GXSetTevDirect
GXSetTevDirect:
/* 800AB86C 000A87AC  7C 08 02 A6 */	mflr r0
/* 800AB870 000A87B0  38 80 00 00 */	li r4, 0
/* 800AB874 000A87B4  90 01 00 04 */	stw r0, 4(r1)
/* 800AB878 000A87B8  38 00 00 00 */	li r0, 0
/* 800AB87C 000A87BC  38 A0 00 00 */	li r5, 0
/* 800AB880 000A87C0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800AB884 000A87C4  38 C0 00 00 */	li r6, 0
/* 800AB888 000A87C8  38 E0 00 00 */	li r7, 0
/* 800AB88C 000A87CC  90 01 00 08 */	stw r0, 8(r1)
/* 800AB890 000A87D0  39 00 00 00 */	li r8, 0
/* 800AB894 000A87D4  39 20 00 00 */	li r9, 0
/* 800AB898 000A87D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AB89C 000A87DC  39 40 00 00 */	li r10, 0
/* 800AB8A0 000A87E0  4B FF FA 99 */	bl GXSetTevIndirect
/* 800AB8A4 000A87E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800AB8A8 000A87E8  38 21 00 18 */	addi r1, r1, 0x18
/* 800AB8AC 000A87EC  7C 08 03 A6 */	mtlr r0
/* 800AB8B0 000A87F0  4E 80 00 20 */	blr 

.global GXSetTevIndWarp
GXSetTevIndWarp:
/* 800AB8B4 000A87F4  7C 08 02 A6 */	mflr r0
/* 800AB8B8 000A87F8  90 01 00 04 */	stw r0, 4(r1)
/* 800AB8BC 000A87FC  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 800AB8C0 000A8800  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AB8C4 000A8804  41 82 00 0C */	beq lbl_800AB8D0
/* 800AB8C8 000A8808  38 C0 00 06 */	li r6, 6
/* 800AB8CC 000A880C  48 00 00 08 */	b lbl_800AB8D4
lbl_800AB8D0:
/* 800AB8D0 000A8810  38 C0 00 00 */	li r6, 0
lbl_800AB8D4:
/* 800AB8D4 000A8814  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800AB8D8 000A8818  39 06 00 00 */	addi r8, r6, 0
/* 800AB8DC 000A881C  41 82 00 0C */	beq lbl_800AB8E8
/* 800AB8E0 000A8820  38 C0 00 07 */	li r6, 7
/* 800AB8E4 000A8824  48 00 00 08 */	b lbl_800AB8EC
lbl_800AB8E8:
/* 800AB8E8 000A8828  38 C0 00 00 */	li r6, 0
lbl_800AB8EC:
/* 800AB8EC 000A882C  38 00 00 00 */	li r0, 0
/* 800AB8F0 000A8830  90 01 00 08 */	stw r0, 8(r1)
/* 800AB8F4 000A8834  39 28 00 00 */	addi r9, r8, 0
/* 800AB8F8 000A8838  38 A0 00 00 */	li r5, 0
/* 800AB8FC 000A883C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AB900 000A8840  39 40 00 00 */	li r10, 0
/* 800AB904 000A8844  4B FF FA 35 */	bl GXSetTevIndirect
/* 800AB908 000A8848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AB90C 000A884C  38 21 00 20 */	addi r1, r1, 0x20
/* 800AB910 000A8850  7C 08 03 A6 */	mtlr r0
/* 800AB914 000A8854  4E 80 00 20 */	blr 

.global __GXUpdateBPMask
__GXUpdateBPMask:
/* 800AB918 000A8858  80 6D 82 C8 */	lwz r3, gx@sda21(r13)
/* 800AB91C 000A885C  38 C0 00 00 */	li r6, 0
/* 800AB920 000A8860  38 80 00 00 */	li r4, 0
/* 800AB924 000A8864  80 03 02 04 */	lwz r0, 0x204(r3)
/* 800AB928 000A8868  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 800AB92C 000A886C  28 00 00 00 */	cmplwi r0, 0
/* 800AB930 000A8870  7C 09 03 A6 */	mtctr r0
/* 800AB934 000A8874  40 81 00 6C */	ble lbl_800AB9A0
lbl_800AB938:
/* 800AB938 000A8878  2C 04 00 02 */	cmpwi r4, 2
/* 800AB93C 000A887C  41 82 00 3C */	beq lbl_800AB978
/* 800AB940 000A8880  40 80 00 14 */	bge lbl_800AB954
/* 800AB944 000A8884  2C 04 00 00 */	cmpwi r4, 0
/* 800AB948 000A8888  41 82 00 18 */	beq lbl_800AB960
/* 800AB94C 000A888C  40 80 00 20 */	bge lbl_800AB96C
/* 800AB950 000A8890  48 00 00 3C */	b lbl_800AB98C
lbl_800AB954:
/* 800AB954 000A8894  2C 04 00 04 */	cmpwi r4, 4
/* 800AB958 000A8898  40 80 00 34 */	bge lbl_800AB98C
/* 800AB95C 000A889C  48 00 00 28 */	b lbl_800AB984
lbl_800AB960:
/* 800AB960 000A88A0  80 03 01 20 */	lwz r0, 0x120(r3)
/* 800AB964 000A88A4  54 05 07 7E */	clrlwi r5, r0, 0x1d
/* 800AB968 000A88A8  48 00 00 24 */	b lbl_800AB98C
lbl_800AB96C:
/* 800AB96C 000A88AC  80 03 01 20 */	lwz r0, 0x120(r3)
/* 800AB970 000A88B0  54 05 D7 7E */	rlwinm r5, r0, 0x1a, 0x1d, 0x1f
/* 800AB974 000A88B4  48 00 00 18 */	b lbl_800AB98C
lbl_800AB978:
/* 800AB978 000A88B8  80 03 01 20 */	lwz r0, 0x120(r3)
/* 800AB97C 000A88BC  54 05 A7 7E */	rlwinm r5, r0, 0x14, 0x1d, 0x1f
/* 800AB980 000A88C0  48 00 00 0C */	b lbl_800AB98C
lbl_800AB984:
/* 800AB984 000A88C4  80 03 01 20 */	lwz r0, 0x120(r3)
/* 800AB988 000A88C8  54 05 77 7E */	rlwinm r5, r0, 0xe, 0x1d, 0x1f
lbl_800AB98C:
/* 800AB98C 000A88CC  38 00 00 01 */	li r0, 1
/* 800AB990 000A88D0  7C 00 28 30 */	slw r0, r0, r5
/* 800AB994 000A88D4  7C C6 03 78 */	or r6, r6, r0
/* 800AB998 000A88D8  38 84 00 01 */	addi r4, r4, 1
/* 800AB99C 000A88DC  42 00 FF 9C */	bdnz lbl_800AB938
lbl_800AB9A0:
/* 800AB9A0 000A88E0  38 83 01 24 */	addi r4, r3, 0x124
/* 800AB9A4 000A88E4  80 63 01 24 */	lwz r3, 0x124(r3)
/* 800AB9A8 000A88E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800AB9AC 000A88EC  7C 00 30 40 */	cmplw r0, r6
/* 800AB9B0 000A88F0  4D 82 00 20 */	beqlr 
/* 800AB9B4 000A88F4  54 60 00 2E */	rlwinm r0, r3, 0, 0, 0x17
/* 800AB9B8 000A88F8  7C 00 33 78 */	or r0, r0, r6
/* 800AB9BC 000A88FC  90 04 00 00 */	stw r0, 0(r4)
/* 800AB9C0 000A8900  38 00 00 61 */	li r0, 0x61
/* 800AB9C4 000A8904  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AB9C8 000A8908  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800AB9CC 000A890C  38 00 00 00 */	li r0, 0
/* 800AB9D0 000A8910  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800AB9D4 000A8914  80 64 01 24 */	lwz r3, 0x124(r4)
/* 800AB9D8 000A8918  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800AB9DC 000A891C  B0 04 00 02 */	sth r0, 2(r4)
/* 800AB9E0 000A8920  4E 80 00 20 */	blr 

.global __GXFlushTextureState
__GXFlushTextureState:
/* 800AB9E4 000A8924  38 00 00 61 */	li r0, 0x61
/* 800AB9E8 000A8928  80 8D 82 C8 */	lwz r4, gx@sda21(r13)
/* 800AB9EC 000A892C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AB9F0 000A8930  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800AB9F4 000A8934  38 00 00 00 */	li r0, 0
/* 800AB9F8 000A8938  80 64 01 24 */	lwz r3, 0x124(r4)
/* 800AB9FC 000A893C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800ABA00 000A8940  B0 04 00 02 */	sth r0, 2(r4)
/* 800ABA04 000A8944  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
$$245:
	.incbin "baserom.dol", 0x3E4850, 0x8
