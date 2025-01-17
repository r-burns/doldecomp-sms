.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global xFadeBgmForce__10MSBgmXFadeFf
xFadeBgmForce__10MSBgmXFadeFf:
/* 801868F0 00183830  7C 08 02 A6 */	mflr r0
/* 801868F4 00183834  3C 80 80 3C */	lis r4, "@1431"@ha
/* 801868F8 00183838  90 01 00 04 */	stw r0, 4(r1)
/* 801868FC 0018383C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80186900 00183840  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80186904 00183844  FF E0 08 90 */	fmr f31, f1
/* 80186908 00183848  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8018690C 0018384C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80186910 00183850  3B C4 A2 18 */	addi r30, r4, "@1431"@l
/* 80186914 00183854  38 80 00 00 */	li r4, 0
/* 80186918 00183858  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8018691C 0018385C  3B A3 00 00 */	addi r29, r3, 0
/* 80186920 00183860  48 00 00 30 */	b lbl_80186950
lbl_80186924:
/* 80186924 00183864  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80186928 00183868  7C 7E 02 14 */	add r3, r30, r0
/* 8018692C 0018386C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80186930 00183870  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80186934 00183874  4C 41 13 82 */	cror 2, 1, 2
/* 80186938 00183878  40 82 00 14 */	bne lbl_8018694C
/* 8018693C 0018387C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80186940 00183880  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80186944 00183884  40 80 00 08 */	bge lbl_8018694C
/* 80186948 00183888  48 00 00 18 */	b lbl_80186960
lbl_8018694C:
/* 8018694C 0018388C  38 84 00 01 */	addi r4, r4, 1
lbl_80186950:
/* 80186950 00183890  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80186954 00183894  28 00 00 11 */	cmplwi r0, 0x11
/* 80186958 00183898  41 80 FF CC */	blt lbl_80186924
/* 8018695C 0018389C  38 80 00 FF */	li r4, 0xff
lbl_80186960:
/* 80186960 001838A0  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 80186964 001838A4  28 1F 00 FF */	cmplwi r31, 0xff
/* 80186968 001838A8  41 82 00 44 */	beq lbl_801869AC
/* 8018696C 001838AC  20 1F 00 11 */	subfic r0, r31, 0x11
/* 80186970 001838B0  54 00 10 3A */	slwi r0, r0, 2
/* 80186974 001838B4  7C 7E 02 14 */	add r3, r30, r0
/* 80186978 001838B8  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 8018697C 001838BC  38 60 00 00 */	li r3, 0
/* 80186980 001838C0  38 80 00 00 */	li r4, 0
/* 80186984 001838C4  38 A0 00 00 */	li r5, 0
/* 80186988 001838C8  4B FF 92 95 */	bl setTrackVolume__5MSBgmFUcfUlUc
/* 8018698C 001838CC  57 E0 10 3A */	slwi r0, r31, 2
/* 80186990 001838D0  7C 7E 02 14 */	add r3, r30, r0
/* 80186994 001838D4  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 80186998 001838D8  38 60 00 01 */	li r3, 1
/* 8018699C 001838DC  38 80 00 00 */	li r4, 0
/* 801869A0 001838E0  38 A0 00 00 */	li r5, 0
/* 801869A4 001838E4  4B FF 92 79 */	bl setTrackVolume__5MSBgmFUcfUlUc
/* 801869A8 001838E8  D3 FD 00 00 */	stfs f31, 0(r29)
lbl_801869AC:
/* 801869AC 001838EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801869B0 001838F0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 801869B4 001838F4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801869B8 001838F8  7C 08 03 A6 */	mtlr r0
/* 801869BC 001838FC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801869C0 00183900  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 801869C4 00183904  38 21 00 30 */	addi r1, r1, 0x30
/* 801869C8 00183908  4E 80 00 20 */	blr 

