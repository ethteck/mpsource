# Mario Party (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "globals.inc"
.include "macros.inc"

glabel thread3_main
/* 03BF30 8003B330 27BDFAB0 */  addiu $sp, $sp, -0x550
/* 03BF34 8003B334 AFBF0548 */  sw    $ra, 0x548($sp)
/* 03BF38 8003B338 AFB50544 */  sw    $s5, 0x544($sp)
/* 03BF3C 8003B33C AFB40540 */  sw    $s4, 0x540($sp)
/* 03BF40 8003B340 AFB3053C */  sw    $s3, 0x53c($sp)
/* 03BF44 8003B344 AFB20538 */  sw    $s2, 0x538($sp)
/* 03BF48 8003B348 AFB10534 */  sw    $s1, 0x534($sp)
/* 03BF4C 8003B34C AFB00530 */  sw    $s0, 0x530($sp)
/* 03BF50 8003B350 00009821 */  addu  $s3, $zero, $zero
/* 03BF54 8003B354 00009021 */  addu  $s2, $zero, $zero
/* 03BF58 8003B358 0C00ED7B */  jal   func_8003B5EC
/* 03BF5C 8003B35C 24040003 */   li    $a0, 3
/* 03BF60 8003B360 3C048014 */  lui   $a0, 0x8014
/* 03BF64 8003B364 0C00EDA0 */  jal   MakePermHeap
/* 03BF68 8003B368 3C05001A */   lui   $a1, 0x1a
/* 03BF6C 8003B36C 3C048012 */  lui   $a0, 0x8012
/* 03BF70 8003B370 0C00EDD4 */  jal   MakeTempHeap
/* 03BF74 8003B374 3C050002 */   lui   $a1, 2
/* 03BF78 8003B378 3C038000 */  lui   $v1, %hi(D_80000300) # $v1, 0x8000
/* 03BF7C 8003B37C 8C630300 */  lw    $v1, %lo(D_80000300)($v1)
/* 03BF80 8003B380 24020001 */  li    $v0, 1
/* 03BF84 8003B384 14620002 */  bne   $v1, $v0, .L8003B390
/* 03BF88 8003B388 2404001E */   li    $a0, 30
/* 03BF8C 8003B38C 24040002 */  li    $a0, 2
.L8003B390:
/* 03BF90 8003B390 0C018DF0 */  jal   func_800637C0
/* 03BF94 8003B394 24050001 */   li    $a1, 1
/* 03BF98 8003B398 24020003 */  li    $v0, 3
/* 03BF9C 8003B39C 3C01800F */  lui   $at, %hi(D_800ED552) # $at, 0x800f
/* 03BFA0 8003B3A0 A022D552 */  sb    $v0, %lo(D_800ED552)($at)
/* 03BFA4 8003B3A4 3C02800C */  lui   $v0, %hi(D_800C426C) # $v0, 0x800c
/* 03BFA8 8003B3A8 2442426C */  addiu $v0, %lo(D_800C426C) # addiu $v0, $v0, 0x426c
/* 03BFAC 8003B3AC AFA20010 */  sw    $v0, 0x10($sp)
/* 03BFB0 8003B3B0 3C04800C */  lui   $a0, %hi(D_800C4250) # $a0, 0x800c
/* 03BFB4 8003B3B4 24844250 */  addiu $a0, %lo(D_800C4250) # addiu $a0, $a0, 0x4250
/* 03BFB8 8003B3B8 24050003 */  li    $a1, 3
/* 03BFBC 8003B3BC 3C07800C */  lui   $a3, %hi(D_800C425C) # $a3, 0x800c
/* 03BFC0 8003B3C0 24E7425C */  addiu $a3, %lo(D_800C425C) # addiu $a3, $a3, 0x425c
/* 03BFC4 8003B3C4 0C006980 */  jal   func_8001A600
/* 03BFC8 8003B3C8 24060002 */   li    $a2, 2
/* 03BFCC 8003B3CC 240200D4 */  li    $v0, 212
/* 03BFD0 8003B3D0 AFA20010 */  sw    $v0, 0x10($sp)
/* 03BFD4 8003B3D4 00002021 */  addu  $a0, $zero, $zero
/* 03BFD8 8003B3D8 24050020 */  li    $a1, 32
/* 03BFDC 8003B3DC 240600D2 */  li    $a2, 210
/* 03BFE0 8003B3E0 0C0183DC */  jal   func_80060F70
/* 03BFE4 8003B3E4 24070020 */   li    $a3, 32
/* 03BFE8 8003B3E8 0C018FD0 */  jal   func_80063F40
/* 03BFEC 8003B3EC 00000000 */   nop   
/* 03BFF0 8003B3F0 24040004 */  li    $a0, 4
/* 03BFF4 8003B3F4 0C004E37 */  jal   func_800138DC
/* 03BFF8 8003B3F8 24050001 */   li    $a1, 1
/* 03BFFC 8003B3FC 0C01B2EC */  jal   func_8006CBB0
/* 03C000 8003B400 00000000 */   nop   
/* 03C004 8003B404 0C005088 */  jal   func_80014220
/* 03C008 8003B408 00000000 */   nop   
/* 03C00C 8003B40C 0C0187D8 */  jal   func_80061F60
/* 03C010 8003B410 00000000 */   nop   
/* 03C014 8003B414 3C040032 */  lui   $a0, %hi(D_0031C7E0) # $a0, 0x32
/* 03C018 8003B418 0C005118 */  jal   func_80014460
/* 03C01C 8003B41C 2484C7E0 */   addiu $a0, %lo(D_0031C7E0) # addiu $a0, $a0, -0x3820
/* 03C020 8003B420 0C018C18 */  jal   InitProcessSys
/* 03C024 8003B424 00000000 */   nop   
/* 03C028 8003B428 3C04800F */  lui   $a0, %hi(D_800ED538) # $a0, 0x800f
/* 03C02C 8003B42C 2484D538 */  addiu $a0, %lo(D_800ED538) # addiu $a0, $a0, -0x2ac8
/* 03C030 8003B430 27A50028 */  addiu $a1, $sp, 0x28
/* 03C034 8003B434 0C022188 */  jal   func_80088620
/* 03C038 8003B438 24060140 */   li    $a2, 320
/* 03C03C 8003B43C 27A40018 */  addiu $a0, $sp, 0x18
/* 03C040 8003B440 3C05800F */  lui   $a1, %hi(D_800ED538) # $a1, 0x800f
/* 03C044 8003B444 24A5D538 */  addiu $a1, %lo(D_800ED538) # addiu $a1, $a1, -0x2ac8
/* 03C048 8003B448 0C018E7E */  jal   func_800639F8
/* 03C04C 8003B44C 24060003 */   li    $a2, 3
/* 03C050 8003B450 0C004FA1 */  jal   func_80013E84
/* 03C054 8003B454 00000000 */   nop   
/* 03C058 8003B458 0C0248E4 */  jal   func_80092390
/* 03C05C 8003B45C 24040002 */   li    $a0, 2
/* 03C060 8003B460 0C006AFD */  jal   func_8001ABF4
/* 03C064 8003B464 24040002 */   li    $a0, 2
/* 03C068 8003B468 3C048002 */  lui   $a0, %hi(D_8001A0F0) # $a0, 0x8002
/* 03C06C 8003B46C 2484A0F0 */  addiu $a0, %lo(D_8001A0F0) # addiu $a0, $a0, -0x5f10
/* 03C070 8003B470 24050001 */  li    $a1, 1
/* 03C074 8003B474 00003021 */  addu  $a2, $zero, $zero
/* 03C078 8003B478 0C018C51 */  jal   CreateProcess
/* 03C07C 8003B47C 00003821 */   addu  $a3, $zero, $zero
/* 03C080 8003B480 1640004F */  bnez  $s2, .L8003B5C0
/* 03C084 8003B484 00000000 */   nop   
/* 03C088 8003B488 24150002 */  li    $s5, 2
/* 03C08C 8003B48C 24140001 */  li    $s4, 1
.L8003B490:
/* 03C090 8003B490 3C04800F */  lui   $a0, %hi(D_800ED538) # $a0, 0x800f
/* 03C094 8003B494 2484D538 */  addiu $a0, %lo(D_800ED538) # addiu $a0, $a0, -0x2ac8
/* 03C098 8003B498 27A50528 */  addiu $a1, $sp, 0x528
/* 03C09C 8003B49C 0C022278 */  jal   func_800889E0
/* 03C0A0 8003B4A0 24060001 */   li    $a2, 1
/* 03C0A4 8003B4A4 8FA30528 */  lw    $v1, 0x528($sp)
/* 03C0A8 8003B4A8 10750042 */  beq   $v1, $s5, .L8003B5B4
/* 03C0AC 8003B4AC 28620003 */   slti  $v0, $v1, 3
/* 03C0B0 8003B4B0 50400005 */  beql  $v0, $zero, .L8003B4C8
/* 03C0B4 8003B4B4 24020309 */   li    $v0, 777
/* 03C0B8 8003B4B8 10740007 */  beq   $v1, $s4, .L8003B4D8
/* 03C0BC 8003B4BC 00000000 */   nop   
/* 03C0C0 8003B4C0 0800ED6E */  j     func_8003B5B8
/* 03C0C4 8003B4C4 00000000 */   nop   

