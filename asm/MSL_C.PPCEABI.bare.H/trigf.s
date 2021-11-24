.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global tanf
tanf:
/* 80086EEC 00083E2C  7C 08 02 A6 */	mflr r0
/* 80086EF0 00083E30  90 01 00 04 */	stw r0, 4(r1)
/* 80086EF4 00083E34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80086EF8 00083E38  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80086EFC 00083E3C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80086F00 00083E40  FF C0 08 90 */	fmr f30, f1
/* 80086F04 00083E44  48 00 00 2D */	bl cos__Ff
/* 80086F08 00083E48  FF E0 08 90 */	fmr f31, f1
/* 80086F0C 00083E4C  FC 20 F0 90 */	fmr f1, f30
/* 80086F10 00083E50  48 00 00 41 */	bl sin__Ff
/* 80086F14 00083E54  EC 21 F8 24 */	fdivs f1, f1, f31
/* 80086F18 00083E58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80086F1C 00083E5C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80086F20 00083E60  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80086F24 00083E64  7C 08 03 A6 */	mtlr r0
/* 80086F28 00083E68  38 21 00 20 */	addi r1, r1, 0x20
/* 80086F2C 00083E6C  4E 80 00 20 */	blr 

.global cos__Ff
cos__Ff:
/* 80086F30 00083E70  7C 08 02 A6 */	mflr r0
/* 80086F34 00083E74  90 01 00 04 */	stw r0, 4(r1)
/* 80086F38 00083E78  94 21 FF F8 */	stwu r1, -8(r1)
/* 80086F3C 00083E7C  48 00 00 35 */	bl cosf
/* 80086F40 00083E80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80086F44 00083E84  38 21 00 08 */	addi r1, r1, 8
/* 80086F48 00083E88  7C 08 03 A6 */	mtlr r0
/* 80086F4C 00083E8C  4E 80 00 20 */	blr 

.global sin__Ff
sin__Ff:
/* 80086F50 00083E90  7C 08 02 A6 */	mflr r0
/* 80086F54 00083E94  90 01 00 04 */	stw r0, 4(r1)
/* 80086F58 00083E98  94 21 FF F8 */	stwu r1, -8(r1)
/* 80086F5C 00083E9C  48 00 01 A9 */	bl sinf
/* 80086F60 00083EA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80086F64 00083EA4  38 21 00 08 */	addi r1, r1, 8
/* 80086F68 00083EA8  7C 08 03 A6 */	mtlr r0
/* 80086F6C 00083EAC  4E 80 00 20 */	blr 