.global xFadeBgm__10MSBgmXFadeFf
xFadeBgm__10MSBgmXFadeFf:
/* 801869CC 0018390C  7C 08 02 A6 */	mflr r0
/* 801869D0 00183910  38 80 00 00 */	li r4, 0
/* 801869D4 00183914  90 01 00 04 */	stw r0, 4(r1)
/* 801869D8 00183918  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801869DC 0018391C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801869E0 00183920  FF E0 08 90 */	fmr f31, f1
/* 801869E4 00183924  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801869E8 00183928  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801869EC 0018392C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801869F0 00183930  7C 7D 1B 78 */	mr r29, r3
/* 801869F4 00183934  3C 60 80 3C */	lis r3, "@1431"@ha
/* 801869F8 00183938  C0 3D 00 00 */	lfs f1, 0(r29)
/* 801869FC 0018393C  3B C3 A2 18 */	addi r30, r3, "@1431"@l
/* 80186A00 00183940  48 00 00 44 */	b lbl_80186A44
lbl_80186A04:
/* 80186A04 00183944  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80186A08 00183948  7C 7E 02 14 */	add r3, r30, r0
/* 80186A0C 0018394C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80186A10 00183950  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80186A14 00183954  40 81 00 14 */	ble lbl_80186A28
/* 80186A18 00183958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80186A1C 0018395C  4C 40 13 82 */	cror 2, 0, 2
/* 80186A20 00183960  40 82 00 08 */	bne lbl_80186A28
/* 80186A24 00183964  48 00 00 30 */	b lbl_80186A54
lbl_80186A28:
/* 80186A28 00183968  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80186A2C 0018396C  40 80 00 14 */	bge lbl_80186A40
/* 80186A30 00183970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80186A34 00183974  4C 41 13 82 */	cror 2, 1, 2
/* 80186A38 00183978  40 82 00 08 */	bne lbl_80186A40
/* 80186A3C 0018397C  48 00 00 18 */	b lbl_80186A54
lbl_80186A40:
/* 80186A40 00183980  38 84 00 01 */	addi r4, r4, 1
lbl_80186A44:
/* 80186A44 00183984  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80186A48 00183988  28 00 00 12 */	cmplwi r0, 0x12
/* 80186A4C 0018398C  41 80 FF B8 */	blt lbl_80186A04
/* 80186A50 00183990  38 80 00 FF */	li r4, 0xff
lbl_80186A54:
/* 80186A54 00183994  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80186A58 00183998  28 00 00 01 */	cmplwi r0, 1
/* 80186A5C 0018399C  38 60 00 00 */	li r3, 0
/* 80186A60 001839A0  41 80 00 10 */	blt lbl_80186A70
/* 80186A64 001839A4  28 00 00 10 */	cmplwi r0, 0x10
/* 80186A68 001839A8  41 81 00 08 */	bgt lbl_80186A70
/* 80186A6C 001839AC  38 60 00 01 */	li r3, 1
lbl_80186A70:
/* 80186A70 001839B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80186A74 001839B4  41 82 00 44 */	beq lbl_80186AB8
/* 80186A78 001839B8  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 80186A7C 001839BC  20 1F 00 11 */	subfic r0, r31, 0x11
/* 80186A80 001839C0  54 00 10 3A */	slwi r0, r0, 2
/* 80186A84 001839C4  7C 7E 02 14 */	add r3, r30, r0
/* 80186A88 001839C8  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 80186A8C 001839CC  38 60 00 00 */	li r3, 0
/* 80186A90 001839D0  38 80 00 02 */	li r4, 2
/* 80186A94 001839D4  38 A0 00 00 */	li r5, 0
/* 80186A98 001839D8  4B FF 91 85 */	bl setTrackVolume__5MSBgmFUcfUlUc
/* 80186A9C 001839DC  57 E0 10 3A */	slwi r0, r31, 2
/* 80186AA0 001839E0  7C 7E 02 14 */	add r3, r30, r0
/* 80186AA4 001839E4  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 80186AA8 001839E8  38 60 00 01 */	li r3, 1
/* 80186AAC 001839EC  38 80 00 02 */	li r4, 2
/* 80186AB0 001839F0  38 A0 00 00 */	li r5, 0
/* 80186AB4 001839F4  4B FF 91 69 */	bl setTrackVolume__5MSBgmFUcfUlUc
lbl_80186AB8:
/* 80186AB8 001839F8  D3 FD 00 00 */	stfs f31, 0(r29)
/* 80186ABC 001839FC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80186AC0 00183A00  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80186AC4 00183A04  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80186AC8 00183A08  7C 08 03 A6 */	mtlr r0
/* 80186ACC 00183A0C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80186AD0 00183A10  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80186AD4 00183A14  38 21 00 38 */	addi r1, r1, 0x38
/* 80186AD8 00183A18  4E 80 00 20 */	blr 

