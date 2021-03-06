# Mario Party (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "globals.inc"
.include "macros.inc"

glabel func_80061540
/* 062140 80061540 00C01021 */  addu  $v0, $a2, $zero
/* 062144 80061544 1040003A */  beqz  $v0, .L80061630
/* 062148 80061548 24C6FFFF */   addiu $a2, $a2, -1
/* 06214C 8006154C 240900DE */  li    $t1, 222
/* 062150 80061550 240800DF */  li    $t0, 223
.L80061554:
/* 062154 80061554 90870000 */  lbu   $a3, ($a0)
/* 062158 80061558 18C0001D */  blez  $a2, .L800615D0
/* 06215C 8006155C 24840001 */   addiu $a0, $a0, 1
/* 062160 80061560 90830000 */  lbu   $v1, ($a0)
/* 062164 80061564 306200FF */  andi  $v0, $v1, 0xff
/* 062168 80061568 1449000D */  bne   $v0, $t1, .L800615A0
/* 06216C 8006156C 00000000 */   nop   
/* 062170 80061570 24E2004A */  addiu $v0, $a3, 0x4a
/* 062174 80061574 304200FF */  andi  $v0, $v0, 0xff
/* 062178 80061578 2C42000F */  sltiu $v0, $v0, 0xf
/* 06217C 8006157C 1440000F */  bnez  $v0, .L800615BC
/* 062180 80061580 24E200C6 */   addiu $v0, $a3, 0xc6
/* 062184 80061584 24E20036 */  addiu $v0, $a3, 0x36
/* 062188 80061588 304200FF */  andi  $v0, $v0, 0xff
/* 06218C 8006158C 2C420005 */  sltiu $v0, $v0, 5
/* 062190 80061590 1040000F */  beqz  $v0, .L800615D0
/* 062194 80061594 24E200C1 */   addiu $v0, $a3, 0xc1
/* 062198 80061598 08018570 */  j     func_800615C0
/* 06219C 8006159C A0A20000 */   sb    $v0, ($a1)

.L800615A0:
/* 0621A0 800615A0 1448000C */  bne   $v0, $t0, .L800615D4
/* 0621A4 800615A4 24E2FFE0 */   addiu $v0, $a3, -0x20
/* 0621A8 800615A8 24E20036 */  addiu $v0, $a3, 0x36
/* 0621AC 800615AC 304200FF */  andi  $v0, $v0, 0xff
/* 0621B0 800615B0 2C420005 */  sltiu $v0, $v0, 5
/* 0621B4 800615B4 10400006 */  beqz  $v0, .L800615D0
/* 0621B8 800615B8 24E200C6 */   addiu $v0, $a3, 0xc6
.L800615BC:
/* 0621BC 800615BC A0A20000 */  sb    $v0, ($a1)
glabel func_800615C0
/* 0621C0 800615C0 24A50001 */  addiu $a1, $a1, 1
/* 0621C4 800615C4 24C6FFFF */  addiu $a2, $a2, -1
/* 0621C8 800615C8 08018589 */  j     func_80061624
/* 0621CC 800615CC 24840001 */   addiu $a0, $a0, 1

.L800615D0:
/* 0621D0 800615D0 24E2FFE0 */  addiu $v0, $a3, -0x20
.L800615D4:
/* 0621D4 800615D4 2C42003B */  sltiu $v0, $v0, 0x3b
/* 0621D8 800615D8 10400006 */  beqz  $v0, .L800615F4
/* 0621DC 800615DC 30E200FF */   andi  $v0, $a3, 0xff
/* 0621E0 800615E0 3C01800C */  lui   $at, 0x800c
/* 0621E4 800615E4 00220821 */  addu  $at, $at, $v0
/* 0621E8 800615E8 90225A50 */  lbu   $v0, 0x5a50($at)
/* 0621EC 800615EC 08018588 */  j     func_80061620
/* 0621F0 800615F0 A0A20000 */   sb    $v0, ($a1)

.L800615F4:
/* 0621F4 800615F4 24E2005F */  addiu $v0, $a3, 0x5f
/* 0621F8 800615F8 304200FF */  andi  $v0, $v0, 0xff
/* 0621FC 800615FC 2C42003F */  sltiu $v0, $v0, 0x3f
/* 062200 80061600 10400006 */  beqz  $v0, .L8006161C
/* 062204 80061604 30E200FF */   andi  $v0, $a3, 0xff
/* 062208 80061608 3C01800C */  lui   $at, 0x800c
/* 06220C 8006160C 00220821 */  addu  $at, $at, $v0
/* 062210 80061610 90225A0B */  lbu   $v0, 0x5a0b($at)
/* 062214 80061614 08018588 */  j     func_80061620
/* 062218 80061618 A0A20000 */   sb    $v0, ($a1)

.L8006161C:
/* 06221C 8006161C A0A00000 */  sb    $zero, ($a1)
glabel func_80061620
/* 062220 80061620 24A50001 */  addiu $a1, $a1, 1
glabel func_80061624
/* 062224 80061624 00C01021 */  addu  $v0, $a2, $zero
/* 062228 80061628 1440FFCA */  bnez  $v0, .L80061554
/* 06222C 8006162C 24C6FFFF */   addiu $a2, $a2, -1
.L80061630:
/* 062230 80061630 03E00008 */  jr    $ra
/* 062234 80061634 00000000 */   nop   

glabel func_80061638
/* 062238 80061638 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 06223C 8006163C AFBF0020 */  sw    $ra, 0x20($sp)
/* 062240 80061640 AFB3001C */  sw    $s3, 0x1c($sp)
/* 062244 80061644 AFB20018 */  sw    $s2, 0x18($sp)
/* 062248 80061648 AFB10014 */  sw    $s1, 0x14($sp)
/* 06224C 8006164C AFB00010 */  sw    $s0, 0x10($sp)
/* 062250 80061650 00808821 */  addu  $s1, $a0, $zero
/* 062254 80061654 00A09021 */  addu  $s2, $a1, $zero
/* 062258 80061658 00C09821 */  addu  $s3, $a2, $zero
/* 06225C 8006165C 02402021 */  addu  $a0, $s2, $zero
/* 062260 80061660 0C0230D8 */  jal   bzero
/* 062264 80061664 24050010 */   li    $a1, 16
/* 062268 80061668 02602021 */  addu  $a0, $s3, $zero
/* 06226C 8006166C 0C0230D8 */  jal   bzero
/* 062270 80061670 24050004 */   li    $a1, 4
/* 062274 80061674 02208021 */  addu  $s0, $s1, $zero
/* 062278 80061678 92220000 */  lbu   $v0, ($s1)
/* 06227C 8006167C 080185A3 */  j     func_8006168C
/* 062280 80061680 00003021 */   addu  $a2, $zero, $zero

