.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global bind__8TBaseNPCFv
bind__8TBaseNPCFv:
/* 8017BB40 00178A80  7C 08 02 A6 */	mflr r0
/* 8017BB44 00178A84  90 01 00 04 */	stw r0, 4(r1)
/* 8017BB48 00178A88  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8017BB4C 00178A8C  93 E1 00 44 */	stw r31, 0x44(r1)
/* 8017BB50 00178A90  7C 7F 1B 78 */	mr r31, r3
/* 8017BB54 00178A94  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8017BB58 00178A98  3B C1 00 3C */	addi r30, r1, 0x3c
/* 8017BB5C 00178A9C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8017BB60 00178AA0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8017BB64 00178AA4  90 81 00 34 */	stw r4, 0x34(r1)
/* 8017BB68 00178AA8  90 01 00 38 */	stw r0, 0x38(r1)
/* 8017BB6C 00178AAC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8017BB70 00178AB0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8017BB74 00178AB4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8017BB78 00178AB8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8017BB7C 00178ABC  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BB80 00178AC0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8017BB84 00178AC4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8017BB88 00178AC8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8017BB8C 00178ACC  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BB90 00178AD0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8017BB94 00178AD4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8017BB98 00178AD8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8017BB9C 00178ADC  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BBA0 00178AE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8017BBA4 00178AE4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8017BBA8 00178AE8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8017BBAC 00178AEC  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BBB0 00178AF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8017BBB4 00178AF4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8017BBB8 00178AF8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8017BBBC 00178AFC  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BBC0 00178B00  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8017BBC4 00178B04  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8017BBC8 00178B08  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8017BBCC 00178B0C  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BBD0 00178B10  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8017BBD4 00178B14  81 9F 00 00 */	lwz r12, 0(r31)
/* 8017BBD8 00178B18  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8017BBDC 00178B1C  7D 88 03 A6 */	mtlr r12
/* 8017BBE0 00178B20  4E 80 00 21 */	blrl 
/* 8017BBE4 00178B24  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8017BBE8 00178B28  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017BBEC 00178B2C  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 8017BBF0 00178B30  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8017BBF4 00178B34  C0 2D 84 78 */	lfs f1, mVelocityMinY__10TLiveActor@sda21(r13)
/* 8017BBF8 00178B38  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8017BBFC 00178B3C  40 80 00 08 */	bge lbl_8017BC04
/* 8017BC00 00178B40  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
lbl_8017BC04:
/* 8017BC04 00178B44  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8017BC08 00178B48  38 9F 00 C4 */	addi r4, r31, 0xc4
/* 8017BC0C 00178B4C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8017BC10 00178B50  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 8017BC14 00178B54  EC 41 00 2A */	fadds f2, f1, f0
/* 8017BC18 00178B58  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8017BC1C 00178B5C  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 8017BC20 00178B60  48 05 FB E1 */	bl checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
/* 8017BC24 00178B64  D0 3F 00 C8 */	stfs f1, 0xc8(r31)
/* 8017BC28 00178B68  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8017BC2C 00178B6C  C0 02 A9 D8 */	lfs f0, $$22319@sda21(r2)
/* 8017BC30 00178B70  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BC34 00178B74  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 8017BC38 00178B78  C0 22 A9 DC */	lfs f1, $$22320@sda21(r2)
/* 8017BC3C 00178B7C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8017BC40 00178B80  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8017BC44 00178B84  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BC48 00178B88  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8017BC4C 00178B8C  4C 40 13 82 */	cror 2, 0, 2
/* 8017BC50 00178B90  40 82 00 7C */	bne lbl_8017BCCC
/* 8017BC54 00178B94  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8017BC58 00178B98  28 03 00 00 */	cmplwi r3, 0
/* 8017BC5C 00178B9C  41 82 00 60 */	beq lbl_8017BCBC
/* 8017BC60 00178BA0  A0 03 00 04 */	lhz r0, 4(r3)
/* 8017BC64 00178BA4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8017BC68 00178BA8  41 82 00 0C */	beq lbl_8017BC74
/* 8017BC6C 00178BAC  38 00 00 01 */	li r0, 1
/* 8017BC70 00178BB0  48 00 00 08 */	b lbl_8017BC78
lbl_8017BC74:
/* 8017BC74 00178BB4  38 00 00 00 */	li r0, 0
lbl_8017BC78:
/* 8017BC78 00178BB8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8017BC7C 00178BBC  28 00 00 01 */	cmplwi r0, 1
/* 8017BC80 00178BC0  40 82 00 0C */	bne lbl_8017BC8C
/* 8017BC84 00178BC4  38 00 00 00 */	li r0, 0
/* 8017BC88 00178BC8  48 00 00 08 */	b lbl_8017BC90
lbl_8017BC8C:
/* 8017BC8C 00178BCC  38 00 00 01 */	li r0, 1
lbl_8017BC90:
/* 8017BC90 00178BD0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8017BC94 00178BD4  41 82 00 28 */	beq lbl_8017BCBC
/* 8017BC98 00178BD8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8017BC9C 00178BDC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8017BCA0 00178BE0  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8017BCA4 00178BE4  C0 02 A9 E0 */	lfs f0, $$22321@sda21(r2)
/* 8017BCA8 00178BE8  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 8017BCAC 00178BEC  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 8017BCB0 00178BF0  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 8017BCB4 00178BF4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8017BCB8 00178BF8  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_8017BCBC:
/* 8017BCBC 00178BFC  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 8017BCC0 00178C00  28 00 00 00 */	cmplwi r0, 0
/* 8017BCC4 00178C04  41 82 00 14 */	beq lbl_8017BCD8
/* 8017BCC8 00178C08  48 00 00 10 */	b lbl_8017BCD8
lbl_8017BCCC:
/* 8017BCCC 00178C0C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8017BCD0 00178C10  60 00 00 80 */	ori r0, r0, 0x80
/* 8017BCD4 00178C14  90 1F 00 F0 */	stw r0, 0xf0(r31)
lbl_8017BCD8:
/* 8017BCD8 00178C18  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8017BCDC 00178C1C  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 8017BCE0 00178C20  41 82 00 24 */	beq lbl_8017BD04
/* 8017BCE4 00178C24  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8017BCE8 00178C28  7F C5 F3 78 */	mr r5, r30
/* 8017BCEC 00178C2C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8017BCF0 00178C30  38 81 00 34 */	addi r4, r1, 0x34
/* 8017BCF4 00178C34  80 6D 9A B0 */	lwz r3, gpMap@sda21(r13)
/* 8017BCF8 00178C38  EC 21 00 2A */	fadds f1, f1, f0
/* 8017BCFC 00178C3C  C0 42 A9 E4 */	lfs f2, $$22322@sda21(r2)
/* 8017BD00 00178C40  48 05 FC 1D */	bl isTouchedOneWallAndMoveXZ__4TMapCFPffPff
lbl_8017BD04:
/* 8017BD04 00178C44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8017BD08 00178C48  38 61 00 10 */	addi r3, r1, 0x10
/* 8017BD0C 00178C4C  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8017BD10 00178C50  38 9F 00 10 */	addi r4, r31, 0x10
/* 8017BD14 00178C54  90 01 00 10 */	stw r0, 0x10(r1)
/* 8017BD18 00178C58  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8017BD1C 00178C5C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8017BD20 00178C60  90 01 00 18 */	stw r0, 0x18(r1)
/* 8017BD24 00178C64  4B F4 63 65 */	bl sub__Q29JGeometry8TVec3$$0f$$1FRCQ29JGeometry8TVec3$$0f$$1
/* 8017BD28 00178C68  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8017BD2C 00178C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8017BD30 00178C70  90 7F 00 94 */	stw r3, 0x94(r31)
/* 8017BD34 00178C74  90 1F 00 98 */	stw r0, 0x98(r31)
/* 8017BD38 00178C78  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8017BD3C 00178C7C  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 8017BD40 00178C80  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8017BD44 00178C84  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 8017BD48 00178C88  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 8017BD4C 00178C8C  38 21 00 48 */	addi r1, r1, 0x48
/* 8017BD50 00178C90  7C 08 03 A6 */	mtlr r0
/* 8017BD54 00178C94  4E 80 00 20 */	blr 

