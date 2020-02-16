# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "globals.inc"
.include "macros.inc"

glabel func_8003B820
/* 03C420 8003B820 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03C424 8003B824 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03C428 8003B828 AFB00010 */  sw    $s0, 0x10($sp)
/* 03C42C 8003B82C 0C00EDDD */  jal   MallocTemp
/* 03C430 8003B830 24040008 */   li    $a0, 8
/* 03C434 8003B834 00408021 */  addu  $s0, $v0, $zero
/* 03C438 8003B838 A6000000 */  sh    $zero, ($s0)
/* 03C43C 8003B83C 24040024 */  li    $a0, 36
/* 03C440 8003B840 0C00F6F8 */  jal   func_8003DBE0
/* 03C444 8003B844 00002821 */   addu  $a1, $zero, $zero
/* 03C448 8003B848 AE020004 */  sw    $v0, 4($s0)
/* 03C44C 8003B84C 8C42003C */  lw    $v0, 0x3c($v0)
/* 03C450 8003B850 8C420040 */  lw    $v0, 0x40($v0)
/* 03C454 8003B854 84440000 */  lh    $a0, ($v0)
/* 03C458 8003B858 24050180 */  li    $a1, 384
/* 03C45C 8003B85C 0C00963B */  jal   func_800258EC
/* 03C460 8003B860 00003021 */   addu  $a2, $zero, $zero
/* 03C464 8003B864 8E020004 */  lw    $v0, 4($s0)
/* 03C468 8003B868 8C42003C */  lw    $v0, 0x3c($v0)
/* 03C46C 8003B86C 8C420040 */  lw    $v0, 0x40($v0)
/* 03C470 8003B870 0C0096B5 */  jal   func_80025AD4
/* 03C474 8003B874 84440000 */   lh    $a0, ($v0)
/* 03C478 8003B878 8E020004 */  lw    $v0, 4($s0)
/* 03C47C 8003B87C 8C42003C */  lw    $v0, 0x3c($v0)
/* 03C480 8003B880 8C420040 */  lw    $v0, 0x40($v0)
/* 03C484 8003B884 84440000 */  lh    $a0, ($v0)
/* 03C488 8003B888 0C0097D8 */  jal   func_80025F60
/* 03C48C 8003B88C 24051400 */   li    $a1, 5120
/* 03C490 8003B890 02001021 */  addu  $v0, $s0, $zero
/* 03C494 8003B894 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03C498 8003B898 8FB00010 */  lw    $s0, 0x10($sp)
/* 03C49C 8003B89C 03E00008 */  jr    $ra
/* 03C4A0 8003B8A0 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_8003B8A4
/* 03C4A4 8003B8A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03C4A8 8003B8A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03C4AC 8003B8AC AFB00010 */  sw    $s0, 0x10($sp)
/* 03C4B0 8003B8B0 00808021 */  addu  $s0, $a0, $zero
/* 03C4B4 8003B8B4 0C00F9A5 */  jal   func_8003E694
/* 03C4B8 8003B8B8 8E040004 */   lw    $a0, 4($s0)
/* 03C4BC 8003B8BC 0C00EDE6 */  jal   FreeTemp
/* 03C4C0 8003B8C0 02002021 */   addu  $a0, $s0, $zero
/* 03C4C4 8003B8C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03C4C8 8003B8C8 8FB00010 */  lw    $s0, 0x10($sp)
/* 03C4CC 8003B8CC 03E00008 */  jr    $ra
/* 03C4D0 8003B8D0 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_8003B8D4
/* 03C4D4 8003B8D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03C4D8 8003B8D8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03C4DC 8003B8DC 0C00EDDD */  jal   MallocTemp
/* 03C4E0 8003B8E0 2404006C */   li    $a0, 108
/* 03C4E4 8003B8E4 A4400000 */  sh    $zero, ($v0)
/* 03C4E8 8003B8E8 A4400002 */  sh    $zero, 2($v0)
/* 03C4EC 8003B8EC AC400004 */  sw    $zero, 4($v0)
/* 03C4F0 8003B8F0 AC400008 */  sw    $zero, 8($v0)
/* 03C4F4 8003B8F4 A440000C */  sh    $zero, 0xc($v0)
/* 03C4F8 8003B8F8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03C4FC 8003B8FC AC400068 */  sw    $zero, 0x68($v0)
/* 03C500 8003B900 03E00008 */  jr    $ra
/* 03C504 8003B904 27BD0018 */   addiu $sp, $sp, 0x18