.global changeTempo__8MSModBgmFUcUc
changeTempo__8MSModBgmFUcUc:
/* 80186ADC 00183A1C  7C 08 02 A6 */	mflr r0
/* 80186AE0 00183A20  38 65 00 00 */	addi r3, r5, 0
/* 80186AE4 00183A24  90 01 00 04 */	stw r0, 4(r1)
/* 80186AE8 00183A28  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80186AEC 00183A2C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80186AF0 00183A30  3B E4 00 00 */	addi r31, r4, 0
/* 80186AF4 00183A34  4B FF 93 7D */	bl getHandle__5MSBgmFUc
/* 80186AF8 00183A38  28 03 00 00 */	cmplwi r3, 0
/* 80186AFC 00183A3C  41 82 00 54 */	beq lbl_80186B50
/* 80186B00 00183A40  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80186B04 00183A44  C0 22 AC F0 */	lfs f1, "@2016"@sda21(r2)
/* 80186B08 00183A48  2C 00 00 02 */	cmpwi r0, 2
/* 80186B0C 00183A4C  38 80 00 05 */	li r4, 5
/* 80186B10 00183A50  41 82 00 34 */	beq lbl_80186B44
/* 80186B14 00183A54  40 80 00 14 */	bge lbl_80186B28
/* 80186B18 00183A58  2C 00 00 00 */	cmpwi r0, 0
/* 80186B1C 00183A5C  41 82 00 18 */	beq lbl_80186B34
/* 80186B20 00183A60  40 80 00 1C */	bge lbl_80186B3C
/* 80186B24 00183A64  48 00 00 28 */	b lbl_80186B4C
lbl_80186B28:
/* 80186B28 00183A68  2C 00 00 04 */	cmpwi r0, 4
/* 80186B2C 00183A6C  40 80 00 20 */	bge lbl_80186B4C
/* 80186B30 00183A70  48 00 00 1C */	b lbl_80186B4C
lbl_80186B34:
/* 80186B34 00183A74  C0 22 AC F4 */	lfs f1, "@2017"@sda21(r2)
/* 80186B38 00183A78  48 00 00 14 */	b lbl_80186B4C
lbl_80186B3C:
/* 80186B3C 00183A7C  C0 22 AC F8 */	lfs f1, "@2018"@sda21(r2)
/* 80186B40 00183A80  48 00 00 0C */	b lbl_80186B4C
lbl_80186B44:
/* 80186B44 00183A84  C0 22 AC FC */	lfs f1, "@2019"@sda21(r2)
/* 80186B48 00183A88  38 80 00 14 */	li r4, 0x14
lbl_80186B4C:
/* 80186B4C 00183A8C  4B EC E5 81 */	bl setTempoProportion__8JAISoundFfUl
lbl_80186B50:
/* 80186B50 00183A90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80186B54 00183A94  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80186B58 00183A98  38 21 00 18 */	addi r1, r1, 0x18
/* 80186B5C 00183A9C  7C 08 03 A6 */	mtlr r0
/* 80186B60 00183AA0  4E 80 00 20 */	blr 

.global loop__8MSModBgmFv
loop__8MSModBgmFv:
/* 80186B64 00183AA4  88 03 00 00 */	lbz r0, 0(r3)
/* 80186B68 00183AA8  2C 00 00 01 */	cmpwi r0, 1
/* 80186B6C 00183AAC  41 82 00 0C */	beq lbl_80186B78
/* 80186B70 00183AB0  40 80 00 18 */	bge lbl_80186B88
/* 80186B74 00183AB4  48 00 00 14 */	b lbl_80186B88
lbl_80186B78:
/* 80186B78 00183AB8  80 83 00 04 */	lwz r4, 4(r3)
/* 80186B7C 00183ABC  38 04 00 01 */	addi r0, r4, 1
/* 80186B80 00183AC0  90 03 00 04 */	stw r0, 4(r3)
/* 80186B84 00183AC4  48 00 00 10 */	b lbl_80186B94
lbl_80186B88:
/* 80186B88 00183AC8  38 00 00 00 */	li r0, 0
/* 80186B8C 00183ACC  90 03 00 04 */	stw r0, 4(r3)
/* 80186B90 00183AD0  4E 80 00 20 */	blr 
lbl_80186B94:
/* 80186B94 00183AD4  38 00 00 00 */	li r0, 0
/* 80186B98 00183AD8  98 03 00 00 */	stb r0, 0(r3)
/* 80186B9C 00183ADC  4E 80 00 20 */	blr 

