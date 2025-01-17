.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global controlByCameraCode___15CPolarSubCameraFPi
controlByCameraCode___15CPolarSubCameraFPi:
/* 80352D58 0034FC98  7C 08 02 A6 */	mflr r0
/* 80352D5C 0034FC9C  90 01 00 04 */	stw r0, 4(r1)
/* 80352D60 0034FCA0  38 00 FF FF */	li r0, -1
/* 80352D64 0034FCA4  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 80352D68 0034FCA8  BF 61 00 64 */	stmw r27, 0x64(r1)
/* 80352D6C 0034FCAC  3B C4 00 00 */	addi r30, r4, 0
/* 80352D70 0034FCB0  3B A3 00 00 */	addi r29, r3, 0
/* 80352D74 0034FCB4  3B 80 00 01 */	li r28, 1
/* 80352D78 0034FCB8  90 04 00 00 */	stw r0, 0(r4)
/* 80352D7C 0034FCBC  4B DF FD 5D */	bl SMS_IsMarioOpeningDoor__Fv
/* 80352D80 0034FCC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80352D84 0034FCC4  41 82 00 58 */	beq lbl_80352DDC
/* 80352D88 0034FCC8  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 80352D8C 0034FCCC  2C 00 00 42 */	cmpwi r0, 0x42
/* 80352D90 0034FCD0  40 82 00 3C */	bne lbl_80352DCC
/* 80352D94 0034FCD4  80 6D A8 B8 */	lwz r3, gpCameraMario@sda21(r13)
/* 80352D98 0034FCD8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80352D9C 0034FCDC  28 00 00 78 */	cmplwi r0, 0x78
/* 80352DA0 0034FCE0  40 82 00 2C */	bne lbl_80352DCC
/* 80352DA4 0034FCE4  38 7D 00 00 */	addi r3, r29, 0
/* 80352DA8 0034FCE8  38 80 00 14 */	li r4, 0x14
/* 80352DAC 0034FCEC  38 A0 00 01 */	li r5, 1
/* 80352DB0 0034FCF0  4B FF F2 19 */	bl changeCamModeSpecifyFrame___15CPolarSubCameraFii
/* 80352DB4 0034FCF4  80 8D 98 E4 */	lwz r4, gpMarioAngleY@sda21(r13)
/* 80352DB8 0034FCF8  7F A3 EB 78 */	mr r3, r29
/* 80352DBC 0034FCFC  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 80352DC0 0034FD00  A8 84 00 00 */	lha r4, 0(r4)
/* 80352DC4 0034FD04  38 84 09 C4 */	addi r4, r4, 0x9c4
/* 80352DC8 0034FD08  48 00 FE 25 */	bl warpPosAndAt__15CPolarSubCameraFfs
lbl_80352DCC:
/* 80352DCC 0034FD0C  80 7D 01 20 */	lwz r3, 0x120(r29)
/* 80352DD0 0034FD10  4B DA 8D 09 */	bl onNeutralMarioKey__13TMarioGamePadFv
/* 80352DD4 0034FD14  3B 80 00 00 */	li r28, 0
/* 80352DD8 0034FD18  48 00 00 D0 */	b lbl_80352EA8
lbl_80352DDC:
/* 80352DDC 0034FD1C  80 8D 98 DC */	lwz r4, gpMarioPos@sda21(r13)
/* 80352DE0 0034FD20  3B E0 00 00 */	li r31, 0
/* 80352DE4 0034FD24  80 AD A8 D8 */	lwz r5, gpCubeCamera@sda21(r13)
/* 80352DE8 0034FD28  80 64 00 00 */	lwz r3, 0(r4)
/* 80352DEC 0034FD2C  8B 65 00 10 */	lbz r27, 0x10(r5)
/* 80352DF0 0034FD30  80 04 00 04 */	lwz r0, 4(r4)
/* 80352DF4 0034FD34  C0 02 04 98 */	lfs f0, "@1717"@sda21(r2)
/* 80352DF8 0034FD38  90 61 00 54 */	stw r3, 0x54(r1)
/* 80352DFC 0034FD3C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80352E00 0034FD40  80 04 00 08 */	lwz r0, 8(r4)
/* 80352E04 0034FD44  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80352E08 0034FD48  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80352E0C 0034FD4C  EC 01 00 2A */	fadds f0, f1, f0
/* 80352E10 0034FD50  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80352E14 0034FD54  48 00 00 8C */	b lbl_80352EA0
lbl_80352E18:
/* 80352E18 0034FD58  80 6D A8 D8 */	lwz r3, gpCubeCamera@sda21(r13)
/* 80352E1C 0034FD5C  38 BF 00 00 */	addi r5, r31, 0
/* 80352E20 0034FD60  38 81 00 54 */	addi r4, r1, 0x54
/* 80352E24 0034FD64  48 00 C8 15 */	bl isInCube__16TCubeManagerBaseCFRC3Vecl
/* 80352E28 0034FD68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80352E2C 0034FD6C  41 82 00 70 */	beq lbl_80352E9C
/* 80352E30 0034FD70  80 6D A8 D8 */	lwz r3, gpCubeCamera@sda21(r13)
/* 80352E34 0034FD74  57 E0 10 3A */	slwi r0, r31, 2
/* 80352E38 0034FD78  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80352E3C 0034FD7C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80352E40 0034FD80  7C 84 02 14 */	add r4, r4, r0
/* 80352E44 0034FD84  80 84 00 00 */	lwz r4, 0(r4)
/* 80352E48 0034FD88  83 84 00 38 */	lwz r28, 0x38(r4)
/* 80352E4C 0034FD8C  28 1C 00 00 */	cmplwi r28, 0
/* 80352E50 0034FD90  38 9C 00 00 */	addi r4, r28, 0
/* 80352E54 0034FD94  41 82 00 34 */	beq lbl_80352E88
/* 80352E58 0034FD98  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 80352E5C 0034FD9C  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 80352E60 0034FDA0  7C 03 00 00 */	cmpw r3, r0
/* 80352E64 0034FDA4  40 82 00 10 */	bne lbl_80352E74
/* 80352E68 0034FDA8  80 1D 00 70 */	lwz r0, 0x70(r29)
/* 80352E6C 0034FDAC  7C 1C 00 40 */	cmplw r28, r0
/* 80352E70 0034FDB0  41 82 00 0C */	beq lbl_80352E7C
lbl_80352E74:
/* 80352E74 0034FDB4  7F A3 EB 78 */	mr r3, r29
/* 80352E78 0034FDB8  4B FF F0 D5 */	bl changeCamModeSpecifyCamMapTool___15CPolarSubCameraFPC14TCameraMapTool
lbl_80352E7C:
/* 80352E7C 0034FDBC  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 80352E80 0034FDC0  90 1E 00 00 */	stw r0, 0(r30)
/* 80352E84 0034FDC4  48 00 00 10 */	b lbl_80352E94
lbl_80352E88:
/* 80352E88 0034FDC8  7F E4 FB 78 */	mr r4, r31
/* 80352E8C 0034FDCC  48 00 C8 B5 */	bl getDataNo__16TCubeManagerBaseCFl
/* 80352E90 0034FDD0  90 7E 00 00 */	stw r3, 0(r30)
lbl_80352E94:
/* 80352E94 0034FDD4  38 60 00 01 */	li r3, 1
/* 80352E98 0034FDD8  48 00 00 14 */	b lbl_80352EAC
lbl_80352E9C:
/* 80352E9C 0034FDDC  3B FF 00 01 */	addi r31, r31, 1
lbl_80352EA0:
/* 80352EA0 0034FDE0  7C 1F D8 00 */	cmpw r31, r27
/* 80352EA4 0034FDE4  41 80 FF 74 */	blt lbl_80352E18
lbl_80352EA8:
/* 80352EA8 0034FDE8  7F 83 E3 78 */	mr r3, r28
lbl_80352EAC:
/* 80352EAC 0034FDEC  BB 61 00 64 */	lmw r27, 0x64(r1)
/* 80352EB0 0034FDF0  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80352EB4 0034FDF4  38 21 00 78 */	addi r1, r1, 0x78
/* 80352EB8 0034FDF8  7C 08 03 A6 */	mtlr r0
/* 80352EBC 0034FDFC  4E 80 00 20 */	blr 

.section .sdata2, "a"  # 0x8040B460 - 0x80414020
.balign 8
"@1717":
	.incbin "baserom.dol", 0x3EC198, 0x8