FreeObject:
glabel func_8003B908
/* 03C508 8003B908 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03C50C 8003B90C AFBF0024 */  sw    $ra, 0x24($sp)
/* 03C510 8003B910 AFB20020 */  sw    $s2, 0x20($sp)
/* 03C514 8003B914 AFB1001C */  sw    $s1, 0x1c($sp)
/* 03C518 8003B918 AFB00018 */  sw    $s0, 0x18($sp)
/* 03C51C 8003B91C 00809021 */  addu  $s2, $a0, $zero
/* 03C520 8003B920 86420002 */  lh    $v0, 2($s2)
/* 03C524 8003B924 1040000E */  beqz  $v0, .L8003B960
/* 03C528 8003B928 00000000 */   nop   
/* 03C52C 8003B92C 8E510004 */  lw    $s1, 4($s2)
/* 03C530 8003B930 18400009 */  blez  $v0, .L8003B958
/* 03C534 8003B934 00008021 */   addu  $s0, $zero, $zero
.L8003B938:
/* 03C538 8003B938 8E240000 */  lw    $a0, ($s1)
/* 03C53C 8003B93C 0C00EE29 */  jal   func_8003B8A4
/* 03C540 8003B940 26310004 */   addiu $s1, $s1, 4
/* 03C544 8003B944 26100001 */  addiu $s0, $s0, 1
/* 03C548 8003B948 86420002 */  lh    $v0, 2($s2)
/* 03C54C 8003B94C 0202102A */  slt   $v0, $s0, $v0
/* 03C550 8003B950 1440FFF9 */  bnez  $v0, .L8003B938
/* 03C554 8003B954 00000000 */   nop   
.L8003B958:
/* 03C558 8003B958 0C00EDE6 */  jal   FreeTemp
/* 03C55C 8003B95C 8E440004 */   lw    $a0, 4($s2)
.L8003B960:
/* 03C560 8003B960 8E440008 */  lw    $a0, 8($s2)
/* 03C564 8003B964 10800003 */  beqz  $a0, .L8003B974
/* 03C568 8003B968 00000000 */   nop   
/* 03C56C 8003B96C 0C017764 */  jal   EndProcess
/* 03C570 8003B970 00000000 */   nop   
.L8003B974:
/* 03C574 8003B974 0C00EDE6 */  jal   FreeTemp
/* 03C578 8003B978 02402021 */   addu  $a0, $s2, $zero
/* 03C57C 8003B97C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 03C580 8003B980 8FB20020 */  lw    $s2, 0x20($sp)
/* 03C584 8003B984 8FB1001C */  lw    $s1, 0x1c($sp)
/* 03C588 8003B988 8FB00018 */  lw    $s0, 0x18($sp)
/* 03C58C 8003B98C 03E00008 */  jr    $ra
/* 03C590 8003B990 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_8003B994
/* 03C594 8003B994 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 03C598 8003B998 AFBF0028 */  sw    $ra, 0x28($sp)
/* 03C59C 8003B99C AFB30024 */  sw    $s3, 0x24($sp)
/* 03C5A0 8003B9A0 AFB20020 */  sw    $s2, 0x20($sp)
/* 03C5A4 8003B9A4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 03C5A8 8003B9A8 AFB00018 */  sw    $s0, 0x18($sp)
/* 03C5AC 8003B9AC 00808021 */  addu  $s0, $a0, $zero
/* 03C5B0 8003B9B0 00A09821 */  addu  $s3, $a1, $zero
/* 03C5B4 8003B9B4 00C09021 */  addu  $s2, $a2, $zero
/* 03C5B8 8003B9B8 96040002 */  lhu   $a0, 2($s0)
/* 03C5BC 8003B9BC 24840001 */  addiu $a0, $a0, 1
/* 03C5C0 8003B9C0 A6040002 */  sh    $a0, 2($s0)
/* 03C5C4 8003B9C4 00042400 */  sll   $a0, $a0, 0x10
/* 03C5C8 8003B9C8 0C00EDDD */  jal   MallocTemp
/* 03C5CC 8003B9CC 00042383 */   sra   $a0, $a0, 0xe
/* 03C5D0 8003B9D0 00408821 */  addu  $s1, $v0, $zero
/* 03C5D4 8003B9D4 8E020004 */  lw    $v0, 4($s0)
/* 03C5D8 8003B9D8 1040000F */  beqz  $v0, .L8003BA18
/* 03C5DC 8003B9DC 02202021 */   addu  $a0, $s1, $zero
/* 03C5E0 8003B9E0 00402821 */  addu  $a1, $v0, $zero
/* 03C5E4 8003B9E4 86020002 */  lh    $v0, 2($s0)
/* 03C5E8 8003B9E8 2442FFFF */  addiu $v0, $v0, -1
/* 03C5EC 8003B9EC 1840000A */  blez  $v0, .L8003BA18
/* 03C5F0 8003B9F0 00001821 */   addu  $v1, $zero, $zero
.L8003B9F4:
/* 03C5F4 8003B9F4 8CA20000 */  lw    $v0, ($a1)
/* 03C5F8 8003B9F8 AC820000 */  sw    $v0, ($a0)
/* 03C5FC 8003B9FC 24A50004 */  addiu $a1, $a1, 4
/* 03C600 8003BA00 24630001 */  addiu $v1, $v1, 1
/* 03C604 8003BA04 86020002 */  lh    $v0, 2($s0)
/* 03C608 8003BA08 2442FFFF */  addiu $v0, $v0, -1
/* 03C60C 8003BA0C 0062102A */  slt   $v0, $v1, $v0
/* 03C610 8003BA10 1440FFF8 */  bnez  $v0, .L8003B9F4
/* 03C614 8003BA14 24840004 */   addiu $a0, $a0, 4
.L8003BA18:
/* 03C618 8003BA18 AC930000 */  sw    $s3, ($a0)
/* 03C61C 8003BA1C 8E040004 */  lw    $a0, 4($s0)
/* 03C620 8003BA20 50800004 */  beql  $a0, $zero, .L8003BA34
/* 03C624 8003BA24 AE110004 */   sw    $s1, 4($s0)
/* 03C628 8003BA28 0C00EDE6 */  jal   FreeTemp
/* 03C62C 8003BA2C 00000000 */   nop   
/* 03C630 8003BA30 AE110004 */  sw    $s1, 4($s0)
.L8003BA34:
/* 03C634 8003BA34 32420001 */  andi  $v0, $s2, 1
/* 03C638 8003BA38 10400004 */  beqz  $v0, .L8003BA4C
/* 03C63C 8003BA3C A6720000 */   sh    $s2, ($s3)
/* 03C640 8003BA40 96020002 */  lhu   $v0, 2($s0)
/* 03C644 8003BA44 2442FFFF */  addiu $v0, $v0, -1
/* 03C648 8003BA48 A602000C */  sh    $v0, 0xc($s0)
.L8003BA4C:
/* 03C64C 8003BA4C 8FBF0028 */  lw    $ra, 0x28($sp)
/* 03C650 8003BA50 8FB30024 */  lw    $s3, 0x24($sp)
/* 03C654 8003BA54 8FB20020 */  lw    $s2, 0x20($sp)
/* 03C658 8003BA58 8FB1001C */  lw    $s1, 0x1c($sp)
/* 03C65C 8003BA5C 8FB00018 */  lw    $s0, 0x18($sp)
/* 03C660 8003BA60 03E00008 */  jr    $ra
/* 03C664 8003BA64 27BD0030 */   addiu $sp, $sp, 0x30

/* 03C668 8003BA68 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03C66C 8003BA6C AFBF0024 */  sw    $ra, 0x24($sp)
/* 03C670 8003BA70 AFB20020 */  sw    $s2, 0x20($sp)
/* 03C674 8003BA74 AFB1001C */  sw    $s1, 0x1c($sp)
/* 03C678 8003BA78 AFB00018 */  sw    $s0, 0x18($sp)
/* 03C67C 8003BA7C 00808021 */  addu  $s0, $a0, $zero
/* 03C680 8003BA80 00A09021 */  addu  $s2, $a1, $zero
/* 03C684 8003BA84 86020002 */  lh    $v0, 2($s0)
/* 03C688 8003BA88 00402021 */  addu  $a0, $v0, $zero
/* 03C68C 8003BA8C 28420002 */  slti  $v0, $v0, 2
/* 03C690 8003BA90 1440001A */  bnez  $v0, .L8003BAFC
/* 03C694 8003BA94 00008821 */   addu  $s1, $zero, $zero
/* 03C698 8003BA98 2484FFFF */  addiu $a0, $a0, -1
/* 03C69C 8003BA9C A6040002 */  sh    $a0, 2($s0)
/* 03C6A0 8003BAA0 00042400 */  sll   $a0, $a0, 0x10
/* 03C6A4 8003BAA4 0C00EDDD */  jal   MallocTemp
/* 03C6A8 8003BAA8 00042383 */   sra   $a0, $a0, 0xe
/* 03C6AC 8003BAAC 00408821 */  addu  $s1, $v0, $zero
/* 03C6B0 8003BAB0 02202821 */  addu  $a1, $s1, $zero
/* 03C6B4 8003BAB4 8E030004 */  lw    $v1, 4($s0)
/* 03C6B8 8003BAB8 86020002 */  lh    $v0, 2($s0)
/* 03C6BC 8003BABC 04400010 */  bltz  $v0, .L8003BB00
/* 03C6C0 8003BAC0 00002021 */   addu  $a0, $zero, $zero
.L8003BAC4:
/* 03C6C4 8003BAC4 8C620000 */  lw    $v0, ($v1)
/* 03C6C8 8003BAC8 54520003 */  bnel  $v0, $s2, .L8003BAD8
/* 03C6CC 8003BACC ACA20000 */   sw    $v0, ($a1)
/* 03C6D0 8003BAD0 0800EEB8 */  j     func_8003BAE0
/* 03C6D4 8003BAD4 24630004 */   addiu $v1, $v1, 4

.L8003BAD8:
/* 03C6D8 8003BAD8 24630004 */  addiu $v1, $v1, 4
/* 03C6DC 8003BADC 24A50004 */  addiu $a1, $a1, 4
glabel func_8003BAE0
/* 03C6E0 8003BAE0 24840001 */  addiu $a0, $a0, 1
/* 03C6E4 8003BAE4 86020002 */  lh    $v0, 2($s0)
/* 03C6E8 8003BAE8 0044102A */  slt   $v0, $v0, $a0
/* 03C6EC 8003BAEC 1040FFF5 */  beqz  $v0, .L8003BAC4
/* 03C6F0 8003BAF0 00000000 */   nop   
/* 03C6F4 8003BAF4 0800EEC0 */  j     func_8003BB00
/* 03C6F8 8003BAF8 00000000 */   nop   