.global modBgm__8MSModBgmFUcUc
modBgm__8MSModBgmFUcUc:
/* 80186BA0 00183AE0  7C 08 02 A6 */	mflr r0
/* 80186BA4 00183AE4  90 01 00 04 */	stw r0, 4(r1)
/* 80186BA8 00183AE8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80186BAC 00183AEC  2C 00 00 02 */	cmpwi r0, 2
/* 80186BB0 00183AF0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80186BB4 00183AF4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80186BB8 00183AF8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80186BBC 00183AFC  3B C3 00 00 */	addi r30, r3, 0
/* 80186BC0 00183B00  40 80 00 18 */	bge lbl_80186BD8
/* 80186BC4 00183B04  2C 00 00 00 */	cmpwi r0, 0
/* 80186BC8 00183B08  40 80 00 08 */	bge lbl_80186BD0
/* 80186BCC 00183B0C  48 00 00 0C */	b lbl_80186BD8
lbl_80186BD0:
/* 80186BD0 00183B10  38 00 00 01 */	li r0, 1
/* 80186BD4 00183B14  98 1E 00 00 */	stb r0, 0(r30)
lbl_80186BD8:
/* 80186BD8 00183B18  7C A3 2B 78 */	mr r3, r5
/* 80186BDC 00183B1C  4B FF 92 95 */	bl getHandle__5MSBgmFUc
/* 80186BE0 00183B20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80186BE4 00183B24  40 82 00 10 */	bne lbl_80186BF4
/* 80186BE8 00183B28  3B E0 00 00 */	li r31, 0
/* 80186BEC 00183B2C  9B FE 00 00 */	stb r31, 0(r30)
/* 80186BF0 00183B30  48 00 00 90 */	b lbl_80186C80
lbl_80186BF4:
/* 80186BF4 00183B34  80 1E 00 04 */	lwz r0, 4(r30)
/* 80186BF8 00183B38  2C 00 00 05 */	cmpwi r0, 5
/* 80186BFC 00183B3C  41 82 00 48 */	beq lbl_80186C44
/* 80186C00 00183B40  40 80 00 10 */	bge lbl_80186C10
/* 80186C04 00183B44  2C 00 00 00 */	cmpwi r0, 0
/* 80186C08 00183B48  41 82 00 14 */	beq lbl_80186C1C
/* 80186C0C 00183B4C  48 00 00 74 */	b lbl_80186C80
lbl_80186C10:
/* 80186C10 00183B50  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80186C14 00183B54  41 82 00 58 */	beq lbl_80186C6C
/* 80186C18 00183B58  48 00 00 68 */	b lbl_80186C80
lbl_80186C1C:
/* 80186C1C 00183B5C  C0 22 AD 00 */	lfs f1, "@2039"@sda21(r2)
/* 80186C20 00183B60  38 7F 00 00 */	addi r3, r31, 0
/* 80186C24 00183B64  38 80 00 0A */	li r4, 0xa
/* 80186C28 00183B68  4B EC E4 A5 */	bl setTempoProportion__8JAISoundFfUl
/* 80186C2C 00183B6C  C0 22 AD 00 */	lfs f1, "@2039"@sda21(r2)
/* 80186C30 00183B70  38 7F 00 00 */	addi r3, r31, 0
/* 80186C34 00183B74  38 80 00 0A */	li r4, 0xa
/* 80186C38 00183B78  38 A0 00 00 */	li r5, 0
/* 80186C3C 00183B7C  4B EC E3 19 */	bl setPitch__8JAISoundFfUlUc
/* 80186C40 00183B80  48 00 00 40 */	b lbl_80186C80
lbl_80186C44:
/* 80186C44 00183B84  C0 22 AD 04 */	lfs f1, "@2040"@sda21(r2)
/* 80186C48 00183B88  38 7F 00 00 */	addi r3, r31, 0
/* 80186C4C 00183B8C  38 80 00 B4 */	li r4, 0xb4
/* 80186C50 00183B90  4B EC E4 7D */	bl setTempoProportion__8JAISoundFfUl
/* 80186C54 00183B94  C0 22 AD 08 */	lfs f1, "@2041"@sda21(r2)
/* 80186C58 00183B98  38 7F 00 00 */	addi r3, r31, 0
/* 80186C5C 00183B9C  38 80 00 B4 */	li r4, 0xb4
/* 80186C60 00183BA0  38 A0 00 00 */	li r5, 0
/* 80186C64 00183BA4  4B EC E2 F1 */	bl setPitch__8JAISoundFfUlUc
/* 80186C68 00183BA8  48 00 00 18 */	b lbl_80186C80
lbl_80186C6C:
/* 80186C6C 00183BAC  38 7F 00 00 */	addi r3, r31, 0
/* 80186C70 00183BB0  38 80 00 01 */	li r4, 1
/* 80186C74 00183BB4  4B EC E1 A1 */	bl stop__8JAISoundFUl
/* 80186C78 00183BB8  3B E0 00 00 */	li r31, 0
/* 80186C7C 00183BBC  9B FE 00 00 */	stb r31, 0(r30)
lbl_80186C80:
/* 80186C80 00183BC0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80186C84 00183BC4  7F E3 FB 78 */	mr r3, r31
/* 80186C88 00183BC8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80186C8C 00183BCC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80186C90 00183BD0  7C 08 03 A6 */	mtlr r0
/* 80186C94 00183BD4  38 21 00 18 */	addi r1, r1, 0x18
/* 80186C98 00183BD8  4E 80 00 20 */	blr 