.global cosf
cosf:
/* 80086F70 00083EB0  7C 08 02 A6 */	mflr r0
/* 80086F74 00083EB4  3C 60 80 3B */	lis r3, __four_over_pi_m1@ha
/* 80086F78 00083EB8  90 01 00 04 */	stw r0, 4(r1)
/* 80086F7C 00083EBC  38 63 EF 48 */	addi r3, r3, __four_over_pi_m1@l
/* 80086F80 00083EC0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80086F84 00083EC4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80086F88 00083EC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80086F8C 00083ECC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80086F90 00083ED0  C0 02 8A 30 */	lfs f0, $$2106@sda21(r2)
/* 80086F94 00083ED4  80 01 00 08 */	lwz r0, 8(r1)
/* 80086F98 00083ED8  C0 C1 00 08 */	lfs f6, 8(r1)
/* 80086F9C 00083EDC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80086FA0 00083EE0  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80086FA4 00083EE4  41 82 00 1C */	beq lbl_80086FC0
/* 80086FA8 00083EE8  C0 02 8A 34 */	lfs f0, $$2107@sda21(r2)
/* 80086FAC 00083EEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80086FB0 00083EF0  FC 00 00 1E */	fctiwz f0, f0
/* 80086FB4 00083EF4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80086FB8 00083EF8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80086FBC 00083EFC  48 00 00 18 */	b lbl_80086FD4
lbl_80086FC0:
/* 80086FC0 00083F00  C0 02 8A 34 */	lfs f0, $$2107@sda21(r2)
/* 80086FC4 00083F04  EC 00 08 2A */	fadds f0, f0, f1
/* 80086FC8 00083F08  FC 00 00 1E */	fctiwz f0, f0
/* 80086FCC 00083F0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80086FD0 00083F10  80 81 00 14 */	lwz r4, 0x14(r1)
lbl_80086FD4:
/* 80086FD4 00083F14  54 80 08 3C */	slwi r0, r4, 1
/* 80086FD8 00083F18  C8 22 8A 40 */	lfd f1, $$2110@sda21(r2)
/* 80086FDC 00083F1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80086FE0 00083F20  C0 43 00 00 */	lfs f2, 0(r3)
/* 80086FE4 00083F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80086FE8 00083F28  3C 00 43 30 */	lis r0, 0x4330
/* 80086FEC 00083F2C  C0 63 00 04 */	lfs f3, 4(r3)
/* 80086FF0 00083F30  54 9F 07 BE */	clrlwi r31, r4, 0x1e
/* 80086FF4 00083F34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80086FF8 00083F38  C0 83 00 08 */	lfs f4, 8(r3)
/* 80086FFC 00083F3C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80087000 00083F40  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 80087004 00083F44  EC 00 08 28 */	fsubs f0, f0, f1
/* 80087008 00083F48  EC 06 00 28 */	fsubs f0, f6, f0
/* 8008700C 00083F4C  EC 02 01 BA */	fmadds f0, f2, f6, f0
/* 80087010 00083F50  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 80087014 00083F54  EC 04 01 BA */	fmadds f0, f4, f6, f0
/* 80087018 00083F58  EF E5 01 BA */	fmadds f31, f5, f6, f0
/* 8008701C 00083F5C  FC 20 F8 90 */	fmr f1, f31
/* 80087020 00083F60  4B FF FB 25 */	bl fabsf__Ff
/* 80087024 00083F64  C0 02 8A 38 */	lfs f0, $$2108@sda21(r2)
/* 80087028 00083F68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8008702C 00083F6C  40 80 00 24 */	bge lbl_80087050
/* 80087030 00083F70  3C 60 80 37 */	lis r3, __sincos_on_quadrant@ha
/* 80087034 00083F74  57 E4 18 38 */	slwi r4, r31, 3
/* 80087038 00083F78  38 03 1F 5C */	addi r0, r3, __sincos_on_quadrant@l
/* 8008703C 00083F7C  7C 60 22 14 */	add r3, r0, r4
/* 80087040 00083F80  C0 23 00 00 */	lfs f1, 0(r3)
/* 80087044 00083F84  C0 03 00 04 */	lfs f0, 4(r3)
/* 80087048 00083F88  EC 3F 00 7C */	fnmsubs f1, f31, f1, f0
/* 8008704C 00083F8C  48 00 00 A0 */	b lbl_800870EC
lbl_80087050:
/* 80087050 00083F90  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 80087054 00083F94  EC 9F 07 F2 */	fmuls f4, f31, f31
/* 80087058 00083F98  41 82 00 50 */	beq lbl_800870A8
/* 8008705C 00083F9C  3C 60 80 37 */	lis r3, __sincos_poly@ha
/* 80087060 00083FA0  38 83 1F 7C */	addi r4, r3, __sincos_poly@l
/* 80087064 00083FA4  C0 44 00 04 */	lfs f2, 4(r4)
/* 80087068 00083FA8  3C 60 80 37 */	lis r3, __sincos_on_quadrant@ha
/* 8008706C 00083FAC  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80087070 00083FB0  38 03 1F 5C */	addi r0, r3, __sincos_on_quadrant@l
/* 80087074 00083FB4  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80087078 00083FB8  EC 62 09 3A */	fmadds f3, f2, f4, f1
/* 8008707C 00083FBC  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80087080 00083FC0  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 80087084 00083FC4  57 E4 18 38 */	slwi r4, r31, 3
/* 80087088 00083FC8  7C 60 22 14 */	add r3, r0, r4
/* 8008708C 00083FCC  EC 64 00 FA */	fmadds f3, f4, f3, f0
/* 80087090 00083FD0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80087094 00083FD4  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 80087098 00083FD8  EC 24 08 BE */	fnmadds f1, f4, f2, f1
/* 8008709C 00083FDC  EC 3F 00 72 */	fmuls f1, f31, f1
/* 800870A0 00083FE0  EC 21 00 32 */	fmuls f1, f1, f0
/* 800870A4 00083FE4  48 00 00 48 */	b lbl_800870EC
lbl_800870A8:
/* 800870A8 00083FE8  3C 60 80 37 */	lis r3, __sincos_poly@ha
/* 800870AC 00083FEC  38 83 1F 7C */	addi r4, r3, __sincos_poly@l
/* 800870B0 00083FF0  C0 44 00 00 */	lfs f2, 0(r4)
/* 800870B4 00083FF4  3C 60 80 37 */	lis r3, __sincos_on_quadrant@ha
/* 800870B8 00083FF8  C0 24 00 08 */	lfs f1, 8(r4)
/* 800870BC 00083FFC  38 63 1F 5C */	addi r3, r3, __sincos_on_quadrant@l
/* 800870C0 00084000  57 E0 18 38 */	slwi r0, r31, 3
/* 800870C4 00084004  EC 62 09 3A */	fmadds f3, f2, f4, f1
/* 800870C8 00084008  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 800870CC 0008400C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 800870D0 00084010  7C 63 02 14 */	add r3, r3, r0
/* 800870D4 00084014  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 800870D8 00084018  EC 64 00 FA */	fmadds f3, f4, f3, f0
/* 800870DC 0008401C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800870E0 00084020  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 800870E4 00084024  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 800870E8 00084028  EC 21 00 32 */	fmuls f1, f1, f0
lbl_800870EC:
/* 800870EC 0008402C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800870F0 00084030  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800870F4 00084034  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800870F8 00084038  7C 08 03 A6 */	mtlr r0
/* 800870FC 0008403C  38 21 00 28 */	addi r1, r1, 0x28
/* 80087100 00084040  4E 80 00 20 */	blr 