.L8003BAFC:
/* 03C6FC 8003BAFC A6000002 */  sh    $zero, 2($s0)
glabel func_8003BB00
.L8003BB00:
/* 03C700 8003BB00 8E040004 */  lw    $a0, 4($s0)
/* 03C704 8003BB04 50800004 */  beql  $a0, $zero, .L8003BB18
/* 03C708 8003BB08 AE110004 */   sw    $s1, 4($s0)
/* 03C70C 8003BB0C 0C00EDE6 */  jal   FreeTemp
/* 03C710 8003BB10 00000000 */   nop   
/* 03C714 8003BB14 AE110004 */  sw    $s1, 4($s0)
.L8003BB18:
/* 03C718 8003BB18 8FBF0024 */  lw    $ra, 0x24($sp)
/* 03C71C 8003BB1C 8FB20020 */  lw    $s2, 0x20($sp)
/* 03C720 8003BB20 8FB1001C */  lw    $s1, 0x1c($sp)
/* 03C724 8003BB24 8FB00018 */  lw    $s0, 0x18($sp)
/* 03C728 8003BB28 03E00008 */  jr    $ra
/* 03C72C 8003BB2C 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_8003BB30
/* 03C730 8003BB30 00052C00 */  sll   $a1, $a1, 0x10
/* 03C734 8003BB34 8C820004 */  lw    $v0, 4($a0)
/* 03C738 8003BB38 00052B83 */  sra   $a1, $a1, 0xe
/* 03C73C 8003BB3C 00A22821 */  addu  $a1, $a1, $v0
/* 03C740 8003BB40 03E00008 */  jr    $ra
/* 03C744 8003BB44 8CA20000 */   lw    $v0, ($a1)

D_8003BB48:
/* 03C748 8003BB48 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 03C74C 8003BB4C AFBF003C */  sw    $ra, 0x3c($sp)
/* 03C750 8003BB50 AFB60038 */  sw    $s6, 0x38($sp)
/* 03C754 8003BB54 AFB50034 */  sw    $s5, 0x34($sp)
/* 03C758 8003BB58 AFB40030 */  sw    $s4, 0x30($sp)
/* 03C75C 8003BB5C AFB3002C */  sw    $s3, 0x2c($sp)
/* 03C760 8003BB60 AFB20028 */  sw    $s2, 0x28($sp)
/* 03C764 8003BB64 AFB10024 */  sw    $s1, 0x24($sp)
/* 03C768 8003BB68 AFB00020 */  sw    $s0, 0x20($sp)
/* 03C76C 8003BB6C F7B60048 */  sdc1  $f22, 0x48($sp)
/* 03C770 8003BB70 F7B40040 */  sdc1  $f20, 0x40($sp)
/* 03C774 8003BB74 0C018CEA */  jal   GetCurrentProcess
/* 03C778 8003BB78 2413FFFF */   li    $s3, -1
/* 03C77C 8003BB7C 8C51008C */  lw    $s1, 0x8c($v0)
/* 03C780 8003BB80 9634000C */  lhu   $s4, 0xc($s1)
/* 03C784 8003BB84 4480B000 */  mtc1  $zero, $f22
/* 03C788 8003BB88 0000A821 */  addu  $s5, $zero, $zero
/* 03C78C 8003BB8C 2416FFFF */  li    $s6, -1
.L8003BB90:
/* 03C790 8003BB90 0C018D6D */  jal   SleepVProcess
/* 03C794 8003BB94 00000000 */   nop   
/* 03C798 8003BB98 00131400 */  sll   $v0, $s3, 0x10
/* 03C79C 8003BB9C 0441005A */  bgez  $v0, .L8003BD08
/* 03C7A0 8003BBA0 00141400 */   sll   $v0, $s4, 0x10
/* 03C7A4 8003BBA4 00151400 */  sll   $v0, $s5, 0x10
/* 03C7A8 8003BBA8 5440000D */  bnezl $v0, .L8003BBE0
/* 03C7AC 8003BBAC AFB60010 */   sw    $s6, 0x10($sp)
/* 03C7B0 8003BBB0 26240010 */  addiu $a0, $s1, 0x10
/* 03C7B4 8003BBB4 27A50010 */  addiu $a1, $sp, 0x10
/* 03C7B8 8003BBB8 0C022278 */  jal   func_800889E0
/* 03C7BC 8003BBBC 00003021 */   addu  $a2, $zero, $zero
/* 03C7C0 8003BBC0 50560001 */  beql  $v0, $s6, .L8003BBC8
/* 03C7C4 8003BBC4 AFA20010 */   sw    $v0, 0x10($sp)
.L8003BBC8:
/* 03C7C8 8003BBC8 96220000 */  lhu   $v0, ($s1)
/* 03C7CC 8003BBCC 30420001 */  andi  $v0, $v0, 1
/* 03C7D0 8003BBD0 54400004 */  bnezl $v0, .L8003BBE4
/* 03C7D4 8003BBD4 24150008 */   li    $s5, 8
/* 03C7D8 8003BBD8 0800EEF9 */  j     func_8003BBE4
/* 03C7DC 8003BBDC 00000000 */   nop   

.L8003BBE0:
/* 03C7E0 8003BBE0 26B5FFFF */  addiu $s5, $s5, -1
glabel func_8003BBE4
.L8003BBE4:
/* 03C7E4 8003BBE4 8FA20010 */  lw    $v0, 0x10($sp)
/* 03C7E8 8003BBE8 24430006 */  addiu $v1, $v0, 6
/* 03C7EC 8003BBEC 2C620006 */  sltiu $v0, $v1, 6
/* 03C7F0 8003BBF0 1040002A */  beqz  $v0, .L8003BC9C
/* 03C7F4 8003BBF4 00031080 */   sll   $v0, $v1, 2
/* 03C7F8 8003BBF8 3C01800D */  lui   $at, 0x800d
/* 03C7FC 8003BBFC 00220821 */  addu  $at, $at, $v0
/* 03C800 8003BC00 8C22AA90 */  lw    $v0, -0x5570($at)
/* 03C804 8003BC04 00400008 */  jr    $v0
/* 03C808 8003BC08 00000000 */   nop   
/* 03C80C 8003BC0C 9622000C */  lhu   $v0, 0xc($s1)
/* 03C810 8003BC10 24420001 */  addiu $v0, $v0, 1
/* 03C814 8003BC14 A622000C */  sh    $v0, 0xc($s1)
/* 03C818 8003BC18 00021400 */  sll   $v0, $v0, 0x10
/* 03C81C 8003BC1C 00021403 */  sra   $v0, $v0, 0x10
/* 03C820 8003BC20 86230002 */  lh    $v1, 2($s1)
/* 03C824 8003BC24 0043102A */  slt   $v0, $v0, $v1
/* 03C828 8003BC28 50400023 */  beql  $v0, $zero, .L8003BCB8
/* 03C82C 8003BC2C A620000C */   sh    $zero, 0xc($s1)
/* 03C830 8003BC30 0800EF2F */  j     func_8003BCBC
/* 03C834 8003BC34 00141400 */   sll   $v0, $s4, 0x10