.L80061684:
/* 062284 80061684 24C60001 */  addiu $a2, $a2, 1
/* 062288 80061688 92020000 */  lbu   $v0, ($s0)
glabel func_8006168C
/* 06228C 8006168C 2C430001 */  sltiu $v1, $v0, 1
/* 062290 80061690 3842002E */  xori  $v0, $v0, 0x2e
/* 062294 80061694 2C420001 */  sltiu $v0, $v0, 1
/* 062298 80061698 00621825 */  or    $v1, $v1, $v0
/* 06229C 8006169C 5060FFF9 */  beql  $v1, $zero, .L80061684
/* 0622A0 800616A0 26100001 */   addiu $s0, $s0, 1
/* 0622A4 800616A4 00063400 */  sll   $a2, $a2, 0x10
/* 0622A8 800616A8 02202021 */  addu  $a0, $s1, $zero
/* 0622AC 800616AC 02402821 */  addu  $a1, $s2, $zero
/* 0622B0 800616B0 0C018550 */  jal   func_80061540
/* 0622B4 800616B4 00063403 */   sra   $a2, $a2, 0x10
/* 0622B8 800616B8 92020000 */  lbu   $v0, ($s0)
/* 0622BC 800616BC 1040000E */  beqz  $v0, .L800616F8
/* 0622C0 800616C0 26110001 */   addiu $s1, $s0, 1
/* 0622C4 800616C4 02208021 */  addu  $s0, $s1, $zero
/* 0622C8 800616C8 92220000 */  lbu   $v0, ($s1)
/* 0622CC 800616CC 10400005 */  beqz  $v0, .L800616E4
/* 0622D0 800616D0 00003021 */   addu  $a2, $zero, $zero
.L800616D4:
/* 0622D4 800616D4 26100001 */  addiu $s0, $s0, 1
/* 0622D8 800616D8 92020000 */  lbu   $v0, ($s0)
/* 0622DC 800616DC 1440FFFD */  bnez  $v0, .L800616D4
/* 0622E0 800616E0 24C60001 */   addiu $a2, $a2, 1
.L800616E4:
/* 0622E4 800616E4 00063400 */  sll   $a2, $a2, 0x10
/* 0622E8 800616E8 02202021 */  addu  $a0, $s1, $zero
/* 0622EC 800616EC 02602821 */  addu  $a1, $s3, $zero
/* 0622F0 800616F0 0C018550 */  jal   func_80061540
/* 0622F4 800616F4 00063403 */   sra   $a2, $a2, 0x10
.L800616F8:
/* 0622F8 800616F8 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0622FC 800616FC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 062300 80061700 8FB20018 */  lw    $s2, 0x18($sp)
/* 062304 80061704 8FB10014 */  lw    $s1, 0x14($sp)
/* 062308 80061708 8FB00010 */  lw    $s0, 0x10($sp)
/* 06230C 8006170C 03E00008 */  jr    $ra
/* 062310 80061710 27BD0028 */   addiu $sp, $sp, 0x28

D_80061714:
/* 062314 80061714 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 062318 80061718 AFBF0018 */  sw    $ra, 0x18($sp)
/* 06231C 8006171C A7A00010 */  sh    $zero, 0x10($sp)
.L80061720:
/* 062320 80061720 0C0185E1 */  jal   func_80061784
/* 062324 80061724 27A40010 */   addiu $a0, $sp, 0x10
/* 062328 80061728 97A20010 */  lhu   $v0, 0x10($sp)
/* 06232C 8006172C 24420001 */  addiu $v0, $v0, 1
/* 062330 80061730 A7A20010 */  sh    $v0, 0x10($sp)
/* 062334 80061734 00021400 */  sll   $v0, $v0, 0x10
/* 062338 80061738 00021403 */  sra   $v0, $v0, 0x10
/* 06233C 8006173C 28420004 */  slti  $v0, $v0, 4
/* 062340 80061740 1440FFF7 */  bnez  $v0, .L80061720
/* 062344 80061744 00000000 */   nop   
/* 062348 80061748 8FBF0018 */  lw    $ra, 0x18($sp)
/* 06234C 8006174C 00001021 */  addu  $v0, $zero, $zero
/* 062350 80061750 03E00008 */  jr    $ra
/* 062354 80061754 27BD0020 */   addiu $sp, $sp, 0x20

/* 062358 80061758 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 06235C 8006175C AFBF0020 */  sw    $ra, 0x20($sp)
/* 062360 80061760 27A40010 */  addiu $a0, $sp, 0x10
/* 062364 80061764 3C058006 */  lui   $a1, %hi(D_80061714) # $a1, 0x8006
/* 062368 80061768 24A51714 */  addiu $a1, %lo(D_80061714) # addiu $a1, $a1, 0x1714
/* 06236C 8006176C 00003021 */  addu  $a2, $zero, $zero
/* 062370 80061770 0C0190BF */  jal   func_800642FC
/* 062374 80061774 24070001 */   li    $a3, 1
/* 062378 80061778 8FBF0020 */  lw    $ra, 0x20($sp)
/* 06237C 8006177C 03E00008 */  jr    $ra
/* 062380 80061780 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_80061784
/* 062384 80061784 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 062388 80061788 AFBF001C */  sw    $ra, 0x1c($sp)
/* 06238C 8006178C AFB00018 */  sw    $s0, 0x18($sp)
/* 062390 80061790 00808021 */  addu  $s0, $a0, $zero
/* 062394 80061794 3C04800F */  lui   $a0, %hi(D_800EE960) # $a0, 0x800f
/* 062398 80061798 2484E960 */  addiu $a0, %lo(D_800EE960) # addiu $a0, $a0, -0x16a0
/* 06239C 8006179C 0C022E9C */  jal   func_8008BA70
/* 0623A0 800617A0 27A50010 */   addiu $a1, $sp, 0x10
/* 0623A4 800617A4 54400001 */  bnezl $v0, .L800617AC
/* 0623A8 800617A8 A3A00010 */   sb    $zero, 0x10($sp)
.L800617AC:
/* 0623AC 800617AC 93A20010 */  lbu   $v0, 0x10($sp)
/* 0623B0 800617B0 86060000 */  lh    $a2, ($s0)
/* 0623B4 800617B4 00C21007 */  srav  $v0, $v0, $a2
/* 0623B8 800617B8 30420001 */  andi  $v0, $v0, 1
/* 0623BC 800617BC 1040000D */  beqz  $v0, .L800617F4
/* 0623C0 800617C0 00062840 */   sll   $a1, $a2, 1
/* 0623C4 800617C4 00A62821 */  addu  $a1, $a1, $a2
/* 0623C8 800617C8 00052880 */  sll   $a1, $a1, 2
/* 0623CC 800617CC 00A62821 */  addu  $a1, $a1, $a2
/* 0623D0 800617D0 000528C0 */  sll   $a1, $a1, 3
/* 0623D4 800617D4 3C02800E */  lui   $v0, %hi(D_800D90D0) # $v0, 0x800e
/* 0623D8 800617D8 244290D0 */  addiu $v0, %lo(D_800D90D0) # addiu $v0, $v0, -0x6f30
/* 0623DC 800617DC 3C04800F */  lui   $a0, %hi(D_800EE960) # $a0, 0x800f
/* 0623E0 800617E0 2484E960 */  addiu $a0, %lo(D_800EE960) # addiu $a0, $a0, -0x16a0
/* 0623E4 800617E4 0C02448C */  jal   func_80091230
/* 0623E8 800617E8 00A22821 */   addu  $a1, $a1, $v0
/* 0623EC 800617EC 080185FE */  j     func_800617F8
/* 0623F0 800617F0 00000000 */   nop   