.L8003B4C8:
/* 03C0C8 8003B4C8 1062002F */  beq   $v1, $v0, .L8003B588
/* 03C0CC 8003B4CC 00000000 */   nop   
/* 03C0D0 8003B4D0 0800ED6E */  j     func_8003B5B8
/* 03C0D4 8003B4D4 00000000 */   nop   

.L8003B4D8:
/* 03C0D8 8003B4D8 0C0184D5 */  jal   func_80061354
/* 03C0DC 8003B4DC 00000000 */   nop   
/* 03C0E0 8003B4E0 240400C8 */  li    $a0, 200
/* 03C0E4 8003B4E4 00002821 */  addu  $a1, $zero, $zero
/* 03C0E8 8003B4E8 0C01848A */  jal   func_80061228
/* 03C0EC 8003B4EC 00003021 */   addu  $a2, $zero, $zero
/* 03C0F0 8003B4F0 00408821 */  addu  $s1, $v0, $zero
/* 03C0F4 8003B4F4 3C03800F */  lui   $v1, %hi(D_800F383C) # $v1, 0x800f
/* 03C0F8 8003B4F8 8C63383C */  lw    $v1, %lo(D_800F383C)($v1)
/* 03C0FC 8003B4FC 00731023 */  subu  $v0, $v1, $s3
/* 03C100 8003B500 2C420002 */  sltiu $v0, $v0, 2
/* 03C104 8003B504 1440002C */  bnez  $v0, .L8003B5B8
/* 03C108 8003B508 00000000 */   nop   
/* 03C10C 8003B50C 00609821 */  addu  $s3, $v1, $zero
/* 03C110 8003B510 3C03800F */  lui   $v1, %hi(D_800ED552) # $v1, 0x800f
/* 03C114 8003B514 9063D552 */  lbu   $v1, %lo(D_800ED552)($v1)
/* 03C118 8003B518 3C02800C */  lui   $v0, %hi(D_800C42B0) # $v0, 0x800c
/* 03C11C 8003B51C 8C4242B0 */  lw    $v0, %lo(D_800C42B0)($v0)
/* 03C120 8003B520 0043102A */  slt   $v0, $v0, $v1
/* 03C124 8003B524 10400024 */  beqz  $v0, .L8003B5B8
/* 03C128 8003B528 00000000 */   nop   
/* 03C12C 8003B52C 0C004FA1 */  jal   func_80013E84
/* 03C130 8003B530 00000000 */   nop   
/* 03C134 8003B534 0C0050A7 */  jal   func_8001429C
/* 03C138 8003B538 00000000 */   nop   
/* 03C13C 8003B53C 3C10800C */  lui   $s0, %hi(D_800C32B0) # $s0, 0x800c
/* 03C140 8003B540 8E1032B0 */  lw    $s0, %lo(D_800C32B0)($s0)
/* 03C144 8003B544 0C018D84 */  jal   CallProcess
/* 03C148 8003B548 24040001 */   li    $a0, 1
/* 03C14C 8003B54C 3C02800C */  lui   $v0, %hi(D_800C32B0) # $v0, 0x800c
/* 03C150 8003B550 8C4232B0 */  lw    $v0, %lo(D_800C32B0)($v0)
/* 03C154 8003B554 12020006 */  beq   $s0, $v0, .L8003B570
/* 03C158 8003B558 00112400 */   sll   $a0, $s1, 0x10
/* 03C15C 8003B55C 3C02800C */  lui   $v0, %hi(D_800C42B0) # $v0, 0x800c
/* 03C160 8003B560 8C4242B0 */  lw    $v0, %lo(D_800C42B0)($v0)
/* 03C164 8003B564 24420001 */  addiu $v0, $v0, 1
/* 03C168 8003B568 3C01800C */  lui   $at, %hi(D_800C42B0) # $at, 0x800c
/* 03C16C 8003B56C AC2242B0 */  sw    $v0, %lo(D_800C42B0)($at)
.L8003B570:
/* 03C170 8003B570 0C018499 */  jal   func_80061264
/* 03C174 8003B574 00042403 */   sra   $a0, $a0, 0x10
/* 03C178 8003B578 0C0184E8 */  jal   func_800613A0
/* 03C17C 8003B57C 00000000 */   nop   
/* 03C180 8003B580 0800ED6E */  j     func_8003B5B8
/* 03C184 8003B584 00000000 */   nop   