/* 03C838 8003BC38 9622000C */  lhu   $v0, 0xc($s1)
/* 03C83C 8003BC3C 2442FFFF */  addiu $v0, $v0, -1
/* 03C840 8003BC40 A622000C */  sh    $v0, 0xc($s1)
/* 03C844 8003BC44 00021400 */  sll   $v0, $v0, 0x10
/* 03C848 8003BC48 0443001C */  bgezl $v0, .L8003BCBC
/* 03C84C 8003BC4C 00141400 */   sll   $v0, $s4, 0x10
/* 03C850 8003BC50 96220002 */  lhu   $v0, 2($s1)
/* 03C854 8003BC54 0800EF2D */  j     func_8003BCB4
/* 03C858 8003BC58 2442FFFF */   addiu $v0, $v0, -1

/* 03C85C 8003BC5C 8622000C */  lh    $v0, 0xc($s1)
/* 03C860 8003BC60 04400016 */  bltz  $v0, .L8003BCBC
/* 03C864 8003BC64 00141400 */   sll   $v0, $s4, 0x10
/* 03C868 8003BC68 0C0180AB */  jal   PlaySound
/* 03C86C 8003BC6C 240400F7 */   li    $a0, 247
/* 03C870 8003BC70 3C01800F */  lui   $at, %hi(D_800EE320) # $at, 0x800f
/* 03C874 8003BC74 A420E320 */  sh    $zero, %lo(D_800EE320)($at)
/* 03C878 8003BC78 0800EF2E */  j     func_8003BCB8
/* 03C87C 8003BC7C 2413001E */   li    $s3, 30

/* 03C880 8003BC80 0C0180AB */  jal   PlaySound
/* 03C884 8003BC84 240400F8 */   li    $a0, 248
/* 03C888 8003BC88 A636000C */  sh    $s6, 0xc($s1)
/* 03C88C 8003BC8C 0800EF2E */  j     func_8003BCB8
/* 03C890 8003BC90 00009821 */   addu  $s3, $zero, $zero

/* 03C894 8003BC94 0800EF2E */  j     func_8003BCB8
/* 03C898 8003BC98 A636000C */   sh    $s6, 0xc($s1)