.global setVariableDamageRadius___8TBaseNPCFv
setVariableDamageRadius___8TBaseNPCFv:
/* 8017BD58 00178C98  7C 08 02 A6 */	mflr r0
/* 8017BD5C 00178C9C  90 01 00 04 */	stw r0, 4(r1)
/* 8017BD60 00178CA0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8017BD64 00178CA4  DB E1 00 68 */	stfd f31, 0x68(r1)
/* 8017BD68 00178CA8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8017BD6C 00178CAC  DB A1 00 58 */	stfd f29, 0x58(r1)
/* 8017BD70 00178CB0  93 E1 00 54 */	stw r31, 0x54(r1)
/* 8017BD74 00178CB4  7C 7F 1B 78 */	mr r31, r3
/* 8017BD78 00178CB8  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 8017BD7C 00178CBC  3C 63 FC 00 */	addis r3, r3, 0xfc00
/* 8017BD80 00178CC0  38 63 FF FF */	addi r3, r3, -1
/* 8017BD84 00178CC4  4B FF 96 A1 */	bl SMSGetNpcInitData__FUl
/* 8017BD88 00178CC8  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 8017BD8C 00178CCC  7F E3 FB 78 */	mr r3, r31
/* 8017BD90 00178CD0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8017BD94 00178CD4  EF C0 00 72 */	fmuls f30, f0, f1
/* 8017BD98 00178CD8  FF A0 F0 90 */	fmr f29, f30
/* 8017BD9C 00178CDC  4B FF 05 59 */	bl isBeTrampledNpc__8TBaseNPCCFv
/* 8017BDA0 00178CE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017BDA4 00178CE4  41 82 00 64 */	beq lbl_8017BE08
/* 8017BDA8 00178CE8  4B FD 6D A1 */	bl SMS_IsMarioTouchGround4cm__Fv
/* 8017BDAC 00178CEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017BDB0 00178CF0  40 82 00 58 */	bne lbl_8017BE08
/* 8017BDB4 00178CF4  80 6D 98 DC */	lwz r3, gpMarioPos@sda21(r13)
/* 8017BDB8 00178CF8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8017BDBC 00178CFC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8017BDC0 00178D00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017BDC4 00178D04  40 81 00 44 */	ble lbl_8017BE08
/* 8017BDC8 00178D08  C0 02 A9 E8 */	lfs f0, $$22347@sda21(r2)
/* 8017BDCC 00178D0C  C0 83 00 00 */	lfs f4, 0(r3)
/* 8017BDD0 00178D10  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8017BDD4 00178D14  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8017BDD8 00178D18  C0 43 00 08 */	lfs f2, 8(r3)
/* 8017BDDC 00178D1C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8017BDE0 00178D20  EF E4 18 28 */	fsubs f31, f4, f3
/* 8017BDE4 00178D24  EF C2 00 28 */	fsubs f30, f2, f0
/* 8017BDE8 00178D28  4B FF 0E 5D */	bl CLBSquared$$0f$$1__Ff
/* 8017BDEC 00178D2C  C0 02 A9 E0 */	lfs f0, $$22321@sda21(r2)
/* 8017BDF0 00178D30  EC 1F 07 FA */	fmadds f0, f31, f31, f0
/* 8017BDF4 00178D34  EC 1E 07 BA */	fmadds f0, f30, f30, f0
/* 8017BDF8 00178D38  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8017BDFC 00178D3C  40 80 00 0C */	bge lbl_8017BE08
/* 8017BE00 00178D40  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 8017BE04 00178D44  C3 A3 00 68 */	lfs f29, 0x68(r3)
lbl_8017BE08:
/* 8017BE08 00178D48  D3 BF 00 58 */	stfs f29, 0x58(r31)
/* 8017BE0C 00178D4C  7F E3 FB 78 */	mr r3, r31
/* 8017BE10 00178D50  4B FA 1A D5 */	bl calcEntryRadius__9THitActorFv
/* 8017BE14 00178D54  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8017BE18 00178D58  CB E1 00 68 */	lfd f31, 0x68(r1)
/* 8017BE1C 00178D5C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8017BE20 00178D60  7C 08 03 A6 */	mtlr r0
/* 8017BE24 00178D64  CB A1 00 58 */	lfd f29, 0x58(r1)
/* 8017BE28 00178D68  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 8017BE2C 00178D6C  38 21 00 70 */	addi r1, r1, 0x70
/* 8017BE30 00178D70  4E 80 00 20 */	blr 

