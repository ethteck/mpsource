# Mario Party (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "globals.inc"
.include "macros.inc"

glabel func_80058910
/* 059510 80058910 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 059514 80058914 AFBF0014 */  sw    $ra, 0x14($sp)
/* 059518 80058918 AFB00010 */  sw    $s0, 0x10($sp)
/* 05951C 8005891C 00801821 */  addu  $v1, $a0, $zero
/* 059520 80058920 00042400 */  sll   $a0, $a0, 0x10
/* 059524 80058924 00042403 */  sra   $a0, $a0, 0x10
/* 059528 80058928 2402FFFF */  li    $v0, -1
/* 05952C 8005892C 14820004 */  bne   $a0, $v0, .L80058940
/* 059530 80058930 00A08021 */   addu  $s0, $a1, $zero
/* 059534 80058934 0C014AA0 */  jal   GetCurrentPlayerIndex
/* 059538 80058938 00000000 */   nop   
/* 05953C 8005893C 00401821 */  addu  $v1, $v0, $zero
.L80058940:
/* 059540 80058940 00101400 */  sll   $v0, $s0, 0x10
/* 059544 80058944 00022403 */  sra   $a0, $v0, 0x10
/* 059548 80058948 2C820006 */  sltiu $v0, $a0, 6
/* 05954C 8005894C 1040002B */  beqz  $v0, .L800589FC
/* 059550 80058950 00041080 */   sll   $v0, $a0, 2
/* 059554 80058954 3C01800D */  lui   $at, 0x800d
/* 059558 80058958 00220821 */  addu  $at, $at, $v0
/* 05955C 8005895C 8C22B3B0 */  lw    $v0, -0x4c50($at)
/* 059560 80058960 00400008 */  jr    $v0
/* 059564 80058964 00000000 */   nop   
/* 059568 80058968 00032400 */  sll   $a0, $v1, 0x10
/* 05956C 8005896C 00042403 */  sra   $a0, $a0, 0x10
/* 059570 80058970 24050005 */  li    $a1, 5
/* 059574 80058974 00003021 */  addu  $a2, $zero, $zero
/* 059578 80058978 0801627D */  j     func_800589F4
/* 05957C 8005897C 24070005 */   li    $a3, 5

/* 059580 80058980 00032400 */  sll   $a0, $v1, 0x10
/* 059584 80058984 00042403 */  sra   $a0, $a0, 0x10
/* 059588 80058988 24050002 */  li    $a1, 2
/* 05958C 8005898C 24060003 */  li    $a2, 3
/* 059590 80058990 0801627D */  j     func_800589F4
/* 059594 80058994 2407000A */   li    $a3, 10

/* 059598 80058998 00032400 */  sll   $a0, $v1, 0x10
/* 05959C 8005899C 00042403 */  sra   $a0, $a0, 0x10
/* 0595A0 800589A0 2405000A */  li    $a1, 10
/* 0595A4 800589A4 00003021 */  addu  $a2, $zero, $zero
/* 0595A8 800589A8 0801627D */  j     func_800589F4
/* 0595AC 800589AC 2407000A */   li    $a3, 10

/* 0595B0 800589B0 00032400 */  sll   $a0, $v1, 0x10
/* 0595B4 800589B4 00042403 */  sra   $a0, $a0, 0x10
/* 0595B8 800589B8 24050014 */  li    $a1, 20
/* 0595BC 800589BC 00003021 */  addu  $a2, $zero, $zero
/* 0595C0 800589C0 0801627D */  j     func_800589F4
/* 0595C4 800589C4 24070014 */   li    $a3, 20

/* 0595C8 800589C8 00032400 */  sll   $a0, $v1, 0x10
/* 0595CC 800589CC 00042403 */  sra   $a0, $a0, 0x10
/* 0595D0 800589D0 24050002 */  li    $a1, 2
/* 0595D4 800589D4 24060002 */  li    $a2, 2
/* 0595D8 800589D8 0801627D */  j     func_800589F4
/* 0595DC 800589DC 24070014 */   li    $a3, 20

/* 0595E0 800589E0 00032400 */  sll   $a0, $v1, 0x10
/* 0595E4 800589E4 00042403 */  sra   $a0, $a0, 0x10
/* 0595E8 800589E8 2405001E */  li    $a1, 30
/* 0595EC 800589EC 00003021 */  addu  $a2, $zero, $zero
/* 0595F0 800589F0 2407001E */  li    $a3, 30
glabel func_800589F4
/* 0595F4 800589F4 0C0183C1 */  jal   func_80060F04
/* 0595F8 800589F8 00000000 */   nop   
.L800589FC:
/* 0595FC 800589FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 059600 80058A00 8FB00010 */  lw    $s0, 0x10($sp)
/* 059604 80058A04 03E00008 */  jr    $ra
/* 059608 80058A08 27BD0018 */   addiu $sp, $sp, 0x18