.L8003BC9C:
/* 03C89C 8003BC9C 86230002 */  lh    $v1, 2($s1)
/* 03C8A0 8003BCA0 8FA20010 */  lw    $v0, 0x10($sp)
/* 03C8A4 8003BCA4 0043102A */  slt   $v0, $v0, $v1
/* 03C8A8 8003BCA8 10400004 */  beqz  $v0, .L8003BCBC
/* 03C8AC 8003BCAC 00141400 */   sll   $v0, $s4, 0x10
/* 03C8B0 8003BCB0 97A20012 */  lhu   $v0, 0x12($sp)
glabel func_8003BCB4
/* 03C8B4 8003BCB4 A622000C */  sh    $v0, 0xc($s1)
glabel func_8003BCB8
.L8003BCB8:
/* 03C8B8 8003BCB8 00141400 */  sll   $v0, $s4, 0x10
glabel func_8003BCBC
.L8003BCBC:
/* 03C8BC 8003BCBC 00028403 */  sra   $s0, $v0, 0x10
/* 03C8C0 8003BCC0 8622000C */  lh    $v0, 0xc($s1)
/* 03C8C4 8003BCC4 12020010 */  beq   $s0, $v0, .L8003BD08
/* 03C8C8 8003BCC8 00141400 */   sll   $v0, $s4, 0x10
/* 03C8CC 8003BCCC 0C0180AB */  jal   PlaySound
/* 03C8D0 8003BCD0 240400F5 */   li    $a0, 245
/* 03C8D4 8003BCD4 0600000A */  bltz  $s0, .L8003BD00
/* 03C8D8 8003BCD8 02202021 */   addu  $a0, $s1, $zero
/* 03C8DC 8003BCDC 0C00EECC */  jal   func_8003BB30
/* 03C8E0 8003BCE0 02002821 */   addu  $a1, $s0, $zero
/* 03C8E4 8003BCE4 8C440004 */  lw    $a0, 4($v0)
/* 03C8E8 8003BCE8 24840024 */  addiu $a0, $a0, 0x24
/* 03C8EC 8003BCEC 3C053F80 */  lui   $a1, 0x3f80
/* 03C8F0 8003BCF0 00A03021 */  addu  $a2, $a1, $zero
/* 03C8F4 8003BCF4 0C028340 */  jal   func_800A0D00
/* 03C8F8 8003BCF8 00A03821 */   addu  $a3, $a1, $zero
/* 03C8FC 8003BCFC 4480B000 */  mtc1  $zero, $f22
.L8003BD00:
/* 03C900 8003BD00 9634000C */  lhu   $s4, 0xc($s1)
/* 03C904 8003BD04 00141400 */  sll   $v0, $s4, 0x10
.L8003BD08:
/* 03C908 8003BD08 04400029 */  bltz  $v0, .L8003BDB0
/* 03C90C 8003BD0C 00131400 */   sll   $v0, $s3, 0x10
/* 03C910 8003BD10 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 03C914 8003BD14 44810000 */  mtc1  $at, $f0
/* 03C918 8003BD18 00000000 */  nop   
/* 03C91C 8003BD1C 04420005 */  bltzl $v0, .L8003BD34
/* 03C920 8003BD20 4600B580 */   add.s $f22, $f22, $f0
/* 03C924 8003BD24 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 03C928 8003BD28 44810000 */  mtc1  $at, $f0
/* 03C92C 8003BD2C 00000000 */  nop   
/* 03C930 8003BD30 4600B580 */  add.s $f22, $f22, $f0
.L8003BD34:
/* 03C934 8003BD34 3C0143B4 */  li    $at, 0x43B40000 # 360.000000
/* 03C938 8003BD38 44810000 */  mtc1  $at, $f0
/* 03C93C 8003BD3C 00000000 */  nop   
/* 03C940 8003BD40 4616003C */  c.lt.s $f0, $f22
/* 03C944 8003BD44 00000000 */  nop   
/* 03C948 8003BD48 00000000 */  nop   
/* 03C94C 8003BD4C 45030001 */  bc1tl .L8003BD54
/* 03C950 8003BD50 4600B581 */   sub.s $f22, $f22, $f0
.L8003BD54:
/* 03C954 8003BD54 0C02BBF4 */  jal   func_800AEFD0
/* 03C958 8003BD58 4600B306 */   mov.s $f12, $f22
/* 03C95C 8003BD5C 3C013E99 */  li    $at, 0x3E990000 # 0.298828
/* 03C960 8003BD60 3421999A */  ori   $at, (0x3E99999A & 0xFFFF) # ori $at, $at, 0x999a
/* 03C964 8003BD64 44811000 */  mtc1  $at, $f2
/* 03C968 8003BD68 00000000 */  nop   
/* 03C96C 8003BD6C 46020502 */  mul.s $f20, $f0, $f2
/* 03C970 8003BD70 3C013F99 */  li    $at, 0x3F990000 # 1.195312
/* 03C974 8003BD74 3421999A */  ori   $at, (0x3F99999A & 0xFFFF) # ori $at, $at, 0x999a
/* 03C978 8003BD78 44810000 */  mtc1  $at, $f0
/* 03C97C 8003BD7C 00000000 */  nop   
/* 03C980 8003BD80 4600A500 */  add.s $f20, $f20, $f0
/* 03C984 8003BD84 00142C00 */  sll   $a1, $s4, 0x10
/* 03C988 8003BD88 02202021 */  addu  $a0, $s1, $zero
/* 03C98C 8003BD8C 0C00EECC */  jal   func_8003BB30
/* 03C990 8003BD90 00052C03 */   sra   $a1, $a1, 0x10
/* 03C994 8003BD94 8C440004 */  lw    $a0, 4($v0)
/* 03C998 8003BD98 4405A000 */  mfc1  $a1, $f20
/* 03C99C 8003BD9C 3C063F80 */  lui   $a2, 0x3f80
/* 03C9A0 8003BDA0 4407A000 */  mfc1  $a3, $f20
/* 03C9A4 8003BDA4 00000000 */  nop   
/* 03C9A8 8003BDA8 0C028340 */  jal   func_800A0D00
/* 03C9AC 8003BDAC 24840024 */   addiu $a0, $a0, 0x24
.L8003BDB0:
/* 03C9B0 8003BDB0 00131400 */  sll   $v0, $s3, 0x10
/* 03C9B4 8003BDB4 18400023 */  blez  $v0, .L8003BE44
/* 03C9B8 8003BDB8 00000000 */   nop   
/* 03C9BC 8003BDBC 2662FFFF */  addiu $v0, $s3, -1
/* 03C9C0 8003BDC0 00409821 */  addu  $s3, $v0, $zero
/* 03C9C4 8003BDC4 00021400 */  sll   $v0, $v0, 0x10
/* 03C9C8 8003BDC8 00021403 */  sra   $v0, $v0, 0x10
/* 03C9CC 8003BDCC 4482A000 */  mtc1  $v0, $f20
/* 03C9D0 8003BDD0 00000000 */  nop   
/* 03C9D4 8003BDD4 4680A520 */  cvt.s.w $f20, $f20
/* 03C9D8 8003BDD8 3C013D08 */  li    $at, 0x3D080000 # 0.033203
/* 03C9DC 8003BDDC 34218889 */  ori   $at, (0x3D088889 & 0xFFFF) # ori $at, $at, 0x8889
/* 03C9E0 8003BDE0 44810000 */  mtc1  $at, $f0
/* 03C9E4 8003BDE4 00000000 */  nop   
/* 03C9E8 8003BDE8 4600A502 */  mul.s $f20, $f20, $f0
/* 03C9EC 8003BDEC 86220002 */  lh    $v0, 2($s1)
/* 03C9F0 8003BDF0 18400013 */  blez  $v0, .L8003BE40
/* 03C9F4 8003BDF4 00008021 */   addu  $s0, $zero, $zero
/* 03C9F8 8003BDF8 00141400 */  sll   $v0, $s4, 0x10
/* 03C9FC 8003BDFC 00029403 */  sra   $s2, $v0, 0x10
.L8003BE00:
/* 03CA00 8003BE00 1212000A */  beq   $s0, $s2, .L8003BE2C
/* 03CA04 8003BE04 00102C00 */   sll   $a1, $s0, 0x10
/* 03CA08 8003BE08 02202021 */  addu  $a0, $s1, $zero
/* 03CA0C 8003BE0C 0C00EECC */  jal   func_8003BB30
/* 03CA10 8003BE10 00052C03 */   sra   $a1, $a1, 0x10
/* 03CA14 8003BE14 8C460004 */  lw    $a2, 4($v0)
/* 03CA18 8003BE18 24C60024 */  addiu $a2, $a2, 0x24
/* 03CA1C 8003BE1C 4405A000 */  mfc1  $a1, $f20
/* 03CA20 8003BE20 00000000 */  nop   
/* 03CA24 8003BE24 0C0283C0 */  jal   func_800A0F00
/* 03CA28 8003BE28 00C02021 */   addu  $a0, $a2, $zero
.L8003BE2C:
/* 03CA2C 8003BE2C 26100001 */  addiu $s0, $s0, 1
/* 03CA30 8003BE30 86220002 */  lh    $v0, 2($s1)
/* 03CA34 8003BE34 0202102A */  slt   $v0, $s0, $v0
/* 03CA38 8003BE38 1440FFF1 */  bnez  $v0, .L8003BE00
/* 03CA3C 8003BE3C 00000000 */   nop   
.L8003BE40:
/* 03CA40 8003BE40 00131400 */  sll   $v0, $s3, 0x10
.L8003BE44:
/* 03CA44 8003BE44 1440FF52 */  bnez  $v0, .L8003BB90
/* 03CA48 8003BE48 00000000 */   nop   
/* 03CA4C 8003BE4C 0C017764 */  jal   EndProcess
/* 03CA50 8003BE50 00002021 */   addu  $a0, $zero, $zero
/* 03CA54 8003BE54 8FBF003C */  lw    $ra, 0x3c($sp)
/* 03CA58 8003BE58 8FB60038 */  lw    $s6, 0x38($sp)
/* 03CA5C 8003BE5C 8FB50034 */  lw    $s5, 0x34($sp)
/* 03CA60 8003BE60 8FB40030 */  lw    $s4, 0x30($sp)
/* 03CA64 8003BE64 8FB3002C */  lw    $s3, 0x2c($sp)
/* 03CA68 8003BE68 8FB20028 */  lw    $s2, 0x28($sp)
/* 03CA6C 8003BE6C 8FB10024 */  lw    $s1, 0x24($sp)
/* 03CA70 8003BE70 8FB00020 */  lw    $s0, 0x20($sp)
/* 03CA74 8003BE74 D7B60048 */  ldc1  $f22, 0x48($sp)
/* 03CA78 8003BE78 D7B40040 */  ldc1  $f20, 0x40($sp)
/* 03CA7C 8003BE7C 03E00008 */  jr    $ra
/* 03CA80 8003BE80 27BD0050 */   addiu $sp, $sp, 0x50

glabel func_8003BE84
/* 03CA84 8003BE84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03CA88 8003BE88 AFBF0010 */  sw    $ra, 0x10($sp)
/* 03CA8C 8003BE8C 8C820008 */  lw    $v0, 8($a0)
/* 03CA90 8003BE90 14400003 */  bnez  $v0, .L8003BEA0
/* 03CA94 8003BE94 24840010 */   addiu $a0, $a0, 0x10
/* 03CA98 8003BE98 0800EFAA */  j     func_8003BEA8
/* 03CA9C 8003BE9C 2402FFFF */   li    $v0, -1

.L8003BEA0:
/* 03CAA0 8003BEA0 0C0222C4 */  jal   func_80088B10
/* 03CAA4 8003BEA4 00003021 */   addu  $a2, $zero, $zero
glabel func_8003BEA8
/* 03CAA8 8003BEA8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 03CAAC 8003BEAC 03E00008 */  jr    $ra
/* 03CAB0 8003BEB0 27BD0018 */   addiu $sp, $sp, 0x18