.global sinf
sinf:
/* 80087104 00084044  7C 08 02 A6 */	mflr r0
/* 80087108 00084048  3C 60 80 3B */	lis r3, __four_over_pi_m1@ha
/* 8008710C 0008404C  90 01 00 04 */	stw r0, 4(r1)
/* 80087110 00084050  38 63 EF 48 */	addi r3, r3, __four_over_pi_m1@l
/* 80087114 00084054  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80087118 00084058  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8008711C 0008405C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80087120 00084060  D0 21 00 08 */	stfs f1, 8(r1)
/* 80087124 00084064  C0 02 8A 30 */	lfs f0, $$2106@sda21(r2)
/* 80087128 00084068  80 01 00 08 */	lwz r0, 8(r1)
/* 8008712C 0008406C  C0 C1 00 08 */	lfs f6, 8(r1)
/* 80087130 00084070  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80087134 00084074  EC 20 01 B2 */	fmuls f1, f0, f6
/* 80087138 00084078  41 82 00 1C */	beq lbl_80087154
/* 8008713C 0008407C  C0 02 8A 34 */	lfs f0, $$2107@sda21(r2)
/* 80087140 00084080  EC 01 00 28 */	fsubs f0, f1, f0
/* 80087144 00084084  FC 00 00 1E */	fctiwz f0, f0
/* 80087148 00084088  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8008714C 0008408C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80087150 00084090  48 00 00 18 */	b lbl_80087168
lbl_80087154:
/* 80087154 00084094  C0 02 8A 34 */	lfs f0, $$2107@sda21(r2)
/* 80087158 00084098  EC 00 08 2A */	fadds f0, f0, f1
/* 8008715C 0008409C  FC 00 00 1E */	fctiwz f0, f0
/* 80087160 000840A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80087164 000840A4  80 81 00 14 */	lwz r4, 0x14(r1)
lbl_80087168:
/* 80087168 000840A8  54 80 08 3C */	slwi r0, r4, 1
/* 8008716C 000840AC  C8 22 8A 40 */	lfd f1, $$2110@sda21(r2)
/* 80087170 000840B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80087174 000840B4  C0 43 00 00 */	lfs f2, 0(r3)
/* 80087178 000840B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008717C 000840BC  3C 00 43 30 */	lis r0, 0x4330
/* 80087180 000840C0  C0 63 00 04 */	lfs f3, 4(r3)
/* 80087184 000840C4  54 9F 07 BE */	clrlwi r31, r4, 0x1e
/* 80087188 000840C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8008718C 000840CC  C0 83 00 08 */	lfs f4, 8(r3)
/* 80087190 000840D0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80087194 000840D4  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 80087198 000840D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008719C 000840DC  EC 06 00 28 */	fsubs f0, f6, f0
/* 800871A0 000840E0  EC 02 01 BA */	fmadds f0, f2, f6, f0
/* 800871A4 000840E4  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 800871A8 000840E8  EC 04 01 BA */	fmadds f0, f4, f6, f0
/* 800871AC 000840EC  EF E5 01 BA */	fmadds f31, f5, f6, f0
/* 800871B0 000840F0  FC 20 F8 90 */	fmr f1, f31
/* 800871B4 000840F4  4B FF F9 91 */	bl fabsf__Ff
/* 800871B8 000840F8  C0 02 8A 38 */	lfs f0, $$2108@sda21(r2)
/* 800871BC 000840FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800871C0 00084100  40 80 00 34 */	bge lbl_800871F4
/* 800871C4 00084104  3C 60 80 37 */	lis r3, __sincos_on_quadrant@ha
/* 800871C8 00084108  57 E4 18 38 */	slwi r4, r31, 3
/* 800871CC 0008410C  38 03 1F 5C */	addi r0, r3, __sincos_on_quadrant@l
/* 800871D0 00084110  7C 60 22 14 */	add r3, r0, r4
/* 800871D4 00084114  C0 23 00 04 */	lfs f1, 4(r3)
/* 800871D8 00084118  3C 80 80 37 */	lis r4, __sincos_poly@ha
/* 800871DC 0008411C  38 84 1F 7C */	addi r4, r4, __sincos_poly@l
/* 800871E0 00084120  C0 03 00 00 */	lfs f0, 0(r3)
/* 800871E4 00084124  EC 3F 00 72 */	fmuls f1, f31, f1
/* 800871E8 00084128  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 800871EC 0008412C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 800871F0 00084130  48 00 00 A0 */	b lbl_80087290
lbl_800871F4:
/* 800871F4 00084134  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 800871F8 00084138  EC 9F 07 F2 */	fmuls f4, f31, f31
/* 800871FC 0008413C  41 82 00 4C */	beq lbl_80087248
/* 80087200 00084140  3C 60 80 37 */	lis r3, __sincos_poly@ha
/* 80087204 00084144  38 83 1F 7C */	addi r4, r3, __sincos_poly@l
/* 80087208 00084148  C0 44 00 00 */	lfs f2, 0(r4)
/* 8008720C 0008414C  3C 60 80 37 */	lis r3, __sincos_on_quadrant@ha
/* 80087210 00084150  C0 24 00 08 */	lfs f1, 8(r4)
/* 80087214 00084154  38 03 1F 5C */	addi r0, r3, __sincos_on_quadrant@l
/* 80087218 00084158  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8008721C 0008415C  EC 62 09 3A */	fmadds f3, f2, f4, f1
/* 80087220 00084160  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80087224 00084164  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 80087228 00084168  57 E4 18 38 */	slwi r4, r31, 3
/* 8008722C 0008416C  7C 60 22 14 */	add r3, r0, r4
/* 80087230 00084170  EC 64 00 FA */	fmadds f3, f4, f3, f0
/* 80087234 00084174  C0 03 00 00 */	lfs f0, 0(r3)
/* 80087238 00084178  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 8008723C 0008417C  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 80087240 00084180  EC 21 00 32 */	fmuls f1, f1, f0
/* 80087244 00084184  48 00 00 4C */	b lbl_80087290
lbl_80087248:
/* 80087248 00084188  3C 60 80 37 */	lis r3, __sincos_poly@ha
/* 8008724C 0008418C  38 83 1F 7C */	addi r4, r3, __sincos_poly@l
/* 80087250 00084190  C0 44 00 04 */	lfs f2, 4(r4)
/* 80087254 00084194  3C 60 80 37 */	lis r3, __sincos_on_quadrant@ha
/* 80087258 00084198  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8008725C 0008419C  38 63 1F 5C */	addi r3, r3, __sincos_on_quadrant@l
/* 80087260 000841A0  57 E0 18 38 */	slwi r0, r31, 3
/* 80087264 000841A4  EC 62 09 3A */	fmadds f3, f2, f4, f1
/* 80087268 000841A8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8008726C 000841AC  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80087270 000841B0  7C 63 02 14 */	add r3, r3, r0
/* 80087274 000841B4  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 80087278 000841B8  EC 64 00 FA */	fmadds f3, f4, f3, f0
/* 8008727C 000841BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80087280 000841C0  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 80087284 000841C4  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 80087288 000841C8  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8008728C 000841CC  EC 21 00 32 */	fmuls f1, f1, f0
lbl_80087290:
/* 80087290 000841D0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80087294 000841D4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80087298 000841D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008729C 000841DC  7C 08 03 A6 */	mtlr r0
/* 800872A0 000841E0  38 21 00 28 */	addi r1, r1, 0x28
/* 800872A4 000841E4  4E 80 00 20 */	blr 