.L800617F4:
/* 0623F4 800617F4 24020001 */  li    $v0, 1
glabel func_800617F8
/* 0623F8 800617F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0623FC 800617FC 8FB00018 */  lw    $s0, 0x18($sp)
/* 062400 80061800 03E00008 */  jr    $ra
/* 062404 80061804 27BD0020 */   addiu $sp, $sp, 0x20

/* 062408 80061808 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 06240C 8006180C AFBF0028 */  sw    $ra, 0x28($sp)
/* 062410 80061810 A7A40020 */  sh    $a0, 0x20($sp)
/* 062414 80061814 27A40010 */  addiu $a0, $sp, 0x10
/* 062418 80061818 3C058006 */  lui   $a1, %hi(func_80061784) # $a1, 0x8006
/* 06241C 8006181C 24A51784 */  addiu $a1, %lo(func_80061784) # addiu $a1, $a1, 0x1784
/* 062420 80061820 27A60020 */  addiu $a2, $sp, 0x20
/* 062424 80061824 0C0190BF */  jal   func_800642FC
/* 062428 80061828 24070002 */   li    $a3, 2
/* 06242C 8006182C 8FBF0028 */  lw    $ra, 0x28($sp)
/* 062430 80061830 03E00008 */  jr    $ra
/* 062434 80061834 27BD0030 */   addiu $sp, $sp, 0x30

D_80061838:
/* 062438 80061838 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06243C 8006183C AFBF0010 */  sw    $ra, 0x10($sp)
/* 062440 80061840 84820000 */  lh    $v0, ($a0)
/* 062444 80061844 00022040 */  sll   $a0, $v0, 1
/* 062448 80061848 00822021 */  addu  $a0, $a0, $v0
/* 06244C 8006184C 00042080 */  sll   $a0, $a0, 2
/* 062450 80061850 00822021 */  addu  $a0, $a0, $v0
/* 062454 80061854 000420C0 */  sll   $a0, $a0, 3
/* 062458 80061858 3C02800E */  lui   $v0, %hi(D_800D90D0) # $v0, 0x800e
/* 06245C 8006185C 244290D0 */  addiu $v0, %lo(D_800D90D0) # addiu $v0, $v0, -0x6f30
/* 062460 80061860 0C024690 */  jal   func_80091A40
/* 062464 80061864 00822021 */   addu  $a0, $a0, $v0
/* 062468 80061868 8FBF0010 */  lw    $ra, 0x10($sp)
/* 06246C 8006186C 03E00008 */  jr    $ra
/* 062470 80061870 27BD0018 */   addiu $sp, $sp, 0x18

/* 062474 80061874 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 062478 80061878 AFBF0028 */  sw    $ra, 0x28($sp)
/* 06247C 8006187C A7A40020 */  sh    $a0, 0x20($sp)
/* 062480 80061880 27A40010 */  addiu $a0, $sp, 0x10
/* 062484 80061884 3C058006 */  lui   $a1, %hi(D_80061838) # $a1, 0x8006
/* 062488 80061888 24A51838 */  addiu $a1, %lo(D_80061838) # addiu $a1, $a1, 0x1838
/* 06248C 8006188C 27A60020 */  addiu $a2, $sp, 0x20
/* 062490 80061890 0C0190BF */  jal   func_800642FC
/* 062494 80061894 24070002 */   li    $a3, 2
/* 062498 80061898 8FBF0028 */  lw    $ra, 0x28($sp)
/* 06249C 8006189C 03E00008 */  jr    $ra
/* 0624A0 800618A0 27BD0030 */   addiu $sp, $sp, 0x30

D_800618A4:
/* 0624A4 800618A4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0624A8 800618A8 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0624AC 800618AC AFB10014 */  sw    $s1, 0x14($sp)
/* 0624B0 800618B0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0624B4 800618B4 00808021 */  addu  $s0, $a0, $zero
/* 0624B8 800618B8 AE000008 */  sw    $zero, 8($s0)
/* 0624BC 800618BC AE000004 */  sw    $zero, 4($s0)
/* 0624C0 800618C0 86020000 */  lh    $v0, ($s0)
/* 0624C4 800618C4 00022040 */  sll   $a0, $v0, 1
/* 0624C8 800618C8 00822021 */  addu  $a0, $a0, $v0
/* 0624CC 800618CC 00042080 */  sll   $a0, $a0, 2
/* 0624D0 800618D0 00822021 */  addu  $a0, $a0, $v0
/* 0624D4 800618D4 000420C0 */  sll   $a0, $a0, 3
/* 0624D8 800618D8 3C11800E */  lui   $s1, %hi(D_800D90D0) # $s1, 0x800e
/* 0624DC 800618DC 263190D0 */  addiu $s1, %lo(D_800D90D0) # addiu $s1, $s1, -0x6f30
/* 0624E0 800618E0 00912021 */  addu  $a0, $a0, $s1
/* 0624E4 800618E4 26050004 */  addiu $a1, $s0, 4
/* 0624E8 800618E8 0C024540 */  jal   func_80091500
/* 0624EC 800618EC 26060008 */   addiu $a2, $s0, 8
/* 0624F0 800618F0 1440000A */  bnez  $v0, .L8006191C
/* 0624F4 800618F4 00000000 */   nop   
/* 0624F8 800618F8 86020000 */  lh    $v0, ($s0)
/* 0624FC 800618FC 00022040 */  sll   $a0, $v0, 1
/* 062500 80061900 00822021 */  addu  $a0, $a0, $v0
/* 062504 80061904 00042080 */  sll   $a0, $a0, 2
/* 062508 80061908 00822021 */  addu  $a0, $a0, $v0
/* 06250C 8006190C 000420C0 */  sll   $a0, $a0, 3
/* 062510 80061910 00912021 */  addu  $a0, $a0, $s1
/* 062514 80061914 0C024448 */  jal   func_80091120
/* 062518 80061918 2605000C */   addiu $a1, $s0, 0xc
.L8006191C:
/* 06251C 8006191C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 062520 80061920 8FB10014 */  lw    $s1, 0x14($sp)
/* 062524 80061924 8FB00010 */  lw    $s0, 0x10($sp)
/* 062528 80061928 03E00008 */  jr    $ra
/* 06252C 8006192C 27BD0020 */   addiu $sp, $sp, 0x20