.global __sinit_MSModBgm_cpp
__sinit_MSModBgm_cpp:
/* 80186C9C 00183BDC  7C 08 02 A6 */	mflr r0
/* 80186CA0 00183BE0  3C 60 80 3F */	lis r3, "@1945"@ha
/* 80186CA4 00183BE4  90 01 00 04 */	stw r0, 4(r1)
/* 80186CA8 00183BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80186CAC 00183BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80186CB0 00183BF0  3B E3 56 E8 */	addi r31, r3, "@1945"@l
/* 80186CB4 00183BF4  88 0D 97 CC */	lbz r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
/* 80186CB8 00183BF8  7C 00 07 75 */	extsb. r0, r0
/* 80186CBC 00183BFC  40 82 00 28 */	bne lbl_80186CE4
/* 80186CC0 00183C00  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 80186CC4 00183C04  4B E8 7F 71 */	bl initiate__10JSUPtrListFv
/* 80186CC8 00183C08  3C 60 80 0E */	lis r3, "__dt__15JSUList<5MSBgm>Fv"@ha
/* 80186CCC 00183C0C  38 83 6A 44 */	addi r4, r3, "__dt__15JSUList<5MSBgm>Fv"@l
/* 80186CD0 00183C10  38 6D 97 A8 */	addi r3, r13, "smList__15JALList<5MSBgm>"@sda21
/* 80186CD4 00183C14  38 BF 00 00 */	addi r5, r31, 0
/* 80186CD8 00183C18  4B EF BA 51 */	bl __register_global_object
/* 80186CDC 00183C1C  38 00 00 01 */	li r0, 1
/* 80186CE0 00183C20  98 0D 97 CC */	stb r0, "__init__smList__15JALList<5MSBgm>"@sda21(r13)
lbl_80186CE4:
/* 80186CE4 00183C24  88 0D 97 CD */	lbz r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
/* 80186CE8 00183C28  7C 00 07 75 */	extsb. r0, r0
/* 80186CEC 00183C2C  40 82 00 28 */	bne lbl_80186D14
/* 80186CF0 00183C30  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 80186CF4 00183C34  4B E8 7F 41 */	bl initiate__10JSUPtrListFv
/* 80186CF8 00183C38  3C 60 80 0E */	lis r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@ha
/* 80186CFC 00183C3C  38 83 69 EC */	addi r4, r3, "__dt__24JSUList<13MSSetSoundGrp>Fv"@l
/* 80186D00 00183C40  38 6D 97 B4 */	addi r3, r13, "smList__24JALList<13MSSetSoundGrp>"@sda21
/* 80186D04 00183C44  38 BF 00 0C */	addi r5, r31, 0xc
/* 80186D08 00183C48  4B EF BA 21 */	bl __register_global_object
/* 80186D0C 00183C4C  38 00 00 01 */	li r0, 1
/* 80186D10 00183C50  98 0D 97 CD */	stb r0, "__init__smList__24JALList<13MSSetSoundGrp>"@sda21(r13)
lbl_80186D14:
/* 80186D14 00183C54  88 0D 97 CE */	lbz r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
/* 80186D18 00183C58  7C 00 07 75 */	extsb. r0, r0
/* 80186D1C 00183C5C  40 82 00 28 */	bne lbl_80186D44
/* 80186D20 00183C60  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 80186D24 00183C64  4B E8 7F 11 */	bl initiate__10JSUPtrListFv
/* 80186D28 00183C68  3C 60 80 0E */	lis r3, "__dt__21JSUList<10MSSetSound>Fv"@ha
/* 80186D2C 00183C6C  38 83 69 94 */	addi r4, r3, "__dt__21JSUList<10MSSetSound>Fv"@l
/* 80186D30 00183C70  38 6D 97 C0 */	addi r3, r13, "smList__21JALList<10MSSetSound>"@sda21
/* 80186D34 00183C74  38 BF 00 18 */	addi r5, r31, 0x18
/* 80186D38 00183C78  4B EF B9 F1 */	bl __register_global_object
/* 80186D3C 00183C7C  38 00 00 01 */	li r0, 1
/* 80186D40 00183C80  98 0D 97 CE */	stb r0, "__init__smList__21JALList<10MSSetSound>"@sda21(r13)
lbl_80186D44:
/* 80186D44 00183C84  88 0D 8F 8C */	lbz r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
/* 80186D48 00183C88  7C 00 07 75 */	extsb. r0, r0
/* 80186D4C 00183C8C  40 82 00 28 */	bne lbl_80186D74
/* 80186D50 00183C90  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 80186D54 00183C94  4B E8 7E E1 */	bl initiate__10JSUPtrListFv
/* 80186D58 00183C98  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@ha
/* 80186D5C 00183C9C  38 83 A8 0C */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDGrp>Fv"@l
/* 80186D60 00183CA0  38 6D 8E FC */	addi r3, r13, "smList__26JALList<15JALSeModEffDGrp>"@sda21
/* 80186D64 00183CA4  38 BF 00 24 */	addi r5, r31, 0x24
/* 80186D68 00183CA8  4B EF B9 C1 */	bl __register_global_object
/* 80186D6C 00183CAC  38 00 00 01 */	li r0, 1
/* 80186D70 00183CB0  98 0D 8F 8C */	stb r0, "__init__smList__26JALList<15JALSeModEffDGrp>"@sda21(r13)
lbl_80186D74:
/* 80186D74 00183CB4  88 0D 8F 8D */	lbz r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
/* 80186D78 00183CB8  7C 00 07 75 */	extsb. r0, r0
/* 80186D7C 00183CBC  40 82 00 28 */	bne lbl_80186DA4
/* 80186D80 00183CC0  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 80186D84 00183CC4  4B E8 7E B1 */	bl initiate__10JSUPtrListFv
/* 80186D88 00183CC8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@ha
/* 80186D8C 00183CCC  38 83 A7 B4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDGrp>Fv"@l
/* 80186D90 00183CD0  38 6D 8F 08 */	addi r3, r13, "smList__26JALList<15JALSeModPitDGrp>"@sda21
/* 80186D94 00183CD4  38 BF 00 30 */	addi r5, r31, 0x30
/* 80186D98 00183CD8  4B EF B9 91 */	bl __register_global_object
/* 80186D9C 00183CDC  38 00 00 01 */	li r0, 1
/* 80186DA0 00183CE0  98 0D 8F 8D */	stb r0, "__init__smList__26JALList<15JALSeModPitDGrp>"@sda21(r13)
lbl_80186DA4:
/* 80186DA4 00183CE4  88 0D 8F 8E */	lbz r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
/* 80186DA8 00183CE8  7C 00 07 75 */	extsb. r0, r0
/* 80186DAC 00183CEC  40 82 00 28 */	bne lbl_80186DD4
/* 80186DB0 00183CF0  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 80186DB4 00183CF4  4B E8 7E 81 */	bl initiate__10JSUPtrListFv
/* 80186DB8 00183CF8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@ha
/* 80186DBC 00183CFC  38 83 A7 5C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDGrp>Fv"@l
/* 80186DC0 00183D00  38 6D 8F 14 */	addi r3, r13, "smList__26JALList<15JALSeModVolDGrp>"@sda21
/* 80186DC4 00183D04  38 BF 00 3C */	addi r5, r31, 0x3c
/* 80186DC8 00183D08  4B EF B9 61 */	bl __register_global_object
/* 80186DCC 00183D0C  38 00 00 01 */	li r0, 1
/* 80186DD0 00183D10  98 0D 8F 8E */	stb r0, "__init__smList__26JALList<15JALSeModVolDGrp>"@sda21(r13)
lbl_80186DD4:
/* 80186DD4 00183D14  88 0D 8F 8F */	lbz r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
/* 80186DD8 00183D18  7C 00 07 75 */	extsb. r0, r0
/* 80186DDC 00183D1C  40 82 00 28 */	bne lbl_80186E04
/* 80186DE0 00183D20  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 80186DE4 00183D24  4B E8 7E 51 */	bl initiate__10JSUPtrListFv
/* 80186DE8 00183D28  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@ha
/* 80186DEC 00183D2C  38 83 A7 04 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFGrp>Fv"@l
/* 80186DF0 00183D30  38 6D 8F 20 */	addi r3, r13, "smList__26JALList<15JALSeModEffFGrp>"@sda21
/* 80186DF4 00183D34  38 BF 00 48 */	addi r5, r31, 0x48
/* 80186DF8 00183D38  4B EF B9 31 */	bl __register_global_object
/* 80186DFC 00183D3C  38 00 00 01 */	li r0, 1
/* 80186E00 00183D40  98 0D 8F 8F */	stb r0, "__init__smList__26JALList<15JALSeModEffFGrp>"@sda21(r13)
lbl_80186E04:
/* 80186E04 00183D44  88 0D 8F 90 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
/* 80186E08 00183D48  7C 00 07 75 */	extsb. r0, r0
/* 80186E0C 00183D4C  40 82 00 28 */	bne lbl_80186E34
/* 80186E10 00183D50  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 80186E14 00183D54  4B E8 7E 21 */	bl initiate__10JSUPtrListFv
/* 80186E18 00183D58  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@ha
/* 80186E1C 00183D5C  38 83 A6 AC */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFGrp>Fv"@l
/* 80186E20 00183D60  38 6D 8F 2C */	addi r3, r13, "smList__26JALList<15JALSeModPitFGrp>"@sda21
/* 80186E24 00183D64  38 BF 00 54 */	addi r5, r31, 0x54
/* 80186E28 00183D68  4B EF B9 01 */	bl __register_global_object
/* 80186E2C 00183D6C  38 00 00 01 */	li r0, 1
/* 80186E30 00183D70  98 0D 8F 90 */	stb r0, "__init__smList__26JALList<15JALSeModPitFGrp>"@sda21(r13)
lbl_80186E34:
/* 80186E34 00183D74  88 0D 8F 91 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
/* 80186E38 00183D78  7C 00 07 75 */	extsb. r0, r0
/* 80186E3C 00183D7C  40 82 00 28 */	bne lbl_80186E64
/* 80186E40 00183D80  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 80186E44 00183D84  4B E8 7D F1 */	bl initiate__10JSUPtrListFv
/* 80186E48 00183D88  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@ha
/* 80186E4C 00183D8C  38 83 A6 54 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFGrp>Fv"@l
/* 80186E50 00183D90  38 6D 8F 38 */	addi r3, r13, "smList__26JALList<15JALSeModVolFGrp>"@sda21
/* 80186E54 00183D94  38 BF 00 60 */	addi r5, r31, 0x60
/* 80186E58 00183D98  4B EF B8 D1 */	bl __register_global_object
/* 80186E5C 00183D9C  38 00 00 01 */	li r0, 1
/* 80186E60 00183DA0  98 0D 8F 91 */	stb r0, "__init__smList__26JALList<15JALSeModVolFGrp>"@sda21(r13)
lbl_80186E64:
/* 80186E64 00183DA4  88 0D 8F 92 */	lbz r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
/* 80186E68 00183DA8  7C 00 07 75 */	extsb. r0, r0
/* 80186E6C 00183DAC  40 82 00 28 */	bne lbl_80186E94
/* 80186E70 00183DB0  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 80186E74 00183DB4  4B E8 7D C1 */	bl initiate__10JSUPtrListFv
/* 80186E78 00183DB8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@ha
/* 80186E7C 00183DBC  38 83 A5 FC */	addi r4, r3, "__dt__26JSUList<15JALSeModEffDist>Fv"@l
/* 80186E80 00183DC0  38 6D 8F 44 */	addi r3, r13, "smList__26JALList<15JALSeModEffDist>"@sda21
/* 80186E84 00183DC4  38 BF 00 6C */	addi r5, r31, 0x6c
/* 80186E88 00183DC8  4B EF B8 A1 */	bl __register_global_object
/* 80186E8C 00183DCC  38 00 00 01 */	li r0, 1
/* 80186E90 00183DD0  98 0D 8F 92 */	stb r0, "__init__smList__26JALList<15JALSeModEffDist>"@sda21(r13)
lbl_80186E94:
/* 80186E94 00183DD4  88 0D 8F 93 */	lbz r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
/* 80186E98 00183DD8  7C 00 07 75 */	extsb. r0, r0
/* 80186E9C 00183DDC  40 82 00 28 */	bne lbl_80186EC4
/* 80186EA0 00183DE0  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 80186EA4 00183DE4  4B E8 7D 91 */	bl initiate__10JSUPtrListFv
/* 80186EA8 00183DE8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@ha
/* 80186EAC 00183DEC  38 83 A5 A4 */	addi r4, r3, "__dt__26JSUList<15JALSeModPitDist>Fv"@l
/* 80186EB0 00183DF0  38 6D 8F 50 */	addi r3, r13, "smList__26JALList<15JALSeModPitDist>"@sda21
/* 80186EB4 00183DF4  38 BF 00 78 */	addi r5, r31, 0x78
/* 80186EB8 00183DF8  4B EF B8 71 */	bl __register_global_object
/* 80186EBC 00183DFC  38 00 00 01 */	li r0, 1
/* 80186EC0 00183E00  98 0D 8F 93 */	stb r0, "__init__smList__26JALList<15JALSeModPitDist>"@sda21(r13)
lbl_80186EC4:
/* 80186EC4 00183E04  88 0D 8F 94 */	lbz r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
/* 80186EC8 00183E08  7C 00 07 75 */	extsb. r0, r0
/* 80186ECC 00183E0C  40 82 00 28 */	bne lbl_80186EF4
/* 80186ED0 00183E10  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 80186ED4 00183E14  4B E8 7D 61 */	bl initiate__10JSUPtrListFv
/* 80186ED8 00183E18  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@ha
/* 80186EDC 00183E1C  38 83 A5 4C */	addi r4, r3, "__dt__26JSUList<15JALSeModVolDist>Fv"@l
/* 80186EE0 00183E20  38 6D 8F 5C */	addi r3, r13, "smList__26JALList<15JALSeModVolDist>"@sda21
/* 80186EE4 00183E24  38 BF 00 84 */	addi r5, r31, 0x84
/* 80186EE8 00183E28  4B EF B8 41 */	bl __register_global_object
/* 80186EEC 00183E2C  38 00 00 01 */	li r0, 1
/* 80186EF0 00183E30  98 0D 8F 94 */	stb r0, "__init__smList__26JALList<15JALSeModVolDist>"@sda21(r13)
lbl_80186EF4:
/* 80186EF4 00183E34  88 0D 8F 95 */	lbz r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
/* 80186EF8 00183E38  7C 00 07 75 */	extsb. r0, r0
/* 80186EFC 00183E3C  40 82 00 28 */	bne lbl_80186F24
/* 80186F00 00183E40  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 80186F04 00183E44  4B E8 7D 31 */	bl initiate__10JSUPtrListFv
/* 80186F08 00183E48  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@ha
/* 80186F0C 00183E4C  38 83 A4 F4 */	addi r4, r3, "__dt__26JSUList<15JALSeModEffFunk>Fv"@l
/* 80186F10 00183E50  38 6D 8F 68 */	addi r3, r13, "smList__26JALList<15JALSeModEffFunk>"@sda21
/* 80186F14 00183E54  38 BF 00 90 */	addi r5, r31, 0x90
/* 80186F18 00183E58  4B EF B8 11 */	bl __register_global_object
/* 80186F1C 00183E5C  38 00 00 01 */	li r0, 1
/* 80186F20 00183E60  98 0D 8F 95 */	stb r0, "__init__smList__26JALList<15JALSeModEffFunk>"@sda21(r13)
lbl_80186F24:
/* 80186F24 00183E64  88 0D 8F 96 */	lbz r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
/* 80186F28 00183E68  7C 00 07 75 */	extsb. r0, r0
/* 80186F2C 00183E6C  40 82 00 28 */	bne lbl_80186F54
/* 80186F30 00183E70  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 80186F34 00183E74  4B E8 7D 01 */	bl initiate__10JSUPtrListFv
/* 80186F38 00183E78  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@ha
/* 80186F3C 00183E7C  38 83 A4 9C */	addi r4, r3, "__dt__26JSUList<15JALSeModPitFunk>Fv"@l
/* 80186F40 00183E80  38 6D 8F 74 */	addi r3, r13, "smList__26JALList<15JALSeModPitFunk>"@sda21
/* 80186F44 00183E84  38 BF 00 9C */	addi r5, r31, 0x9c
/* 80186F48 00183E88  4B EF B7 E1 */	bl __register_global_object
/* 80186F4C 00183E8C  38 00 00 01 */	li r0, 1
/* 80186F50 00183E90  98 0D 8F 96 */	stb r0, "__init__smList__26JALList<15JALSeModPitFunk>"@sda21(r13)
lbl_80186F54:
/* 80186F54 00183E94  88 0D 8F 97 */	lbz r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
/* 80186F58 00183E98  7C 00 07 75 */	extsb. r0, r0
/* 80186F5C 00183E9C  40 82 00 28 */	bne lbl_80186F84
/* 80186F60 00183EA0  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 80186F64 00183EA4  4B E8 7C D1 */	bl initiate__10JSUPtrListFv
/* 80186F68 00183EA8  3C 60 80 05 */	lis r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@ha
/* 80186F6C 00183EAC  38 83 A4 44 */	addi r4, r3, "__dt__26JSUList<15JALSeModVolFunk>Fv"@l
/* 80186F70 00183EB0  38 6D 8F 80 */	addi r3, r13, "smList__26JALList<15JALSeModVolFunk>"@sda21
/* 80186F74 00183EB4  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 80186F78 00183EB8  4B EF B7 B1 */	bl __register_global_object
/* 80186F7C 00183EBC  38 00 00 01 */	li r0, 1
/* 80186F80 00183EC0  98 0D 8F 97 */	stb r0, "__init__smList__26JALList<15JALSeModVolFunk>"@sda21(r13)
lbl_80186F84:
/* 80186F84 00183EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80186F88 00183EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80186F8C 00183ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80186F90 00183ED0  7C 08 03 A6 */	mtlr r0
/* 80186F94 00183ED4  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
lbl_constructor:
  .4byte __sinit_MSModBgm_cpp

.section .data, "wa"  # 0x803A8380 - 0x803E6000
"@1431":
	.incbin "baserom.dol", 0x3B7218, 0xC
"@1411":
	.incbin "baserom.dol", 0x3B7224, 0xC
"@1210":
	.incbin "baserom.dol", 0x3B7230, 0x10
scTiming__10MSBgmXFade:
	.incbin "baserom.dol", 0x3B7240, 0x48
scExp__10MSBgmXFade:
	.incbin "baserom.dol", 0x3B7288, 0x48

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@2016":
	.incbin "baserom.dol", 0x3E69F0, 0x4
"@2017":
	.incbin "baserom.dol", 0x3E69F4, 0x4
"@2018":
	.incbin "baserom.dol", 0x3E69F8, 0x4
"@2019":
	.incbin "baserom.dol", 0x3E69FC, 0x4
"@2039":
	.incbin "baserom.dol", 0x3E6A00, 0x4
"@2040":
	.incbin "baserom.dol", 0x3E6A04, 0x4
"@2041":
	.incbin "baserom.dol", 0x3E6A08, 0x8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
"@1945":
	.skip 0xC
"@1946":
	.skip 0xC
"@1947":
	.skip 0xC
"@1948":
	.skip 0xC
"@1949":
	.skip 0xC
"@1950":
	.skip 0xC
"@1951":
	.skip 0xC
"@1952":
	.skip 0xC
"@1953":
	.skip 0xC
"@1954":
	.skip 0xC
"@1955":
	.skip 0xC
"@1956":
	.skip 0xC
"@1957":
	.skip 0xC
"@1958":
	.skip 0xC
"@1959":
	.skip 0x10