D_8003BEB4:
/* 03CAB4 8003BEB4 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 03CAB8 8003BEB8 AFBF0050 */  sw    $ra, 0x50($sp)
/* 03CABC 8003BEBC AFB5004C */  sw    $s5, 0x4c($sp)
/* 03CAC0 8003BEC0 AFB40048 */  sw    $s4, 0x48($sp)
/* 03CAC4 8003BEC4 AFB30044 */  sw    $s3, 0x44($sp)
/* 03CAC8 8003BEC8 AFB20040 */  sw    $s2, 0x40($sp)
/* 03CACC 8003BECC AFB1003C */  sw    $s1, 0x3c($sp)
/* 03CAD0 8003BED0 AFB00038 */  sw    $s0, 0x38($sp)
/* 03CAD4 8003BED4 F7B40058 */  sdc1  $f20, 0x58($sp)
/* 03CAD8 8003BED8 0C018CEA */  jal   GetCurrentProcess
/* 03CADC 8003BEDC 24140001 */   li    $s4, 1
/* 03CAE0 8003BEE0 8C51008C */  lw    $s1, 0x8c($v0)
/* 03CAE4 8003BEE4 8E350068 */  lw    $s5, 0x68($s1)
/* 03CAE8 8003BEE8 8632000C */  lh    $s2, 0xc($s1)
/* 03CAEC 8003BEEC 27B30020 */  addiu $s3, $sp, 0x20
/* 03CAF0 8003BEF0 3C014218 */  li    $at, 0x42180000 # 38.000000
/* 03CAF4 8003BEF4 4481A000 */  mtc1  $at, $f20
.L8003BEF8:
/* 03CAF8 8003BEF8 0C018D6D */  jal   SleepVProcess
/* 03CAFC 8003BEFC 00000000 */   nop   
/* 03CB00 8003BF00 8622000E */  lh    $v0, 0xe($s1)
/* 03CB04 8003BF04 3C01800F */  lui   $at, 0x800f
/* 03CB08 8003BF08 00220821 */  addu  $at, $at, $v0
/* 03CB0C 8003BF0C 8022CE14 */  lb    $v0, -0x31ec($at)
/* 03CB10 8003BF10 44820000 */  mtc1  $v0, $f0
/* 03CB14 8003BF14 00000000 */  nop   
/* 03CB18 8003BF18 46800020 */  cvt.s.w $f0, $f0
/* 03CB1C 8003BF1C E7A00010 */  swc1  $f0, 0x10($sp)
/* 03CB20 8003BF20 8622000E */  lh    $v0, 0xe($s1)
/* 03CB24 8003BF24 3C01800F */  lui   $at, 0x800f
/* 03CB28 8003BF28 00220821 */  addu  $at, $at, $v0
/* 03CB2C 8003BF2C 80223843 */  lb    $v0, 0x3843($at)
/* 03CB30 8003BF30 44820000 */  mtc1  $v0, $f0
/* 03CB34 8003BF34 00000000 */  nop   
/* 03CB38 8003BF38 46800020 */  cvt.s.w $f0, $f0
/* 03CB3C 8003BF3C 46000007 */  neg.s $f0, $f0
/* 03CB40 8003BF40 E7A00018 */  swc1  $f0, 0x18($sp)
/* 03CB44 8003BF44 AFA00014 */  sw    $zero, 0x14($sp)
/* 03CB48 8003BF48 8624000E */  lh    $a0, 0xe($s1)
/* 03CB4C 8003BF4C 0C01340B */  jal   func_8004D02C
/* 03CB50 8003BF50 3C054220 */   lui   $a1, 0x4220
/* 03CB54 8003BF54 00021400 */  sll   $v0, $v0, 0x10
/* 03CB58 8003BF58 10400022 */  beqz  $v0, .L8003BFE4
/* 03CB5C 8003BF5C 00000000 */   nop   
/* 03CB60 8003BF60 86220002 */  lh    $v0, 2($s1)
/* 03CB64 8003BF64 1840001F */  blez  $v0, .L8003BFE4
/* 03CB68 8003BF68 00008021 */   addu  $s0, $zero, $zero
/* 03CB6C 8003BF6C 00102C00 */  sll   $a1, $s0, 0x10
.L8003BF70:
/* 03CB70 8003BF70 02202021 */  addu  $a0, $s1, $zero
/* 03CB74 8003BF74 0C00EECC */  jal   func_8003BB30
/* 03CB78 8003BF78 00052C03 */   sra   $a1, $a1, 0x10
/* 03CB7C 8003BF7C 8C450004 */  lw    $a1, 4($v0)
/* 03CB80 8003BF80 8EA60020 */  lw    $a2, 0x20($s5)
/* 03CB84 8003BF84 02602021 */  addu  $a0, $s3, $zero
/* 03CB88 8003BF88 24A5000C */  addiu $a1, $a1, 0xc
/* 03CB8C 8003BF8C 0C0283A0 */  jal   func_800A0E80
/* 03CB90 8003BF90 24C6000C */   addiu $a2, $a2, 0xc
/* 03CB94 8003BF94 AFA00024 */  sw    $zero, 0x24($sp)
/* 03CB98 8003BF98 27A40010 */  addiu $a0, $sp, 0x10
/* 03CB9C 8003BF9C 0C00F633 */  jal   func_8003D8CC
/* 03CBA0 8003BFA0 02602821 */   addu  $a1, $s3, $zero
/* 03CBA4 8003BFA4 4614003E */  c.le.s $f0, $f20
/* 03CBA8 8003BFA8 00000000 */  nop   
/* 03CBAC 8003BFAC 00000000 */  nop   
/* 03CBB0 8003BFB0 45020008 */  bc1fl .L8003BFD4
/* 03CBB4 8003BFB4 26100001 */   addiu $s0, $s0, 1
/* 03CBB8 8003BFB8 1250000A */  beq   $s2, $s0, .L8003BFE4
/* 03CBBC 8003BFBC 02202021 */   addu  $a0, $s1, $zero
/* 03CBC0 8003BFC0 02009021 */  addu  $s2, $s0, $zero
/* 03CBC4 8003BFC4 0C00EFA1 */  jal   func_8003BE84
/* 03CBC8 8003BFC8 02402821 */   addu  $a1, $s2, $zero
/* 03CBCC 8003BFCC 0800EFF9 */  j     func_8003BFE4
/* 03CBD0 8003BFD0 00000000 */   nop   

.L8003BFD4:
/* 03CBD4 8003BFD4 86220002 */  lh    $v0, 2($s1)
/* 03CBD8 8003BFD8 0202102A */  slt   $v0, $s0, $v0
/* 03CBDC 8003BFDC 1440FFE4 */  bnez  $v0, .L8003BF70
/* 03CBE0 8003BFE0 00102C00 */   sll   $a1, $s0, 0x10
glabel func_8003BFE4
.L8003BFE4:
/* 03CBE4 8003BFE4 8622000E */  lh    $v0, 0xe($s1)
/* 03CBE8 8003BFE8 00021040 */  sll   $v0, $v0, 1
/* 03CBEC 8003BFEC 3C03800F */  lui   $v1, 0x800f
/* 03CBF0 8003BFF0 00621821 */  addu  $v1, $v1, $v0
/* 03CBF4 8003BFF4 9463C6EA */  lhu   $v1, -0x3916($v1)
/* 03CBF8 8003BFF8 00031BC2 */  srl   $v1, $v1, 0xf
/* 03CBFC 8003BFFC 00121027 */  nor   $v0, $zero, $s2
/* 03CC00 8003C000 000217C2 */  srl   $v0, $v0, 0x1f
/* 03CC04 8003C004 00621824 */  and   $v1, $v1, $v0
/* 03CC08 8003C008 10600007 */  beqz  $v1, .L8003C028
/* 03CC0C 8003C00C 02801021 */   addu  $v0, $s4, $zero
/* 03CC10 8003C010 2412FFFC */  li    $s2, -4
/* 03CC14 8003C014 02202021 */  addu  $a0, $s1, $zero
/* 03CC18 8003C018 0C00EFA1 */  jal   func_8003BE84
/* 03CC1C 8003C01C 2405FFFC */   li    $a1, -4
/* 03CC20 8003C020 0000A021 */  addu  $s4, $zero, $zero
/* 03CC24 8003C024 02801021 */  addu  $v0, $s4, $zero
.L8003C028:
/* 03CC28 8003C028 1440FFB3 */  bnez  $v0, .L8003BEF8
/* 03CC2C 8003C02C 00000000 */   nop   
/* 03CC30 8003C030 0C017764 */  jal   EndProcess
/* 03CC34 8003C034 00002021 */   addu  $a0, $zero, $zero
/* 03CC38 8003C038 8FBF0050 */  lw    $ra, 0x50($sp)
/* 03CC3C 8003C03C 8FB5004C */  lw    $s5, 0x4c($sp)
/* 03CC40 8003C040 8FB40048 */  lw    $s4, 0x48($sp)
/* 03CC44 8003C044 8FB30044 */  lw    $s3, 0x44($sp)
/* 03CC48 8003C048 8FB20040 */  lw    $s2, 0x40($sp)
/* 03CC4C 8003C04C 8FB1003C */  lw    $s1, 0x3c($sp)
/* 03CC50 8003C050 8FB00038 */  lw    $s0, 0x38($sp)
/* 03CC54 8003C054 D7B40058 */  ldc1  $f20, 0x58($sp)
/* 03CC58 8003C058 03E00008 */  jr    $ra
/* 03CC5C 8003C05C 27BD0060 */   addiu $sp, $sp, 0x60