/* 062530 80061930 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 062534 80061934 AFBF003C */  sw    $ra, 0x3c($sp)
/* 062538 80061938 AFB20038 */  sw    $s2, 0x38($sp)
/* 06253C 8006193C AFB10034 */  sw    $s1, 0x34($sp)
/* 062540 80061940 AFB00030 */  sw    $s0, 0x30($sp)
/* 062544 80061944 00A08021 */  addu  $s0, $a1, $zero
/* 062548 80061948 00C08821 */  addu  $s1, $a2, $zero
/* 06254C 8006194C 00E09021 */  addu  $s2, $a3, $zero
/* 062550 80061950 A7A40020 */  sh    $a0, 0x20($sp)
/* 062554 80061954 27A40010 */  addiu $a0, $sp, 0x10
/* 062558 80061958 3C058006 */  lui   $a1, %hi(D_800618A4) # $a1, 0x8006
/* 06255C 8006195C 24A518A4 */  addiu $a1, %lo(D_800618A4) # addiu $a1, $a1, 0x18a4
/* 062560 80061960 27A60020 */  addiu $a2, $sp, 0x20
/* 062564 80061964 0C0190BF */  jal   func_800642FC
/* 062568 80061968 24070002 */   li    $a3, 2
/* 06256C 8006196C 8FA20024 */  lw    $v0, 0x24($sp)
/* 062570 80061970 AE020000 */  sw    $v0, ($s0)
/* 062574 80061974 8FA20028 */  lw    $v0, 0x28($sp)
/* 062578 80061978 AE220000 */  sw    $v0, ($s1)
/* 06257C 8006197C 8FA2002C */  lw    $v0, 0x2c($sp)
/* 062580 80061980 AE420000 */  sw    $v0, ($s2)
/* 062584 80061984 8FA20018 */  lw    $v0, 0x18($sp)
/* 062588 80061988 8FBF003C */  lw    $ra, 0x3c($sp)
/* 06258C 8006198C 8FB20038 */  lw    $s2, 0x38($sp)
/* 062590 80061990 8FB10034 */  lw    $s1, 0x34($sp)
/* 062594 80061994 8FB00030 */  lw    $s0, 0x30($sp)
/* 062598 80061998 03E00008 */  jr    $ra
/* 06259C 8006199C 27BD0040 */   addiu $sp, $sp, 0x40

D_800619A0:
/* 0625A0 800619A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0625A4 800619A4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0625A8 800619A8 00803021 */  addu  $a2, $a0, $zero
/* 0625AC 800619AC 84C20000 */  lh    $v0, ($a2)
/* 0625B0 800619B0 00022040 */  sll   $a0, $v0, 1
/* 0625B4 800619B4 00822021 */  addu  $a0, $a0, $v0
/* 0625B8 800619B8 00042080 */  sll   $a0, $a0, 2
/* 0625BC 800619BC 00822021 */  addu  $a0, $a0, $v0
/* 0625C0 800619C0 000420C0 */  sll   $a0, $a0, 3
/* 0625C4 800619C4 3C02800E */  lui   $v0, %hi(D_800D90D0) # $v0, 0x800e
/* 0625C8 800619C8 244290D0 */  addiu $v0, %lo(D_800D90D0) # addiu $v0, $v0, -0x6f30
/* 0625CC 800619CC 00822021 */  addu  $a0, $a0, $v0
/* 0625D0 800619D0 8CC50004 */  lw    $a1, 4($a2)
/* 0625D4 800619D4 0C0243E4 */  jal   func_80090F90
/* 0625D8 800619D8 24C60008 */   addiu $a2, $a2, 8
/* 0625DC 800619DC 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0625E0 800619E0 03E00008 */  jr    $ra
/* 0625E4 800619E4 27BD0018 */   addiu $sp, $sp, 0x18

/* 0625E8 800619E8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0625EC 800619EC AFBF004C */  sw    $ra, 0x4c($sp)
/* 0625F0 800619F0 AFB00048 */  sw    $s0, 0x48($sp)
/* 0625F4 800619F4 00C08021 */  addu  $s0, $a2, $zero
/* 0625F8 800619F8 A7A40020 */  sh    $a0, 0x20($sp)
/* 0625FC 800619FC AFA50024 */  sw    $a1, 0x24($sp)
/* 062600 80061A00 27A40010 */  addiu $a0, $sp, 0x10
/* 062604 80061A04 3C058006 */  lui   $a1, %hi(D_800619A0) # $a1, 0x8006
/* 062608 80061A08 24A519A0 */  addiu $a1, %lo(D_800619A0) # addiu $a1, $a1, 0x19a0
/* 06260C 80061A0C 27A60020 */  addiu $a2, $sp, 0x20
/* 062610 80061A10 0C0190BF */  jal   func_800642FC
/* 062614 80061A14 24070002 */   li    $a3, 2
/* 062618 80061A18 27A40028 */  addiu $a0, $sp, 0x28
/* 06261C 80061A1C 02002821 */  addu  $a1, $s0, $zero
/* 062620 80061A20 0C023010 */  jal   bcopy
/* 062624 80061A24 24060020 */   li    $a2, 32
/* 062628 80061A28 8FA20018 */  lw    $v0, 0x18($sp)
/* 06262C 80061A2C 8FBF004C */  lw    $ra, 0x4c($sp)
/* 062630 80061A30 8FB00048 */  lw    $s0, 0x48($sp)
/* 062634 80061A34 03E00008 */  jr    $ra
/* 062638 80061A38 27BD0050 */   addiu $sp, $sp, 0x50

D_80061A3C:
/* 06263C 80061A3C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 062640 80061A40 AFBF0018 */  sw    $ra, 0x18($sp)
/* 062644 80061A44 00801821 */  addu  $v1, $a0, $zero
/* 062648 80061A48 84620000 */  lh    $v0, ($v1)
/* 06264C 80061A4C 00022040 */  sll   $a0, $v0, 1
/* 062650 80061A50 00822021 */  addu  $a0, $a0, $v0
/* 062654 80061A54 00042080 */  sll   $a0, $a0, 2
/* 062658 80061A58 00822021 */  addu  $a0, $a0, $v0
/* 06265C 80061A5C 000420C0 */  sll   $a0, $a0, 3
/* 062660 80061A60 3C06800E */  lui   $a2, %hi(D_800D90D0) # $a2, 0x800e
/* 062664 80061A64 24C690D0 */  addiu $a2, %lo(D_800D90D0) # addiu $a2, $a2, -0x6f30
/* 062668 80061A68 94650002 */  lhu   $a1, 2($v1)
/* 06266C 80061A6C 8C62000C */  lw    $v0, 0xc($v1)
/* 062670 80061A70 AFA20010 */  sw    $v0, 0x10($sp)
/* 062674 80061A74 24620010 */  addiu $v0, $v1, 0x10
/* 062678 80061A78 AFA20014 */  sw    $v0, 0x14($sp)
/* 06267C 80061A7C 00862021 */  addu  $a0, $a0, $a2
/* 062680 80061A80 8C660004 */  lw    $a2, 4($v1)
/* 062684 80061A84 0C0246A8 */  jal   func_80091AA0
/* 062688 80061A88 8C670008 */   lw    $a3, 8($v1)
/* 06268C 80061A8C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 062690 80061A90 03E00008 */  jr    $ra
/* 062694 80061A94 27BD0020 */   addiu $sp, $sp, 0x20