D_80058A0C:
/* 05960C 80058A0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 059610 80058A10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 059614 80058A14 0C018CEA */  jal   GetCurrentProcess
/* 059618 80058A18 AFB00010 */   sw    $s0, 0x10($sp)
/* 05961C 80058A1C 8C50008C */  lw    $s0, 0x8c($v0)
glabel func_80058A20
/* 059620 80058A20 86040000 */  lh    $a0, ($s0)
/* 059624 80058A24 0C016244 */  jal   func_80058910
/* 059628 80058A28 86050002 */   lh    $a1, 2($s0)
/* 05962C 80058A2C 0C018D54 */  jal   SleepProcess
/* 059630 80058A30 86040004 */   lh    $a0, 4($s0)
/* 059634 80058A34 08016288 */  j     func_80058A20
/* 059638 80058A38 00000000 */   nop   

/* 05963C 80058A3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 059640 80058A40 8FB00010 */  lw    $s0, 0x10($sp)
/* 059644 80058A44 03E00008 */  jr    $ra
/* 059648 80058A48 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_80058A4C
/* 05964C 80058A4C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 059650 80058A50 AFBF0020 */  sw    $ra, 0x20($sp)
/* 059654 80058A54 AFB3001C */  sw    $s3, 0x1c($sp)
/* 059658 80058A58 AFB20018 */  sw    $s2, 0x18($sp)
/* 05965C 80058A5C AFB10014 */  sw    $s1, 0x14($sp)
/* 059660 80058A60 AFB00010 */  sw    $s0, 0x10($sp)
/* 059664 80058A64 00C09821 */  addu  $s3, $a2, $zero
/* 059668 80058A68 00808821 */  addu  $s1, $a0, $zero
/* 05966C 80058A6C 00A09021 */  addu  $s2, $a1, $zero
/* 059670 80058A70 0C00EDDD */  jal   MallocTemp
/* 059674 80058A74 2404000C */   li    $a0, 12
/* 059678 80058A78 00408021 */  addu  $s0, $v0, $zero
/* 05967C 80058A7C 1200000C */  beqz  $s0, .L80058AB0
/* 059680 80058A80 2662FFFF */   addiu $v0, $s3, -1
/* 059684 80058A84 A6110000 */  sh    $s1, ($s0)
/* 059688 80058A88 A6120002 */  sh    $s2, 2($s0)
/* 05968C 80058A8C A6020004 */  sh    $v0, 4($s0)
/* 059690 80058A90 3C048006 */  lui   $a0, %hi(D_80058A0C) # $a0, 0x8006
/* 059694 80058A94 24848A0C */  addiu $a0, %lo(D_80058A0C) # addiu $a0, $a0, -0x75f4
/* 059698 80058A98 24051005 */  li    $a1, 4101
/* 05969C 80058A9C 00003021 */  addu  $a2, $zero, $zero
/* 0596A0 80058AA0 0C01770A */  jal   InitProcess
/* 0596A4 80058AA4 00003821 */   addu  $a3, $zero, $zero
/* 0596A8 80058AA8 AE020008 */  sw    $v0, 8($s0)
/* 0596AC 80058AAC AC50008C */  sw    $s0, 0x8c($v0)
.L80058AB0:
/* 0596B0 80058AB0 02001021 */  addu  $v0, $s0, $zero
/* 0596B4 80058AB4 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0596B8 80058AB8 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0596BC 80058ABC 8FB20018 */  lw    $s2, 0x18($sp)
/* 0596C0 80058AC0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0596C4 80058AC4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0596C8 80058AC8 03E00008 */  jr    $ra
/* 0596CC 80058ACC 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_80058AD0
/* 0596D0 80058AD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0596D4 80058AD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0596D8 80058AD8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0596DC 80058ADC 00808021 */  addu  $s0, $a0, $zero
/* 0596E0 80058AE0 12000005 */  beqz  $s0, .L80058AF8
/* 0596E4 80058AE4 00000000 */   nop   
/* 0596E8 80058AE8 0C017764 */  jal   EndProcess
/* 0596EC 80058AEC 8E040008 */   lw    $a0, 8($s0)
/* 0596F0 80058AF0 0C00EDE6 */  jal   FreeTemp
/* 0596F4 80058AF4 02002021 */   addu  $a0, $s0, $zero
.L80058AF8:
/* 0596F8 80058AF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0596FC 80058AFC 8FB00010 */  lw    $s0, 0x10($sp)
/* 059700 80058B00 03E00008 */  jr    $ra
/* 059704 80058B04 27BD0018 */   addiu $sp, $sp, 0x18

/* 059708 80058B08 00000000 */  nop   
/* 05970C 80058B0C 00000000 */  nop   