InitDirArrows:
glabel func_8003C060
/* 03CC60 8003C060 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03CC64 8003C064 AFBF001C */  sw    $ra, 0x1c($sp)
/* 03CC68 8003C068 AFB20018 */  sw    $s2, 0x18($sp)
/* 03CC6C 8003C06C AFB10014 */  sw    $s1, 0x14($sp)
/* 03CC70 8003C070 AFB00010 */  sw    $s0, 0x10($sp)
/* 03CC74 8003C074 00808021 */  addu  $s0, $a0, $zero
/* 03CC78 8003C078 00A09021 */  addu  $s2, $a1, $zero
/* 03CC7C 8003C07C 8E020008 */  lw    $v0, 8($s0)
/* 03CC80 8003C080 1440002B */  bnez  $v0, .L8003C130
/* 03CC84 8003C084 00C08821 */   addu  $s1, $a2, $zero
/* 03CC88 8003C088 3C048004 */  lui   $a0, %hi(D_8003BB48) # $a0, 0x8004
/* 03CC8C 8003C08C 2484BB48 */  addiu $a0, %lo(D_8003BB48) # addiu $a0, $a0, -0x44b8
/* 03CC90 8003C090 3405EFFF */  li    $a1, 61439
/* 03CC94 8003C094 00003021 */  addu  $a2, $zero, $zero
/* 03CC98 8003C098 0C01770A */  jal   InitProcess
/* 03CC9C 8003C09C 00003821 */   addu  $a3, $zero, $zero
/* 03CCA0 8003C0A0 AE020008 */  sw    $v0, 8($s0)
/* 03CCA4 8003C0A4 AC50008C */  sw    $s0, 0x8c($v0)
/* 03CCA8 8003C0A8 26040010 */  addiu $a0, $s0, 0x10
/* 03CCAC 8003C0AC 26050028 */  addiu $a1, $s0, 0x28
/* 03CCB0 8003C0B0 0C022188 */  jal   func_80088620
/* 03CCB4 8003C0B4 24060010 */   li    $a2, 16
/* 03CCB8 8003C0B8 96020000 */  lhu   $v0, ($s0)
/* 03CCBC 8003C0BC 02221025 */  or    $v0, $s1, $v0
/* 03CCC0 8003C0C0 A6020000 */  sh    $v0, ($s0)
/* 03CCC4 8003C0C4 00122400 */  sll   $a0, $s2, 0x10
/* 03CCC8 8003C0C8 0C014AA3 */  jal   GetPlayerStruct
/* 03CCCC 8003C0CC 00042403 */   sra   $a0, $a0, 0x10
/* 03CCD0 8003C0D0 00408821 */  addu  $s1, $v0, $zero
/* 03CCD4 8003C0D4 96220006 */  lhu   $v0, 6($s1)
/* 03CCD8 8003C0D8 30420001 */  andi  $v0, $v0, 1
/* 03CCDC 8003C0DC 10400008 */  beqz  $v0, .L8003C100
/* 03CCE0 8003C0E0 02002021 */   addu  $a0, $s0, $zero
/* 03CCE4 8003C0E4 96020000 */  lhu   $v0, ($s0)
/* 03CCE8 8003C0E8 34420001 */  ori   $v0, $v0, 1
/* 03CCEC 8003C0EC A6020000 */  sh    $v0, ($s0)
/* 03CCF0 8003C0F0 0C00EFA1 */  jal   func_8003BE84
/* 03CCF4 8003C0F4 2405FFFF */   li    $a1, -1
/* 03CCF8 8003C0F8 0800F049 */  j     func_8003C124
/* 03CCFC 8003C0FC 00000000 */   nop   

.L8003C100:
/* 03CD00 8003C100 92220003 */  lbu   $v0, 3($s1)
/* 03CD04 8003C104 A602000E */  sh    $v0, 0xe($s0)
/* 03CD08 8003C108 3C048004 */  lui   $a0, %hi(D_8003BEB4) # $a0, 0x8004
/* 03CD0C 8003C10C 2484BEB4 */  addiu $a0, %lo(D_8003BEB4) # addiu $a0, $a0, -0x414c
/* 03CD10 8003C110 3405EFFF */  li    $a1, 61439
/* 03CD14 8003C114 00003021 */  addu  $a2, $zero, $zero
/* 03CD18 8003C118 0C01770A */  jal   InitProcess
/* 03CD1C 8003C11C 00003821 */   addu  $a3, $zero, $zero
/* 03CD20 8003C120 AC50008C */  sw    $s0, 0x8c($v0)
glabel func_8003C124
/* 03CD24 8003C124 96220006 */  lhu   $v0, 6($s1)
/* 03CD28 8003C128 0800F04D */  j     func_8003C134
/* 03CD2C 8003C12C 30420001 */   andi  $v0, $v0, 1

.L8003C130:
/* 03CD30 8003C130 2402FFFF */  li    $v0, -1
glabel func_8003C134
/* 03CD34 8003C134 8FBF001C */  lw    $ra, 0x1c($sp)
/* 03CD38 8003C138 8FB20018 */  lw    $s2, 0x18($sp)
/* 03CD3C 8003C13C 8FB10014 */  lw    $s1, 0x14($sp)
/* 03CD40 8003C140 8FB00010 */  lw    $s0, 0x10($sp)
/* 03CD44 8003C144 03E00008 */  jr    $ra
/* 03CD48 8003C148 27BD0020 */   addiu $sp, $sp, 0x20