/* 062698 80061A98 27BDFF90 */  addiu $sp, $sp, -0x70
/* 06269C 80061A9C AFBF0068 */  sw    $ra, 0x68($sp)
/* 0626A0 80061AA0 AFB50064 */  sw    $s5, 0x64($sp)
/* 0626A4 80061AA4 AFB40060 */  sw    $s4, 0x60($sp)
/* 0626A8 80061AA8 AFB3005C */  sw    $s3, 0x5c($sp)
/* 0626AC 80061AAC AFB20058 */  sw    $s2, 0x58($sp)
/* 0626B0 80061AB0 AFB10054 */  sw    $s1, 0x54($sp)
/* 0626B4 80061AB4 AFB00050 */  sw    $s0, 0x50($sp)
/* 0626B8 80061AB8 00C0A021 */  addu  $s4, $a2, $zero
/* 0626BC 80061ABC 8FB50080 */  lw    $s5, 0x80($sp)
/* 0626C0 80061AC0 00809021 */  addu  $s2, $a0, $zero
/* 0626C4 80061AC4 00A09821 */  addu  $s3, $a1, $zero
/* 0626C8 80061AC8 27B00038 */  addiu $s0, $sp, 0x38
/* 0626CC 80061ACC 27B10048 */  addiu $s1, $sp, 0x48
/* 0626D0 80061AD0 00E02021 */  addu  $a0, $a3, $zero
/* 0626D4 80061AD4 02002821 */  addu  $a1, $s0, $zero
/* 0626D8 80061AD8 0C01858E */  jal   func_80061638
/* 0626DC 80061ADC 02203021 */   addu  $a2, $s1, $zero
/* 0626E0 80061AE0 A7B20020 */  sh    $s2, 0x20($sp)
/* 0626E4 80061AE4 A7B30022 */  sh    $s3, 0x22($sp)
/* 0626E8 80061AE8 AFB40024 */  sw    $s4, 0x24($sp)
/* 0626EC 80061AEC AFB00028 */  sw    $s0, 0x28($sp)
/* 0626F0 80061AF0 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0626F4 80061AF4 27A40010 */  addiu $a0, $sp, 0x10
/* 0626F8 80061AF8 3C058006 */  lui   $a1, %hi(D_80061A3C) # $a1, 0x8006
/* 0626FC 80061AFC 24A51A3C */  addiu $a1, %lo(D_80061A3C) # addiu $a1, $a1, 0x1a3c
/* 062700 80061B00 27A60020 */  addiu $a2, $sp, 0x20
/* 062704 80061B04 0C0190BF */  jal   func_800642FC
/* 062708 80061B08 24070002 */   li    $a3, 2
/* 06270C 80061B0C 8FA20030 */  lw    $v0, 0x30($sp)
/* 062710 80061B10 AEA20000 */  sw    $v0, ($s5)
/* 062714 80061B14 8FA20018 */  lw    $v0, 0x18($sp)
/* 062718 80061B18 8FBF0068 */  lw    $ra, 0x68($sp)
/* 06271C 80061B1C 8FB50064 */  lw    $s5, 0x64($sp)
/* 062720 80061B20 8FB40060 */  lw    $s4, 0x60($sp)
/* 062724 80061B24 8FB3005C */  lw    $s3, 0x5c($sp)
/* 062728 80061B28 8FB20058 */  lw    $s2, 0x58($sp)
/* 06272C 80061B2C 8FB10054 */  lw    $s1, 0x54($sp)
/* 062730 80061B30 8FB00050 */  lw    $s0, 0x50($sp)
/* 062734 80061B34 03E00008 */  jr    $ra
/* 062738 80061B38 27BD0070 */   addiu $sp, $sp, 0x70

D_80061B3C:
/* 06273C 80061B3C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 062740 80061B40 AFBF003C */  sw    $ra, 0x3c($sp)
/* 062744 80061B44 AFB00038 */  sw    $s0, 0x38($sp)
/* 062748 80061B48 00808021 */  addu  $s0, $a0, $zero
/* 06274C 80061B4C 86020000 */  lh    $v0, ($s0)
/* 062750 80061B50 00022040 */  sll   $a0, $v0, 1
/* 062754 80061B54 00822021 */  addu  $a0, $a0, $v0
/* 062758 80061B58 00042080 */  sll   $a0, $a0, 2
/* 06275C 80061B5C 00822021 */  addu  $a0, $a0, $v0
/* 062760 80061B60 000420C0 */  sll   $a0, $a0, 3
/* 062764 80061B64 3C03800E */  lui   $v1, %hi(D_800D90D0) # $v1, 0x800e
/* 062768 80061B68 246390D0 */  addiu $v1, %lo(D_800D90D0) # addiu $v1, $v1, -0x6f30
/* 06276C 80061B6C 96050002 */  lhu   $a1, 2($s0)
/* 062770 80061B70 8E02000C */  lw    $v0, 0xc($s0)
/* 062774 80061B74 AFA20010 */  sw    $v0, 0x10($sp)
/* 062778 80061B78 86020010 */  lh    $v0, 0x10($s0)
/* 06277C 80061B7C AFA20014 */  sw    $v0, 0x14($sp)
/* 062780 80061B80 26020014 */  addiu $v0, $s0, 0x14
/* 062784 80061B84 AFA20018 */  sw    $v0, 0x18($sp)
/* 062788 80061B88 8E060004 */  lw    $a2, 4($s0)
/* 06278C 80061B8C 8E070008 */  lw    $a3, 8($s0)
/* 062790 80061B90 0C024250 */  jal   func_80090940
/* 062794 80061B94 00832021 */   addu  $a0, $a0, $v1
/* 062798 80061B98 00401821 */  addu  $v1, $v0, $zero
/* 06279C 80061B9C 24020009 */  li    $v0, 9
/* 0627A0 80061BA0 14620013 */  bne   $v1, $v0, .L80061BF0
/* 0627A4 80061BA4 00601021 */   addu  $v0, $v1, $zero
/* 0627A8 80061BA8 96020000 */  lhu   $v0, ($s0)
/* 0627AC 80061BAC A7A20020 */  sh    $v0, 0x20($sp)
/* 0627B0 80061BB0 96020002 */  lhu   $v0, 2($s0)
/* 0627B4 80061BB4 A7A20022 */  sh    $v0, 0x22($sp)
/* 0627B8 80061BB8 8E020004 */  lw    $v0, 4($s0)
/* 0627BC 80061BBC AFA20024 */  sw    $v0, 0x24($sp)
/* 0627C0 80061BC0 8E020008 */  lw    $v0, 8($s0)
/* 0627C4 80061BC4 AFA20028 */  sw    $v0, 0x28($sp)
/* 0627C8 80061BC8 8E02000C */  lw    $v0, 0xc($s0)
/* 0627CC 80061BCC AFA2002C */  sw    $v0, 0x2c($sp)
/* 0627D0 80061BD0 0C01868F */  jal   D_80061A3C
/* 0627D4 80061BD4 27A40020 */   addiu $a0, $sp, 0x20
/* 0627D8 80061BD8 00401821 */  addu  $v1, $v0, $zero
/* 0627DC 80061BDC 14600004 */  bnez  $v1, .L80061BF0
/* 0627E0 80061BE0 00601021 */   addu  $v0, $v1, $zero
/* 0627E4 80061BE4 8FA20030 */  lw    $v0, 0x30($sp)
/* 0627E8 80061BE8 AE020014 */  sw    $v0, 0x14($s0)
/* 0627EC 80061BEC 00601021 */  addu  $v0, $v1, $zero
.L80061BF0:
/* 0627F0 80061BF0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0627F4 80061BF4 8FB00038 */  lw    $s0, 0x38($sp)
/* 0627F8 80061BF8 03E00008 */  jr    $ra
/* 0627FC 80061BFC 27BD0040 */   addiu $sp, $sp, 0x40