.L8003B588:
/* 03C188 8003B588 3C02800C */  lui   $v0, %hi(D_800C42B0) # $v0, 0x800c
/* 03C18C 8003B58C 8C4242B0 */  lw    $v0, %lo(D_800C42B0)($v0)
/* 03C190 8003B590 2442FFFF */  addiu $v0, $v0, -1
/* 03C194 8003B594 3C01800C */  lui   $at, %hi(D_800C42B0) # $at, 0x800c
/* 03C198 8003B598 AC2242B0 */  sw    $v0, %lo(D_800C42B0)($at)
/* 03C19C 8003B59C 3C02800F */  lui   $v0, %hi(D_800F3758) # $v0, 0x800f
/* 03C1A0 8003B5A0 8C423758 */  lw    $v0, %lo(D_800F3758)($v0)
/* 03C1A4 8003B5A4 24420001 */  addiu $v0, $v0, 1
/* 03C1A8 8003B5A8 3C01800F */  lui   $at, %hi(D_800F3758) # $at, 0x800f
/* 03C1AC 8003B5AC 0800ED6E */  j     func_8003B5B8
/* 03C1B0 8003B5B0 AC223758 */   sw    $v0, %lo(D_800F3758)($at)

.L8003B5B4:
/* 03C1B4 8003B5B4 24120001 */  li    $s2, 1
glabel func_8003B5B8
.L8003B5B8:
/* 03C1B8 8003B5B8 1240FFB5 */  beqz  $s2, .L8003B490
/* 03C1BC 8003B5BC 00000000 */   nop   
glabel func_8003B5C0
.L8003B5C0:
/* 03C1C0 8003B5C0 0800ED70 */  j     func_8003B5C0
/* 03C1C4 8003B5C4 00000000 */   nop   

