.include "globals.inc"
.include "macros.inc"

.set noat
.set noreorder

glabel func_8004C2CC
/* 04CECC 8004C2CC 27BDFFD8 */  addiu $29, $29, -0x28
/* 04CED0 8004C2D0 AFBF0024 */  sw    $31, 0x24($29)
/* 04CED4 8004C2D4 AFB40020 */  sw    $20, 0x20($29)
/* 04CED8 8004C2D8 AFB3001C */  sw    $19, 0x1c($29)
/* 04CEDC 8004C2DC AFB20018 */  sw    $18, 0x18($29)
/* 04CEE0 8004C2E0 AFB10014 */  sw    $17, 0x14($29)
/* 04CEE4 8004C2E4 AFB00010 */  sw    $16, 0x10($29)
/* 04CEE8 8004C2E8 00808021 */  addu  $16, $4, $0
/* 04CEEC 8004C2EC 00A09821 */  addu  $19, $5, $0
/* 04CEF0 8004C2F0 0C01308C */  jal   GetChainLength
/* 04CEF4 8004C2F4 3264FFFF */   andi  $4, $19, 0xffff
/* 04CEF8 8004C2F8 00021400 */  sll   $2, $2, 0x10
/* 04CEFC 8004C2FC 0C005D63 */  jal   GetRandomByte
/* 04CF00 8004C300 0002A403 */   sra   $20, $2, 0x10
/* 04CF04 8004C304 304200FF */  andi  $2, $2, 0xff
/* 04CF08 8004C308 3C038888 */  lui   $3, (0x88888889 >> 16) # lui $3, 0x8888
/* 04CF0C 8004C30C 34638889 */  ori   $3, (0x88888889 & 0xFFFF) # ori $3, $3, 0x8889
/* 04CF10 8004C310 00430019 */  multu $2, $3
/* 04CF14 8004C314 00003010 */  mfhi  $6
/* 04CF18 8004C318 00062102 */  srl   $4, $6, 4
/* 04CF1C 8004C31C 00041900 */  sll   $3, $4, 4
/* 04CF20 8004C320 00641823 */  subu  $3, $3, $4
/* 04CF24 8004C324 00031840 */  sll   $3, $3, 1
/* 04CF28 8004C328 00431023 */  subu  $2, $2, $3
/* 04CF2C 8004C32C 24520001 */  addiu $18, $2, 1
/* 04CF30 8004C330 00008821 */  addu  $17, $0, $0
/* 04CF34 8004C334 3210FFFF */  andi  $16, $16, 0xffff
.L8004C338:
/* 04CF38 8004C338 3264FFFF */  andi  $4, $19, 0xffff
/* 04CF3C 8004C33C 0C013081 */  jal   GetAbsSpaceIndexFromChainSpaceIndex
/* 04CF40 8004C340 3225FFFF */   andi  $5, $17, 0xffff
/* 04CF44 8004C344 00021400 */  sll   $2, $2, 0x10
/* 04CF48 8004C348 0C01307B */  jal   GetSpaceData
/* 04CF4C 8004C34C 00022403 */   sra   $4, $2, 0x10
/* 04CF50 8004C350 90420001 */  lbu   $2, 1($2)
/* 04CF54 8004C354 3042000F */  andi  $2, $2, 0xf
/* 04CF58 8004C358 3C01800C */  lui   $1, 0x800c
/* 04CF5C 8004C35C 00220821 */  addu  $1, $1, $2
/* 04CF60 8004C360 902251B0 */  lbu   $2, 0x51b0($1)
/* 04CF64 8004C364 00501024 */  and   $2, $2, $16
/* 04CF68 8004C368 10400005 */  beqz  $2, .L8004C380
/* 04CF6C 8004C36C 2642FFFF */   addiu $2, $18, -1
/* 04CF70 8004C370 00409021 */  addu  $18, $2, $0
/* 04CF74 8004C374 304200FF */  andi  $2, $2, 0xff
/* 04CF78 8004C378 10400006 */  beqz  $2, .L8004C394
/* 04CF7C 8004C37C 00111400 */   sll   $2, $17, 0x10
.L8004C380:
/* 04CF80 8004C380 26310001 */  addiu $17, $17, 1
/* 04CF84 8004C384 0234102A */  slt   $2, $17, $20
/* 04CF88 8004C388 00021023 */  negu  $2, $2
/* 04CF8C 8004C38C 080130CE */  j     .L8004C338
/* 04CF90 8004C390 00518824 */   and   $17, $2, $17
.L8004C394:
/* 04CF94 8004C394 00021403 */  sra   $2, $2, 0x10
/* 04CF98 8004C398 8FBF0024 */  lw    $31, 0x24($29)
/* 04CF9C 8004C39C 8FB40020 */  lw    $20, 0x20($29)
/* 04CFA0 8004C3A0 8FB3001C */  lw    $19, 0x1c($29)
/* 04CFA4 8004C3A4 8FB20018 */  lw    $18, 0x18($29)
/* 04CFA8 8004C3A8 8FB10014 */  lw    $17, 0x14($29)
/* 04CFAC 8004C3AC 8FB00010 */  lw    $16, 0x10($29)
/* 04CFB0 8004C3B0 03E00008 */  jr    $31
/* 04CFB4 8004C3B4 27BD0028 */   addiu $29, $29, 0x28

.set at
.set reorder