/* 062800 80061C00 27BDFF90 */  addiu $sp, $sp, -0x70
/* 062804 80061C04 AFBF006C */  sw    $ra, 0x6c($sp)
/* 062808 80061C08 AFB60068 */  sw    $s6, 0x68($sp)
/* 06280C 80061C0C AFB50064 */  sw    $s5, 0x64($sp)
/* 062810 80061C10 AFB40060 */  sw    $s4, 0x60($sp)
/* 062814 80061C14 AFB3005C */  sw    $s3, 0x5c($sp)
/* 062818 80061C18 AFB20058 */  sw    $s2, 0x58($sp)
/* 06281C 80061C1C AFB10054 */  sw    $s1, 0x54($sp)
/* 062820 80061C20 AFB00050 */  sw    $s0, 0x50($sp)
/* 062824 80061C24 00C0A021 */  addu  $s4, $a2, $zero
/* 062828 80061C28 8FB50080 */  lw    $s5, 0x80($sp)
/* 06282C 80061C2C 8FB60084 */  lw    $s6, 0x84($sp)
/* 062830 80061C30 00809021 */  addu  $s2, $a0, $zero
/* 062834 80061C34 00A09821 */  addu  $s3, $a1, $zero
/* 062838 80061C38 27B00038 */  addiu $s0, $sp, 0x38
/* 06283C 80061C3C 27B10048 */  addiu $s1, $sp, 0x48
/* 062840 80061C40 00E02021 */  addu  $a0, $a3, $zero
/* 062844 80061C44 02002821 */  addu  $a1, $s0, $zero
/* 062848 80061C48 0C01858E */  jal   func_80061638
/* 06284C 80061C4C 02203021 */   addu  $a2, $s1, $zero
/* 062850 80061C50 A7B20020 */  sh    $s2, 0x20($sp)
/* 062854 80061C54 A7B30022 */  sh    $s3, 0x22($sp)
/* 062858 80061C58 AFB40024 */  sw    $s4, 0x24($sp)
/* 06285C 80061C5C AFB00028 */  sw    $s0, 0x28($sp)
/* 062860 80061C60 AFB1002C */  sw    $s1, 0x2c($sp)
/* 062864 80061C64 A7B50030 */  sh    $s5, 0x30($sp)
/* 062868 80061C68 27A40010 */  addiu $a0, $sp, 0x10
/* 06286C 80061C6C 3C058006 */  lui   $a1, %hi(D_80061B3C) # $a1, 0x8006
/* 062870 80061C70 24A51B3C */  addiu $a1, %lo(D_80061B3C) # addiu $a1, $a1, 0x1b3c
/* 062874 80061C74 27A60020 */  addiu $a2, $sp, 0x20
/* 062878 80061C78 0C0190BF */  jal   func_800642FC
/* 06287C 80061C7C 24070002 */   li    $a3, 2
/* 062880 80061C80 8FA20034 */  lw    $v0, 0x34($sp)
/* 062884 80061C84 AEC20000 */  sw    $v0, ($s6)
/* 062888 80061C88 8FA20018 */  lw    $v0, 0x18($sp)
/* 06288C 80061C8C 8FBF006C */  lw    $ra, 0x6c($sp)
/* 062890 80061C90 8FB60068 */  lw    $s6, 0x68($sp)
/* 062894 80061C94 8FB50064 */  lw    $s5, 0x64($sp)
/* 062898 80061C98 8FB40060 */  lw    $s4, 0x60($sp)
/* 06289C 80061C9C 8FB3005C */  lw    $s3, 0x5c($sp)
/* 0628A0 80061CA0 8FB20058 */  lw    $s2, 0x58($sp)
/* 0628A4 80061CA4 8FB10054 */  lw    $s1, 0x54($sp)
/* 0628A8 80061CA8 8FB00050 */  lw    $s0, 0x50($sp)
/* 0628AC 80061CAC 03E00008 */  jr    $ra
/* 0628B0 80061CB0 27BD0070 */   addiu $sp, $sp, 0x70