/* 03C1C8 8003B5C8 8FBF0548 */  lw    $ra, 0x548($sp)
/* 03C1CC 8003B5CC 8FB50544 */  lw    $s5, 0x544($sp)
/* 03C1D0 8003B5D0 8FB40540 */  lw    $s4, 0x540($sp)
/* 03C1D4 8003B5D4 8FB3053C */  lw    $s3, 0x53c($sp)
/* 03C1D8 8003B5D8 8FB20538 */  lw    $s2, 0x538($sp)
/* 03C1DC 8003B5DC 8FB10534 */  lw    $s1, 0x534($sp)
/* 03C1E0 8003B5E0 8FB00530 */  lw    $s0, 0x530($sp)
/* 03C1E4 8003B5E4 03E00008 */  jr    $ra
/* 03C1E8 8003B5E8 27BD0550 */   addiu $sp, $sp, 0x550

glabel func_8003B5EC
/* 03C1EC 8003B5EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03C1F0 8003B5F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 03C1F4 8003B5F4 AFB20018 */  sw    $s2, 0x18($sp)
/* 03C1F8 8003B5F8 AFB10014 */  sw    $s1, 0x14($sp)
/* 03C1FC 8003B5FC AFB00010 */  sw    $s0, 0x10($sp)
/* 03C200 8003B600 00801021 */  addu  $v0, $a0, $zero
/* 03C204 8003B604 00042400 */  sll   $a0, $a0, 0x10
/* 03C208 8003B608 18800014 */  blez  $a0, .L8003B65C
/* 03C20C 8003B60C 00008021 */   addu  $s0, $zero, $zero
/* 03C210 8003B610 3C12800C */  lui   $s2, %hi(D_800C4250) # $s2, 0x800c
/* 03C214 8003B614 26524250 */  addiu $s2, %lo(D_800C4250) # addiu $s2, $s2, 0x4250
/* 03C218 8003B618 00021400 */  sll   $v0, $v0, 0x10
/* 03C21C 8003B61C 00028C03 */  sra   $s1, $v0, 0x10
/* 03C220 8003B620 00101400 */  sll   $v0, $s0, 0x10
.L8003B624:
/* 03C224 8003B624 00021383 */  sra   $v0, $v0, 0xe
/* 03C228 8003B628 00521021 */  addu  $v0, $v0, $s2
/* 03C22C 8003B62C 8C440000 */  lw    $a0, ($v0)
/* 03C230 8003B630 00002821 */  addu  $a1, $zero, $zero
/* 03C234 8003B634 3C060002 */  lui   $a2, (0x00025800 >> 16) # lui $a2, 2
/* 03C238 8003B638 0C026DDC */  jal   func_8009B770
/* 03C23C 8003B63C 34C65800 */   ori   $a2, (0x00025800 & 0xFFFF) # ori $a2, $a2, 0x5800
/* 03C240 8003B640 26020001 */  addiu $v0, $s0, 1
/* 03C244 8003B644 00408021 */  addu  $s0, $v0, $zero
/* 03C248 8003B648 00021400 */  sll   $v0, $v0, 0x10
/* 03C24C 8003B64C 00021403 */  sra   $v0, $v0, 0x10
/* 03C250 8003B650 0051102A */  slt   $v0, $v0, $s1
/* 03C254 8003B654 1440FFF3 */  bnez  $v0, .L8003B624
/* 03C258 8003B658 00101400 */   sll   $v0, $s0, 0x10
.L8003B65C:
/* 03C25C 8003B65C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 03C260 8003B660 8FB20018 */  lw    $s2, 0x18($sp)
/* 03C264 8003B664 8FB10014 */  lw    $s1, 0x14($sp)
/* 03C268 8003B668 8FB00010 */  lw    $s0, 0x10($sp)
/* 03C26C 8003B66C 03E00008 */  jr    $ra
/* 03C270 8003B670 27BD0020 */   addiu $sp, $sp, 0x20

/* 03C274 8003B674 00000000 */  nop   
/* 03C278 8003B678 00000000 */  nop   
/* 03C27C 8003B67C 00000000 */  nop   