DirectionPrompt:
/* 03CD4C 8003C14C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03CD50 8003C150 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03CD54 8003C154 AFB00010 */  sw    $s0, 0x10($sp)
/* 03CD58 8003C158 00808021 */  addu  $s0, $a0, $zero
/* 03CD5C 8003C15C 8E020008 */  lw    $v0, 8($s0)
/* 03CD60 8003C160 10400008 */  beqz  $v0, .L8003C184
/* 03CD64 8003C164 00000000 */   nop   
/* 03CD68 8003C168 0C018CEA */  jal   GetCurrentProcess
/* 03CD6C 8003C16C 00000000 */   nop   
/* 03CD70 8003C170 8E050008 */  lw    $a1, 8($s0)
/* 03CD74 8003C174 0C018C9C */  jal   LinkChildProcess
/* 03CD78 8003C178 00402021 */   addu  $a0, $v0, $zero
/* 03CD7C 8003C17C 0C018CD6 */  jal   WaitForChildProcess
/* 03CD80 8003C180 00000000 */   nop   
.L8003C184:
/* 03CD84 8003C184 8602000C */  lh    $v0, 0xc($s0)
/* 03CD88 8003C188 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03CD8C 8003C18C 8FB00010 */  lw    $s0, 0x10($sp)
/* 03CD90 8003C190 03E00008 */  jr    $ra
/* 03CD94 8003C194 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_8003C198
/* 03CD98 8003C198 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 03CD9C 8003C19C AFBF0028 */  sw    $ra, 0x28($sp)
/* 03CDA0 8003C1A0 AFB10024 */  sw    $s1, 0x24($sp)
/* 03CDA4 8003C1A4 AFB00020 */  sw    $s0, 0x20($sp)
/* 03CDA8 8003C1A8 F7B40030 */  sdc1  $f20, 0x30($sp)
/* 03CDAC 8003C1AC 00808021 */  addu  $s0, $a0, $zero
/* 03CDB0 8003C1B0 00A08821 */  addu  $s1, $a1, $zero
/* 03CDB4 8003C1B4 4487A000 */  mtc1  $a3, $f20
/* 03CDB8 8003C1B8 02202021 */  addu  $a0, $s1, $zero
/* 03CDBC 8003C1BC 00C02821 */  addu  $a1, $a2, $zero
/* 03CDC0 8003C1C0 0C013334 */  jal   func_8004CCD0
/* 03CDC4 8003C1C4 27A60010 */   addiu $a2, $sp, 0x10
/* 03CDC8 8003C1C8 8E040004 */  lw    $a0, 4($s0)
/* 03CDCC 8003C1CC 24840018 */  addiu $a0, $a0, 0x18
/* 03CDD0 8003C1D0 0C028354 */  jal   func_800A0D50
/* 03CDD4 8003C1D4 27A50010 */   addiu $a1, $sp, 0x10
/* 03CDD8 8003C1D8 27A40010 */  addiu $a0, $sp, 0x10
/* 03CDDC 8003C1DC 4405A000 */  mfc1  $a1, $f20
/* 03CDE0 8003C1E0 00000000 */  nop   
/* 03CDE4 8003C1E4 0C0283C0 */  jal   func_800A0F00
/* 03CDE8 8003C1E8 00803021 */   addu  $a2, $a0, $zero
/* 03CDEC 8003C1EC 8E040004 */  lw    $a0, 4($s0)
/* 03CDF0 8003C1F0 2484000C */  addiu $a0, $a0, 0xc
/* 03CDF4 8003C1F4 27A50010 */  addiu $a1, $sp, 0x10
/* 03CDF8 8003C1F8 0C028380 */  jal   func_800A0E00
/* 03CDFC 8003C1FC 02203021 */   addu  $a2, $s1, $zero
/* 03CE00 8003C200 8FBF0028 */  lw    $ra, 0x28($sp)
/* 03CE04 8003C204 8FB10024 */  lw    $s1, 0x24($sp)
/* 03CE08 8003C208 8FB00020 */  lw    $s0, 0x20($sp)
/* 03CE0C 8003C20C D7B40030 */  ldc1  $f20, 0x30($sp)
/* 03CE10 8003C210 03E00008 */  jr    $ra
/* 03CE14 8003C214 27BD0038 */   addiu $sp, $sp, 0x38

SpawnDirArrows:
glabel func_8003C218
/* 03CE18 8003C218 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03CE1C 8003C21C AFBF0020 */  sw    $ra, 0x20($sp)
/* 03CE20 8003C220 AFB3001C */  sw    $s3, 0x1c($sp)
/* 03CE24 8003C224 AFB20018 */  sw    $s2, 0x18($sp)
/* 03CE28 8003C228 AFB10014 */  sw    $s1, 0x14($sp)
/* 03CE2C 8003C22C AFB00010 */  sw    $s0, 0x10($sp)
/* 03CE30 8003C230 00A08821 */  addu  $s1, $a1, $zero
/* 03CE34 8003C234 00042400 */  sll   $a0, $a0, 0x10
/* 03CE38 8003C238 0C014AA3 */  jal   GetPlayerStruct
/* 03CE3C 8003C23C 00042403 */   sra   $a0, $a0, 0x10
/* 03CE40 8003C240 0C00EE35 */  jal   func_8003B8D4
/* 03CE44 8003C244 00409821 */   addu  $s3, $v0, $zero
/* 03CE48 8003C248 00409021 */  addu  $s2, $v0, $zero
/* 03CE4C 8003C24C AE530068 */  sw    $s3, 0x68($s2)
/* 03CE50 8003C250 86220000 */  lh    $v0, ($s1)
/* 03CE54 8003C254 04400014 */  bltz  $v0, .L8003C2A8
/* 03CE58 8003C258 02401021 */   addu  $v0, $s2, $zero
.L8003C25C:
/* 03CE5C 8003C25C 0C00EE08 */  jal   func_8003B820
/* 03CE60 8003C260 00000000 */   nop   
/* 03CE64 8003C264 86240000 */  lh    $a0, ($s1)
/* 03CE68 8003C268 0C01307B */  jal   GetSpaceData
/* 03CE6C 8003C26C 00408021 */   addu  $s0, $v0, $zero
/* 03CE70 8003C270 8E650020 */  lw    $a1, 0x20($s3)
/* 03CE74 8003C274 02002021 */  addu  $a0, $s0, $zero
/* 03CE78 8003C278 24A5000C */  addiu $a1, $a1, 0xc
/* 03CE7C 8003C27C 3C074348 */  lui   $a3, 0x4348
/* 03CE80 8003C280 0C00F066 */  jal   func_8003C198
/* 03CE84 8003C284 24460004 */   addiu $a2, $v0, 4
/* 03CE88 8003C288 02402021 */  addu  $a0, $s2, $zero
/* 03CE8C 8003C28C 02002821 */  addu  $a1, $s0, $zero
/* 03CE90 8003C290 0C00EE65 */  jal   func_8003B994
/* 03CE94 8003C294 00003021 */   addu  $a2, $zero, $zero
/* 03CE98 8003C298 26310002 */  addiu $s1, $s1, 2
/* 03CE9C 8003C29C 86220000 */  lh    $v0, ($s1)
/* 03CEA0 8003C2A0 0441FFEE */  bgez  $v0, .L8003C25C
/* 03CEA4 8003C2A4 02401021 */   addu  $v0, $s2, $zero
.L8003C2A8:
/* 03CEA8 8003C2A8 8FBF0020 */  lw    $ra, 0x20($sp)
/* 03CEAC 8003C2AC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 03CEB0 8003C2B0 8FB20018 */  lw    $s2, 0x18($sp)
/* 03CEB4 8003C2B4 8FB10014 */  lw    $s1, 0x14($sp)
/* 03CEB8 8003C2B8 8FB00010 */  lw    $s0, 0x10($sp)
/* 03CEBC 8003C2BC 03E00008 */  jr    $ra
/* 03CEC0 8003C2C0 27BD0028 */   addiu $sp, $sp, 0x28

/* 03CEC4 8003C2C4 00000000 */  nop   
/* 03CEC8 8003C2C8 00000000 */  nop   
/* 03CECC 8003C2CC 00000000 */  nop   