D_80061CB4:
/* 0628B4 80061CB4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0628B8 80061CB8 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0628BC 80061CBC AFB00040 */  sw    $s0, 0x40($sp)
/* 0628C0 80061CC0 00808021 */  addu  $s0, $a0, $zero
/* 0628C4 80061CC4 96020000 */  lhu   $v0, ($s0)
/* 0628C8 80061CC8 A7A20018 */  sh    $v0, 0x18($sp)
/* 0628CC 80061CCC 8E020004 */  lw    $v0, 4($s0)
/* 0628D0 80061CD0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0628D4 80061CD4 0C018668 */  jal   D_800619A0
/* 0628D8 80061CD8 27A40018 */   addiu $a0, $sp, 0x18
/* 0628DC 80061CDC 14400010 */  bnez  $v0, .L80061D20
/* 0628E0 80061CE0 00000000 */   nop   
/* 0628E4 80061CE4 86020000 */  lh    $v0, ($s0)
/* 0628E8 80061CE8 00022040 */  sll   $a0, $v0, 1
/* 0628EC 80061CEC 00822021 */  addu  $a0, $a0, $v0
/* 0628F0 80061CF0 00042080 */  sll   $a0, $a0, 2
/* 0628F4 80061CF4 00822021 */  addu  $a0, $a0, $v0
/* 0628F8 80061CF8 000420C0 */  sll   $a0, $a0, 3
/* 0628FC 80061CFC 3C03800E */  lui   $v1, %hi(D_800D90D0) # $v1, 0x800e
/* 062900 80061D00 246390D0 */  addiu $v1, %lo(D_800D90D0) # addiu $v1, $v1, -0x6f30
/* 062904 80061D04 97A50028 */  lhu   $a1, 0x28($sp)
/* 062908 80061D08 27A2002A */  addiu $v0, $sp, 0x2a
/* 06290C 80061D0C AFA20010 */  sw    $v0, 0x10($sp)
/* 062910 80061D10 00832021 */  addu  $a0, $a0, $v1
/* 062914 80061D14 8FA60024 */  lw    $a2, 0x24($sp)
/* 062918 80061D18 0C02435C */  jal   func_80090D70
/* 06291C 80061D1C 27A7002E */   addiu $a3, $sp, 0x2e
.L80061D20:
/* 062920 80061D20 8FBF0044 */  lw    $ra, 0x44($sp)
/* 062924 80061D24 8FB00040 */  lw    $s0, 0x40($sp)
/* 062928 80061D28 03E00008 */  jr    $ra
/* 06292C 80061D2C 27BD0048 */   addiu $sp, $sp, 0x48

/* 062930 80061D30 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 062934 80061D34 AFBF0028 */  sw    $ra, 0x28($sp)
/* 062938 80061D38 A7A40020 */  sh    $a0, 0x20($sp)
/* 06293C 80061D3C AFA50024 */  sw    $a1, 0x24($sp)
/* 062940 80061D40 27A40010 */  addiu $a0, $sp, 0x10
/* 062944 80061D44 3C058006 */  lui   $a1, %hi(D_80061CB4) # $a1, 0x8006
/* 062948 80061D48 24A51CB4 */  addiu $a1, %lo(D_80061CB4) # addiu $a1, $a1, 0x1cb4
/* 06294C 80061D4C 27A60020 */  addiu $a2, $sp, 0x20
/* 062950 80061D50 0C0190BF */  jal   func_800642FC
/* 062954 80061D54 24070002 */   li    $a3, 2
/* 062958 80061D58 8FBF0028 */  lw    $ra, 0x28($sp)
/* 06295C 80061D5C 03E00008 */  jr    $ra
/* 062960 80061D60 27BD0030 */   addiu $sp, $sp, 0x30

D_80061D64:
/* 062964 80061D64 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 062968 80061D68 AFBF0018 */  sw    $ra, 0x18($sp)
/* 06296C 80061D6C 00802821 */  addu  $a1, $a0, $zero
/* 062970 80061D70 94A20008 */  lhu   $v0, 8($a1)
/* 062974 80061D74 244200FF */  addiu $v0, $v0, 0xff
/* 062978 80061D78 2403FF00 */  li    $v1, -256
/* 06297C 80061D7C 00431024 */  and   $v0, $v0, $v1
/* 062980 80061D80 84A30000 */  lh    $v1, ($a1)
/* 062984 80061D84 00032040 */  sll   $a0, $v1, 1
/* 062988 80061D88 00832021 */  addu  $a0, $a0, $v1
/* 06298C 80061D8C 00042080 */  sll   $a0, $a0, 2
/* 062990 80061D90 00832021 */  addu  $a0, $a0, $v1
/* 062994 80061D94 000420C0 */  sll   $a0, $a0, 3
/* 062998 80061D98 3C03800E */  lui   $v1, %hi(D_800D90D0) # $v1, 0x800e
/* 06299C 80061D9C 246390D0 */  addiu $v1, %lo(D_800D90D0) # addiu $v1, $v1, -0x6f30
/* 0629A0 80061DA0 00021400 */  sll   $v0, $v0, 0x10
/* 0629A4 80061DA4 00021403 */  sra   $v0, $v0, 0x10
/* 0629A8 80061DA8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0629AC 80061DAC 8CA2000C */  lw    $v0, 0xc($a1)
/* 0629B0 80061DB0 AFA20014 */  sw    $v0, 0x14($sp)
/* 0629B4 80061DB4 00832021 */  addu  $a0, $a0, $v1
/* 0629B8 80061DB8 8CA50004 */  lw    $a1, 4($a1)
/* 0629BC 80061DBC 24060001 */  li    $a2, 1
/* 0629C0 80061DC0 0C024580 */  jal   func_80091600
/* 0629C4 80061DC4 00003821 */   addu  $a3, $zero, $zero
/* 0629C8 80061DC8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0629CC 80061DCC 03E00008 */  jr    $ra
/* 0629D0 80061DD0 27BD0020 */   addiu $sp, $sp, 0x20

/* 0629D4 80061DD4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0629D8 80061DD8 AFBF0030 */  sw    $ra, 0x30($sp)
/* 0629DC 80061DDC A7A40020 */  sh    $a0, 0x20($sp)
/* 0629E0 80061DE0 AFA50024 */  sw    $a1, 0x24($sp)
/* 0629E4 80061DE4 A7A60028 */  sh    $a2, 0x28($sp)
/* 0629E8 80061DE8 AFA7002C */  sw    $a3, 0x2c($sp)
/* 0629EC 80061DEC 27A40010 */  addiu $a0, $sp, 0x10
/* 0629F0 80061DF0 3C058006 */  lui   $a1, %hi(D_80061D64) # $a1, 0x8006
/* 0629F4 80061DF4 24A51D64 */  addiu $a1, %lo(D_80061D64) # addiu $a1, $a1, 0x1d64
/* 0629F8 80061DF8 27A60020 */  addiu $a2, $sp, 0x20
/* 0629FC 80061DFC 0C0190BF */  jal   func_800642FC
/* 062A00 80061E00 24070002 */   li    $a3, 2
/* 062A04 80061E04 8FBF0030 */  lw    $ra, 0x30($sp)
/* 062A08 80061E08 03E00008 */  jr    $ra
/* 062A0C 80061E0C 27BD0038 */   addiu $sp, $sp, 0x38