.global execNpcObjCollision___8TBaseNPCFv
execNpcObjCollision___8TBaseNPCFv:
/* 8017BE34 00178D74  7C 08 02 A6 */	mflr r0
/* 8017BE38 00178D78  90 01 00 04 */	stw r0, 4(r1)
/* 8017BE3C 00178D7C  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 8017BE40 00178D80  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8017BE44 00178D84  DB C1 00 88 */	stfd f30, 0x88(r1)
/* 8017BE48 00178D88  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8017BE4C 00178D8C  DB 81 00 78 */	stfd f28, 0x78(r1)
/* 8017BE50 00178D90  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8017BE54 00178D94  DB 41 00 68 */	stfd f26, 0x68(r1)
/* 8017BE58 00178D98  93 E1 00 64 */	stw r31, 0x64(r1)
/* 8017BE5C 00178D9C  3B E0 00 00 */	li r31, 0
/* 8017BE60 00178DA0  93 C1 00 60 */	stw r30, 0x60(r1)
/* 8017BE64 00178DA4  7C 7E 1B 78 */	mr r30, r3
/* 8017BE68 00178DA8  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8017BE6C 00178DAC  3B A0 00 00 */	li r29, 0
/* 8017BE70 00178DB0  93 81 00 58 */	stw r28, 0x58(r1)
/* 8017BE74 00178DB4  C3 A2 A9 E0 */	lfs f29, $$22321@sda21(r2)
/* 8017BE78 00178DB8  C3 C2 A9 F0 */	lfs f30, $$22429@sda21(r2)
/* 8017BE7C 00178DBC  C3 E2 A9 EC */	lfs f31, $$22428@sda21(r2)
/* 8017BE80 00178DC0  C3 62 A9 D8 */	lfs f27, $$22319@sda21(r2)
/* 8017BE84 00178DC4  C3 82 A9 F4 */	lfs f28, $$22430@sda21(r2)
/* 8017BE88 00178DC8  48 00 02 94 */	b lbl_8017C11C
lbl_8017BE8C:
/* 8017BE8C 00178DCC  7F C3 F3 78 */	mr r3, r30
/* 8017BE90 00178DD0  4B FF D5 6D */	bl isNerveWalk__8TBaseNPCCFv
/* 8017BE94 00178DD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017BE98 00178DD8  41 82 00 0C */	beq lbl_8017BEA4
/* 8017BE9C 00178DDC  3B 80 00 00 */	li r28, 0
/* 8017BEA0 00178DE0  48 00 00 3C */	b lbl_8017BEDC
lbl_8017BEA4:
/* 8017BEA4 00178DE4  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8017BEA8 00178DE8  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8017BEAC 00178DEC  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8017BEB0 00178DF0  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 8017BEB4 00178DF4  41 82 00 0C */	beq lbl_8017BEC0
/* 8017BEB8 00178DF8  38 00 00 01 */	li r0, 1
/* 8017BEBC 00178DFC  48 00 00 08 */	b lbl_8017BEC4
lbl_8017BEC0:
/* 8017BEC0 00178E00  38 00 00 00 */	li r0, 0
lbl_8017BEC4:
/* 8017BEC4 00178E04  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8017BEC8 00178E08  41 82 02 4C */	beq lbl_8017C114
/* 8017BECC 00178E0C  4B FF D5 31 */	bl isNerveWalk__8TBaseNPCCFv
/* 8017BED0 00178E10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017BED4 00178E14  41 82 02 40 */	beq lbl_8017C114
/* 8017BED8 00178E18  3B 80 00 01 */	li r28, 1
lbl_8017BEDC:
/* 8017BEDC 00178E1C  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8017BEE0 00178E20  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8017BEE4 00178E24  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8017BEE8 00178E28  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8017BEEC 00178E2C  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 8017BEF0 00178E30  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8017BEF4 00178E34  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8017BEF8 00178E38  EC 01 00 28 */	fsubs f0, f1, f0
/* 8017BEFC 00178E3C  EC 23 10 28 */	fsubs f1, f3, f2
/* 8017BF00 00178E40  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8017BF04 00178E44  D3 A1 00 50 */	stfs f29, 0x50(r1)
/* 8017BF08 00178E48  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8017BF0C 00178E4C  41 82 00 28 */	beq lbl_8017BF34
/* 8017BF10 00178E50  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8017BF14 00178E54  FC 00 00 50 */	fneg f0, f0
/* 8017BF18 00178E58  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8017BF1C 00178E5C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8017BF20 00178E60  FC 00 00 50 */	fneg f0, f0
/* 8017BF24 00178E64  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8017BF28 00178E68  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8017BF2C 00178E6C  FC 00 00 50 */	fneg f0, f0
/* 8017BF30 00178E70  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_8017BF34:
/* 8017BF34 00178E74  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8017BF38 00178E78  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8017BF3C 00178E7C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8017BF40 00178E80  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8017BF44 00178E84  EC 00 00 32 */	fmuls f0, f0, f0
/* 8017BF48 00178E88  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8017BF4C 00178E8C  EC 01 00 2A */	fadds f0, f1, f0
/* 8017BF50 00178E90  EC 02 00 2A */	fadds f0, f2, f0
/* 8017BF54 00178E94  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8017BF58 00178E98  4C 40 13 82 */	cror 2, 0, 2
/* 8017BF5C 00178E9C  40 82 00 58 */	bne lbl_8017BFB4
/* 8017BF60 00178EA0  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8017BF64 00178EA4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8017BF68 00178EA8  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8017BF6C 00178EAC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8017BF70 00178EB0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8017BF74 00178EB4  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8017BF78 00178EB8  4C 41 13 82 */	cror 2, 1, 2
/* 8017BF7C 00178EBC  40 82 00 0C */	bne lbl_8017BF88
/* 8017BF80 00178EC0  FC 00 08 90 */	fmr f0, f1
/* 8017BF84 00178EC4  48 00 00 08 */	b lbl_8017BF8C
lbl_8017BF88:
/* 8017BF88 00178EC8  FC 00 08 50 */	fneg f0, f1
lbl_8017BF8C:
/* 8017BF8C 00178ECC  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8017BF90 00178ED0  40 80 00 14 */	bge lbl_8017BFA4
/* 8017BF94 00178ED4  D3 61 00 4C */	stfs f27, 0x4c(r1)
/* 8017BF98 00178ED8  D3 81 00 50 */	stfs f28, 0x50(r1)
/* 8017BF9C 00178EDC  D3 A1 00 54 */	stfs f29, 0x54(r1)
/* 8017BFA0 00178EE0  48 00 01 00 */	b lbl_8017C0A0
lbl_8017BFA4:
/* 8017BFA4 00178EE4  D3 A1 00 4C */	stfs f29, 0x4c(r1)
/* 8017BFA8 00178EE8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8017BFAC 00178EEC  D3 A1 00 54 */	stfs f29, 0x54(r1)
/* 8017BFB0 00178EF0  48 00 00 F0 */	b lbl_8017C0A0
lbl_8017BFB4:
/* 8017BFB4 00178EF4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017BFB8 00178EF8  4B F4 98 19 */	bl MsVECMag2__FP3Vec
/* 8017BFBC 00178EFC  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8017BFC0 00178F00  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8017BFC4 00178F04  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8017BFC8 00178F08  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8017BFCC 00178F0C  EC 02 00 2A */	fadds f0, f2, f0
/* 8017BFD0 00178F10  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017BFD4 00178F14  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8017BFD8 00178F18  4C 41 13 82 */	cror 2, 1, 2
/* 8017BFDC 00178F1C  40 82 00 28 */	bne lbl_8017C004
/* 8017BFE0 00178F20  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017BFE4 00178F24  4B F4 97 ED */	bl MsVECMag2__FP3Vec
/* 8017BFE8 00178F28  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8017BFEC 00178F2C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8017BFF0 00178F30  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8017BFF4 00178F34  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8017BFF8 00178F38  EC 02 00 2A */	fadds f0, f2, f0
/* 8017BFFC 00178F3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017C000 00178F40  48 00 00 28 */	b lbl_8017C028
lbl_8017C004:
/* 8017C004 00178F44  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017C008 00178F48  4B F4 97 C9 */	bl MsVECMag2__FP3Vec
/* 8017C00C 00178F4C  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8017C010 00178F50  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8017C014 00178F54  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8017C018 00178F58  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8017C01C 00178F5C  EC 02 00 2A */	fadds f0, f2, f0
/* 8017C020 00178F60  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017C024 00178F64  FC 00 00 50 */	fneg f0, f0
lbl_8017C028:
/* 8017C028 00178F68  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8017C02C 00178F6C  FF 40 00 90 */	fmr f26, f0
/* 8017C030 00178F70  40 80 00 08 */	bge lbl_8017C038
/* 8017C034 00178F74  FF 40 F0 90 */	fmr f26, f30
lbl_8017C038:
/* 8017C038 00178F78  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8017C03C 00178F7C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8017C040 00178F80  EC 21 00 72 */	fmuls f1, f1, f1
/* 8017C044 00178F84  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8017C048 00178F88  EC 00 00 32 */	fmuls f0, f0, f0
/* 8017C04C 00178F8C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8017C050 00178F90  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C054 00178F94  EC 22 00 2A */	fadds f1, f2, f0
/* 8017C058 00178F98  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8017C05C 00178F9C  4C 40 13 82 */	cror 2, 0, 2
/* 8017C060 00178FA0  40 82 00 14 */	bne lbl_8017C074
/* 8017C064 00178FA4  D3 A1 00 54 */	stfs f29, 0x54(r1)
/* 8017C068 00178FA8  D3 A1 00 50 */	stfs f29, 0x50(r1)
/* 8017C06C 00178FAC  D3 A1 00 4C */	stfs f29, 0x4c(r1)
/* 8017C070 00178FB0  48 00 00 30 */	b lbl_8017C0A0
lbl_8017C074:
/* 8017C074 00178FB4  4B EF 0C FD */	bl inv_sqrt__Q29JGeometry8TUtil$$0f$$1Ff
/* 8017C078 00178FB8  EC 3A 00 72 */	fmuls f1, f26, f1
/* 8017C07C 00178FBC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8017C080 00178FC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017C084 00178FC4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8017C088 00178FC8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8017C08C 00178FCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017C090 00178FD0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8017C094 00178FD4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8017C098 00178FD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8017C09C 00178FDC  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_8017C0A0:
/* 8017C0A0 00178FE0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8017C0A4 00178FE4  41 82 00 40 */	beq lbl_8017C0E4
/* 8017C0A8 00178FE8  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8017C0AC 00178FEC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8017C0B0 00178FF0  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8017C0B4 00178FF4  C4 23 00 10 */	lfsu f1, 0x10(r3)
/* 8017C0B8 00178FF8  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C0BC 00178FFC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8017C0C0 00179000  C0 23 00 04 */	lfs f1, 4(r3)
/* 8017C0C4 00179004  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8017C0C8 00179008  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C0CC 0017900C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8017C0D0 00179010  C0 23 00 08 */	lfs f1, 8(r3)
/* 8017C0D4 00179014  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8017C0D8 00179018  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C0DC 0017901C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8017C0E0 00179020  48 00 00 34 */	b lbl_8017C114
lbl_8017C0E4:
/* 8017C0E4 00179024  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8017C0E8 00179028  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8017C0EC 0017902C  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C0F0 00179030  D0 1E 00 94 */	stfs f0, 0x94(r30)
/* 8017C0F4 00179034  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 8017C0F8 00179038  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8017C0FC 0017903C  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C100 00179040  D0 1E 00 98 */	stfs f0, 0x98(r30)
/* 8017C104 00179044  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8017C108 00179048  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8017C10C 0017904C  EC 01 00 2A */	fadds f0, f1, f0
/* 8017C110 00179050  D0 1E 00 9C */	stfs f0, 0x9c(r30)
lbl_8017C114:
/* 8017C114 00179054  3B FF 00 01 */	addi r31, r31, 1
/* 8017C118 00179058  3B BD 00 04 */	addi r29, r29, 4
lbl_8017C11C:
/* 8017C11C 0017905C  A0 1E 00 48 */	lhz r0, 0x48(r30)
/* 8017C120 00179060  7C 1F 00 00 */	cmpw r31, r0
/* 8017C124 00179064  41 80 FD 68 */	blt lbl_8017BE8C
/* 8017C128 00179068  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8017C12C 0017906C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8017C130 00179070  CB C1 00 88 */	lfd f30, 0x88(r1)
/* 8017C134 00179074  7C 08 03 A6 */	mtlr r0
/* 8017C138 00179078  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8017C13C 0017907C  CB 81 00 78 */	lfd f28, 0x78(r1)
/* 8017C140 00179080  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8017C144 00179084  CB 41 00 68 */	lfd f26, 0x68(r1)
/* 8017C148 00179088  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 8017C14C 0017908C  83 C1 00 60 */	lwz r30, 0x60(r1)
/* 8017C150 00179090  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 8017C154 00179094  83 81 00 58 */	lwz r28, 0x58(r1)
/* 8017C158 00179098  38 21 00 98 */	addi r1, r1, 0x98
/* 8017C15C 0017909C  4E 80 00 20 */	blr 

