.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global C_MTXPerspective
C_MTXPerspective:
/* 80094D24 00091C64  7C 08 02 A6 */	mflr r0
/* 80094D28 00091C68  90 01 00 04 */	stw r0, 4(r1)
/* 80094D2C 00091C6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80094D30 00091C70  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80094D34 00091C74  FF E0 20 90 */	fmr f31, f4
/* 80094D38 00091C78  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80094D3C 00091C7C  FF C0 18 90 */	fmr f30, f3
/* 80094D40 00091C80  DB A1 00 28 */	stfd f29, 0x28(r1)
/* 80094D44 00091C84  FF A0 10 90 */	fmr f29, f2
/* 80094D48 00091C88  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80094D4C 00091C8C  7C 7F 1B 78 */	mr r31, r3
/* 80094D50 00091C90  C0 A2 8A C0 */	lfs f5, "@103"@sda21(r2)
/* 80094D54 00091C94  C0 02 8A C4 */	lfs f0, "@104"@sda21(r2)
/* 80094D58 00091C98  EC 25 00 72 */	fmuls f1, f5, f1
/* 80094D5C 00091C9C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80094D60 00091CA0  4B FF 21 8D */	bl tanf
/* 80094D64 00091CA4  C0 62 8A B0 */	lfs f3, "@97"@sda21(r2)
/* 80094D68 00091CA8  EC 5F F0 28 */	fsubs f2, f31, f30
/* 80094D6C 00091CAC  EC 1F 07 B2 */	fmuls f0, f31, f30
/* 80094D70 00091CB0  EC 83 08 24 */	fdivs f4, f3, f1
/* 80094D74 00091CB4  EC 24 E8 24 */	fdivs f1, f4, f29
/* 80094D78 00091CB8  D0 3F 00 00 */	stfs f1, 0(r31)
/* 80094D7C 00091CBC  EC 63 10 24 */	fdivs f3, f3, f2
/* 80094D80 00091CC0  C0 42 8A B8 */	lfs f2, "@99"@sda21(r2)
/* 80094D84 00091CC4  D0 5F 00 04 */	stfs f2, 4(r31)
/* 80094D88 00091CC8  D0 5F 00 08 */	stfs f2, 8(r31)
/* 80094D8C 00091CCC  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 80094D90 00091CD0  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 80094D94 00091CD4  FC 20 F0 50 */	fneg f1, f30
/* 80094D98 00091CD8  FC 00 00 50 */	fneg f0, f0
/* 80094D9C 00091CDC  D0 9F 00 14 */	stfs f4, 0x14(r31)
/* 80094DA0 00091CE0  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80094DA4 00091CE4  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 80094DA8 00091CE8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80094DAC 00091CEC  D0 5F 00 1C */	stfs f2, 0x1c(r31)
/* 80094DB0 00091CF0  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 80094DB4 00091CF4  D0 5F 00 24 */	stfs f2, 0x24(r31)
/* 80094DB8 00091CF8  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 80094DBC 00091CFC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80094DC0 00091D00  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 80094DC4 00091D04  D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 80094DC8 00091D08  C0 02 8A BC */	lfs f0, "@100"@sda21(r2)
/* 80094DCC 00091D0C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80094DD0 00091D10  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 80094DD4 00091D14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80094DD8 00091D18  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 80094DDC 00091D1C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80094DE0 00091D20  CB A1 00 28 */	lfd f29, 0x28(r1)
/* 80094DE4 00091D24  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80094DE8 00091D28  38 21 00 40 */	addi r1, r1, 0x40
/* 80094DEC 00091D2C  7C 08 03 A6 */	mtlr r0
/* 80094DF0 00091D30  4E 80 00 20 */	blr 

.global C_MTXOrtho
C_MTXOrtho:
/* 80094DF4 00091D34  ED 04 18 28 */	fsubs f8, f4, f3
/* 80094DF8 00091D38  C1 22 8A B0 */	lfs f9, "@97"@sda21(r2)
/* 80094DFC 00091D3C  EC 01 10 28 */	fsubs f0, f1, f2
/* 80094E00 00091D40  C0 E2 8A B4 */	lfs f7, "@98"@sda21(r2)
/* 80094E04 00091D44  EC 64 18 2A */	fadds f3, f4, f3
/* 80094E08 00091D48  ED 49 40 24 */	fdivs f10, f9, f8
/* 80094E0C 00091D4C  ED 09 00 24 */	fdivs f8, f9, f0
/* 80094E10 00091D50  EC 87 02 B2 */	fmuls f4, f7, f10
/* 80094E14 00091D54  FC 60 18 50 */	fneg f3, f3
/* 80094E18 00091D58  EC 06 28 28 */	fsubs f0, f6, f5
/* 80094E1C 00091D5C  D0 83 00 00 */	stfs f4, 0(r3)
/* 80094E20 00091D60  EC 21 10 2A */	fadds f1, f1, f2
/* 80094E24 00091D64  EC 4A 00 F2 */	fmuls f2, f10, f3
/* 80094E28 00091D68  C0 62 8A B8 */	lfs f3, "@99"@sda21(r2)
/* 80094E2C 00091D6C  FC 20 08 50 */	fneg f1, f1
/* 80094E30 00091D70  D0 63 00 04 */	stfs f3, 4(r3)
/* 80094E34 00091D74  EC 89 00 24 */	fdivs f4, f9, f0
/* 80094E38 00091D78  D0 63 00 08 */	stfs f3, 8(r3)
/* 80094E3C 00091D7C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80094E40 00091D80  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 80094E44 00091D84  EC 47 02 32 */	fmuls f2, f7, f8
/* 80094E48 00091D88  FC 00 30 50 */	fneg f0, f6
/* 80094E4C 00091D8C  EC 28 00 72 */	fmuls f1, f8, f1
/* 80094E50 00091D90  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 80094E54 00091D94  EC 00 01 32 */	fmuls f0, f0, f4
/* 80094E58 00091D98  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 80094E5C 00091D9C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80094E60 00091DA0  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80094E64 00091DA4  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80094E68 00091DA8  C0 22 8A BC */	lfs f1, "@100"@sda21(r2)
/* 80094E6C 00091DAC  EC 21 01 32 */	fmuls f1, f1, f4
/* 80094E70 00091DB0  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80094E74 00091DB4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80094E78 00091DB8  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 80094E7C 00091DBC  D0 63 00 34 */	stfs f3, 0x34(r3)
/* 80094E80 00091DC0  D0 63 00 38 */	stfs f3, 0x38(r3)
/* 80094E84 00091DC4  D1 23 00 3C */	stfs f9, 0x3c(r3)
/* 80094E88 00091DC8  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@97":
	.incbin "baserom.dol", 0x3E47B0, 0x4
"@98":
	.incbin "baserom.dol", 0x3E47B4, 0x4
"@99":
  .4byte 0
"@100":
	.incbin "baserom.dol", 0x3E47BC, 0x4
"@103":
	.incbin "baserom.dol", 0x3E47C0, 0x4
"@104":
	.incbin "baserom.dol", 0x3E47C4, 0x4