D_80061E10:
/* 062A10 80061E10 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 062A14 80061E14 AFBF0034 */  sw    $ra, 0x34($sp)
/* 062A18 80061E18 AFB60030 */  sw    $s6, 0x30($sp)
/* 062A1C 80061E1C AFB5002C */  sw    $s5, 0x2c($sp)
/* 062A20 80061E20 AFB40028 */  sw    $s4, 0x28($sp)
/* 062A24 80061E24 AFB30024 */  sw    $s3, 0x24($sp)
/* 062A28 80061E28 AFB20020 */  sw    $s2, 0x20($sp)
/* 062A2C 80061E2C AFB1001C */  sw    $s1, 0x1c($sp)
/* 062A30 80061E30 AFB00018 */  sw    $s0, 0x18($sp)
/* 062A34 80061E34 00808821 */  addu  $s1, $a0, $zero
/* 062A38 80061E38 86220008 */  lh    $v0, 8($s1)
/* 062A3C 80061E3C 1840002E */  blez  $v0, .L80061EF8
/* 062A40 80061E40 00009021 */   addu  $s2, $zero, $zero
/* 062A44 80061E44 3C16800E */  lui   $s6, %hi(D_800D90D0) # $s6, 0x800e
/* 062A48 80061E48 26D690D0 */  addiu $s6, %lo(D_800D90D0) # addiu $s6, $s6, -0x6f30
/* 062A4C 80061E4C 24150100 */  li    $s5, 256
/* 062A50 80061E50 3C14800E */  lui   $s4, %hi(D_800D9270) # $s4, 0x800e
/* 062A54 80061E54 26949270 */  addiu $s4, %lo(D_800D9270) # addiu $s4, $s4, -0x6d90
.L80061E58:
/* 062A58 80061E58 86220000 */  lh    $v0, ($s1)
/* 062A5C 80061E5C 00022040 */  sll   $a0, $v0, 1
/* 062A60 80061E60 00822021 */  addu  $a0, $a0, $v0
/* 062A64 80061E64 00042080 */  sll   $a0, $a0, 2
/* 062A68 80061E68 00822021 */  addu  $a0, $a0, $v0
/* 062A6C 80061E6C 000420C0 */  sll   $a0, $a0, 3
/* 062A70 80061E70 00121400 */  sll   $v0, $s2, 0x10
/* 062A74 80061E74 00028403 */  sra   $s0, $v0, 0x10
/* 062A78 80061E78 AFB50010 */  sw    $s5, 0x10($sp)
/* 062A7C 80061E7C AFB40014 */  sw    $s4, 0x14($sp)
/* 062A80 80061E80 00962021 */  addu  $a0, $a0, $s6
/* 062A84 80061E84 8E250004 */  lw    $a1, 4($s1)
/* 062A88 80061E88 00003021 */  addu  $a2, $zero, $zero
/* 062A8C 80061E8C 0C024580 */  jal   func_80091600
/* 062A90 80061E90 02003821 */   addu  $a3, $s0, $zero
/* 062A94 80061E94 00409821 */  addu  $s3, $v0, $zero
/* 062A98 80061E98 16600018 */  bnez  $s3, .L80061EFC
/* 062A9C 80061E9C 02601021 */   addu  $v0, $s3, $zero
/* 062AA0 80061EA0 86220008 */  lh    $v0, 8($s1)
/* 062AA4 80061EA4 00503023 */  subu  $a2, $v0, $s0
/* 062AA8 80061EA8 28C20101 */  slti  $v0, $a2, 0x101
/* 062AAC 80061EAC 50400001 */  beql  $v0, $zero, .L80061EB4
/* 062AB0 80061EB0 24060100 */   li    $a2, 256
.L80061EB4:
/* 062AB4 80061EB4 00122C00 */  sll   $a1, $s2, 0x10
/* 062AB8 80061EB8 00052C03 */  sra   $a1, $a1, 0x10
/* 062ABC 80061EBC 8E22000C */  lw    $v0, 0xc($s1)
/* 062AC0 80061EC0 00063400 */  sll   $a2, $a2, 0x10
/* 062AC4 80061EC4 3C04800E */  lui   $a0, %hi(D_800D9270) # $a0, 0x800e
/* 062AC8 80061EC8 24849270 */  addiu $a0, %lo(D_800D9270) # addiu $a0, $a0, -0x6d90
/* 062ACC 80061ECC 00A22821 */  addu  $a1, $a1, $v0
/* 062AD0 80061ED0 0C023010 */  jal   bcopy
/* 062AD4 80061ED4 00063403 */   sra   $a2, $a2, 0x10
/* 062AD8 80061ED8 26420100 */  addiu $v0, $s2, 0x100
/* 062ADC 80061EDC 00409021 */  addu  $s2, $v0, $zero
/* 062AE0 80061EE0 00021400 */  sll   $v0, $v0, 0x10
/* 062AE4 80061EE4 00021403 */  sra   $v0, $v0, 0x10
/* 062AE8 80061EE8 86230008 */  lh    $v1, 8($s1)
/* 062AEC 80061EEC 0043102A */  slt   $v0, $v0, $v1
/* 062AF0 80061EF0 1440FFD9 */  bnez  $v0, .L80061E58
/* 062AF4 80061EF4 00000000 */   nop   
.L80061EF8:
/* 062AF8 80061EF8 02601021 */  addu  $v0, $s3, $zero
.L80061EFC:
/* 062AFC 80061EFC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 062B00 80061F00 8FB60030 */  lw    $s6, 0x30($sp)
/* 062B04 80061F04 8FB5002C */  lw    $s5, 0x2c($sp)
/* 062B08 80061F08 8FB40028 */  lw    $s4, 0x28($sp)
/* 062B0C 80061F0C 8FB30024 */  lw    $s3, 0x24($sp)
/* 062B10 80061F10 8FB20020 */  lw    $s2, 0x20($sp)
/* 062B14 80061F14 8FB1001C */  lw    $s1, 0x1c($sp)
/* 062B18 80061F18 8FB00018 */  lw    $s0, 0x18($sp)
/* 062B1C 80061F1C 03E00008 */  jr    $ra
/* 062B20 80061F20 27BD0038 */   addiu $sp, $sp, 0x38

/* 062B24 80061F24 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 062B28 80061F28 AFBF0030 */  sw    $ra, 0x30($sp)
/* 062B2C 80061F2C A7A40020 */  sh    $a0, 0x20($sp)
/* 062B30 80061F30 AFA50024 */  sw    $a1, 0x24($sp)
/* 062B34 80061F34 A7A60028 */  sh    $a2, 0x28($sp)
/* 062B38 80061F38 AFA7002C */  sw    $a3, 0x2c($sp)
/* 062B3C 80061F3C 27A40010 */  addiu $a0, $sp, 0x10
/* 062B40 80061F40 3C058006 */  lui   $a1, %hi(D_80061E10) # $a1, 0x8006
/* 062B44 80061F44 24A51E10 */  addiu $a1, %lo(D_80061E10) # addiu $a1, $a1, 0x1e10
/* 062B48 80061F48 27A60020 */  addiu $a2, $sp, 0x20
/* 062B4C 80061F4C 0C0190BF */  jal   func_800642FC
/* 062B50 80061F50 24070002 */   li    $a3, 2
/* 062B54 80061F54 8FBF0030 */  lw    $ra, 0x30($sp)
/* 062B58 80061F58 03E00008 */  jr    $ra
/* 062B5C 80061F5C 27BD0038 */   addiu $sp, $sp, 0x38