.global __sinit_trigf_c
__sinit_trigf_c:
/* 800872A8 000841E8  3C 60 80 37 */	lis r3, tmp_float@ha
/* 800872AC 000841EC  38 83 1A 80 */	addi r4, r3, tmp_float@l
/* 800872B0 000841F0  C0 04 00 00 */	lfs f0, 0(r4)
/* 800872B4 000841F4  3C 60 80 3B */	lis r3, __four_over_pi_m1@ha
/* 800872B8 000841F8  D4 03 EF 48 */	stfsu f0, __four_over_pi_m1@l(r3)
/* 800872BC 000841FC  C0 04 00 04 */	lfs f0, 4(r4)
/* 800872C0 00084200  D0 03 00 04 */	stfs f0, 4(r3)
/* 800872C4 00084204  C0 04 00 08 */	lfs f0, 8(r4)
/* 800872C8 00084208  D0 03 00 08 */	stfs f0, 8(r3)
/* 800872CC 0008420C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 800872D0 00084210  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800872D4 00084214  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
  .4byte __sinit_trigf_c

.section .rodata, "a"  # 0x8036FFA0 - 0x803A8380
.balign 8
tmp_float:
	.incbin "baserom.dol", 0x36EA80, 0x10

.section .data, "wa"  # 0x803A8380 - 0x803E6000
__four_over_pi_m1:
  .4byte 0
  .4byte 0
  .4byte 0
  .4byte 0

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
$$2106:
	.incbin "baserom.dol", 0x3E4730, 0x4
$$2107:
	.incbin "baserom.dol", 0x3E4734, 0x4
$$2108:
	.incbin "baserom.dol", 0x3E4738, 0x8
$$2110:
	.incbin "baserom.dol", 0x3E4740, 0x8