.global initNpcObjCollision___8TBaseNPCFPC12TNpcInitInfo
initNpcObjCollision___8TBaseNPCFPC12TNpcInitInfo:
/* 8017C160 001790A0  7C 08 02 A6 */	mflr r0
/* 8017C164 001790A4  3C C0 04 00 */	lis r6, 0x400
/* 8017C168 001790A8  90 01 00 04 */	stw r0, 4(r1)
/* 8017C16C 001790AC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8017C170 001790B0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8017C174 001790B4  3B E0 00 02 */	li r31, 2
/* 8017C178 001790B8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8017C17C 001790BC  3B C3 00 00 */	addi r30, r3, 0
/* 8017C180 001790C0  3C 60 04 00 */	lis r3, 0x0400001C@ha
/* 8017C184 001790C4  80 BE 00 4C */	lwz r5, 0x4c(r30)
/* 8017C188 001790C8  38 03 00 1C */	addi r0, r3, 0x0400001C@l
/* 8017C18C 001790CC  7C 05 00 00 */	cmpw r5, r0
/* 8017C190 001790D0  41 82 00 3C */	beq lbl_8017C1CC
/* 8017C194 001790D4  40 80 00 24 */	bge lbl_8017C1B8
/* 8017C198 001790D8  38 03 00 06 */	addi r0, r3, 6
/* 8017C19C 001790DC  7C 05 00 00 */	cmpw r5, r0
/* 8017C1A0 001790E0  41 82 00 24 */	beq lbl_8017C1C4
/* 8017C1A4 001790E4  41 80 00 28 */	blt lbl_8017C1CC
/* 8017C1A8 001790E8  38 03 00 1A */	addi r0, r3, 0x1a
/* 8017C1AC 001790EC  7C 05 00 00 */	cmpw r5, r0
/* 8017C1B0 001790F0  40 80 00 14 */	bge lbl_8017C1C4
/* 8017C1B4 001790F4  48 00 00 18 */	b lbl_8017C1CC
lbl_8017C1B8:
/* 8017C1B8 001790F8  38 03 00 1E */	addi r0, r3, 0x1e
/* 8017C1BC 001790FC  7C 05 00 00 */	cmpw r5, r0
/* 8017C1C0 00179100  40 80 00 0C */	bge lbl_8017C1CC
lbl_8017C1C4:
/* 8017C1C4 00179104  3B E0 00 00 */	li r31, 0
/* 8017C1C8 00179108  38 C0 00 00 */	li r6, 0
lbl_8017C1CC:
/* 8017C1CC 0017910C  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8017C1D0 00179110  7F C3 F3 78 */	mr r3, r30
/* 8017C1D4 00179114  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 8017C1D8 00179118  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 8017C1DC 0017911C  EC 41 00 F2 */	fmuls f2, f1, f3
/* 8017C1E0 00179120  C0 BE 00 24 */	lfs f5, 0x24(r30)
/* 8017C1E4 00179124  C0 24 00 44 */	lfs f1, 0x44(r4)
/* 8017C1E8 00179128  EC 80 00 F2 */	fmuls f4, f0, f3
/* 8017C1EC 0017912C  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 8017C1F0 00179130  38 85 00 00 */	addi r4, r5, 0
/* 8017C1F4 00179134  EC 21 01 72 */	fmuls f1, f1, f5
/* 8017C1F8 00179138  EC 60 01 72 */	fmuls f3, f0, f5
/* 8017C1FC 0017913C  38 BF 00 00 */	addi r5, r31, 0
/* 8017C200 00179140  4B FA 15 F9 */	bl initHitActor__9THitActorFUlUsiffff
/* 8017C204 00179144  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8017C208 00179148  57 E0 04 3F */	clrlwi. r0, r31, 0x10
/* 8017C20C 0017914C  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 8017C210 00179150  90 1E 00 64 */	stw r0, 0x64(r30)
/* 8017C214 00179154  40 82 00 10 */	bne lbl_8017C224
/* 8017C218 00179158  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8017C21C 0017915C  60 00 00 02 */	ori r0, r0, 2
/* 8017C220 00179160  90 1E 00 64 */	stw r0, 0x64(r30)
lbl_8017C224:
/* 8017C224 00179164  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8017C228 00179168  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8017C22C 0017916C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8017C230 00179170  7C 08 03 A6 */	mtlr r0
/* 8017C234 00179174  38 21 00 18 */	addi r1, r1, 0x18
/* 8017C238 00179178  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
$$22319:
	.incbin "baserom.dol", 0x3E66D8, 0x4
$$22320:
	.incbin "baserom.dol", 0x3E66DC, 0x4
$$22321:
  .4byte 0
$$22322:
	.incbin "baserom.dol", 0x3E66E4, 0x4
$$22347:
	.incbin "baserom.dol", 0x3E66E8, 0x4
$$22428:
	.incbin "baserom.dol", 0x3E66EC, 0x4
$$22429:
	.incbin "baserom.dol", 0x3E66F0, 0x4
$$22430:
	.incbin "baserom.dol", 0x3E66F4, 0x4
