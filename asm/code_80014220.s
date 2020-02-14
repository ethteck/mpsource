# Mario Party (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "globals.inc"
.include "macros.inc"

glabel func_80014220
/* 014E20 80014220 00003821 */  addu  $a3, $zero, $zero
/* 014E24 80014224 3C0C800F */  lui   $t4, %hi(D_800F544C) # $t4, 0x800f
/* 014E28 80014228 258C544C */  addiu $t4, %lo(D_800F544C) # addiu $t4, $t4, 0x544c
/* 014E2C 8001422C 3C0B800F */  lui   $t3, %hi(D_800F3396) # $t3, 0x800f
/* 014E30 80014230 256B3396 */  addiu $t3, %lo(D_800F3396) # addiu $t3, $t3, 0x3396
/* 014E34 80014234 3C0A800F */  lui   $t2, %hi(D_800EC6EA) # $t2, 0x800f
/* 014E38 80014238 254AC6EA */  addiu $t2, %lo(D_800EC6EA) # addiu $t2, $t2, -0x3916
/* 014E3C 8001423C 3C09800F */  lui   $t1, %hi(D_800F2CF0) # $t1, 0x800f
/* 014E40 80014240 25292CF0 */  addiu $t1, %lo(D_800F2CF0) # addiu $t1, $t1, 0x2cf0
/* 014E44 80014244 3C08800F */  lui   $t0, %hi(D_800F32A4) # $t0, 0x800f
/* 014E48 80014248 250832A4 */  addiu $t0, %lo(D_800F32A4) # addiu $t0, $t0, 0x32a4
.L8001424C:
/* 014E4C 8001424C 00071400 */  sll   $v0, $a3, 0x10
/* 014E50 80014250 000213C3 */  sra   $v0, $v0, 0xf
/* 014E54 80014254 004C3021 */  addu  $a2, $v0, $t4
/* 014E58 80014258 004B2821 */  addu  $a1, $v0, $t3
/* 014E5C 8001425C 004A2021 */  addu  $a0, $v0, $t2
/* 014E60 80014260 00491821 */  addu  $v1, $v0, $t1
/* 014E64 80014264 00481021 */  addu  $v0, $v0, $t0
/* 014E68 80014268 A4400000 */  sh    $zero, ($v0)
/* 014E6C 8001426C A4600000 */  sh    $zero, ($v1)
/* 014E70 80014270 A4800000 */  sh    $zero, ($a0)
/* 014E74 80014274 A4A00000 */  sh    $zero, ($a1)
/* 014E78 80014278 24E20001 */  addiu $v0, $a3, 1
/* 014E7C 8001427C 00403821 */  addu  $a3, $v0, $zero
/* 014E80 80014280 00021400 */  sll   $v0, $v0, 0x10
/* 014E84 80014284 00021403 */  sra   $v0, $v0, 0x10
/* 014E88 80014288 28420004 */  slti  $v0, $v0, 4
/* 014E8C 8001428C 1440FFEF */  bnez  $v0, .L8001424C
/* 014E90 80014290 A4C00000 */   sh    $zero, ($a2)
/* 014E94 80014294 03E00008 */  jr    $ra
/* 014E98 80014298 00000000 */   nop   

glabel func_8001429C
/* 014E9C 8001429C 27BDFFF8 */  addiu $sp, $sp, -8
/* 014EA0 800142A0 00004021 */  addu  $t0, $zero, $zero
/* 014EA4 800142A4 3C0D800F */  lui   $t5, %hi(D_800F3396) # $t5, 0x800f
/* 014EA8 800142A8 25AD3396 */  addiu $t5, %lo(D_800F3396) # addiu $t5, $t5, 0x3396
/* 014EAC 800142AC 3C0C800F */  lui   $t4, %hi(D_800F544C) # $t4, 0x800f
/* 014EB0 800142B0 258C544C */  addiu $t4, %lo(D_800F544C) # addiu $t4, $t4, 0x544c
/* 014EB4 800142B4 3C0E800F */  lui   $t6, %hi(D_800EDEB4) # $t6, 0x800f
/* 014EB8 800142B8 25CEDEB4 */  addiu $t6, %lo(D_800EDEB4) # addiu $t6, $t6, -0x214c
/* 014EBC 800142BC 3C0B800F */  lui   $t3, %hi(D_800EC6EA) # $t3, 0x800f
/* 014EC0 800142C0 256BC6EA */  addiu $t3, %lo(D_800EC6EA) # addiu $t3, $t3, -0x3916
/* 014EC4 800142C4 3C0A800F */  lui   $t2, %hi(D_800F32A4) # $t2, 0x800f
/* 014EC8 800142C8 254A32A4 */  addiu $t2, %lo(D_800F32A4) # addiu $t2, $t2, 0x32a4
/* 014ECC 800142CC 3C09800F */  lui   $t1, %hi(D_800F2CF0) # $t1, 0x800f
/* 014ED0 800142D0 25292CF0 */  addiu $t1, %lo(D_800F2CF0) # addiu $t1, $t1, 0x2cf0
/* 014ED4 800142D4 00082400 */  sll   $a0, $t0, 0x10
.L800142D8:
/* 014ED8 800142D8 00042403 */  sra   $a0, $a0, 0x10
/* 014EDC 800142DC 00041840 */  sll   $v1, $a0, 1
/* 014EE0 800142E0 006D2821 */  addu  $a1, $v1, $t5
/* 014EE4 800142E4 006C1021 */  addu  $v0, $v1, $t4
/* 014EE8 800142E8 94420000 */  lhu   $v0, ($v0)
/* 014EEC 800142EC A4A20000 */  sh    $v0, ($a1)
/* 014EF0 800142F0 006E1821 */  addu  $v1, $v1, $t6
/* 014EF4 800142F4 94660000 */  lhu   $a2, ($v1)
/* 014EF8 800142F8 3C02800F */  lui   $v0, 0x800f
/* 014EFC 800142FC 00441021 */  addu  $v0, $v0, $a0
/* 014F00 80014300 9042CE14 */  lbu   $v0, -0x31ec($v0)
/* 014F04 80014304 00021600 */  sll   $v0, $v0, 0x18
/* 014F08 80014308 00021E03 */  sra   $v1, $v0, 0x18
/* 014F0C 8001430C 000217C3 */  sra   $v0, $v0, 0x1f
/* 014F10 80014310 34420001 */  ori   $v0, $v0, 1
/* 014F14 80014314 00620018 */  mult  $v1, $v0
/* 014F18 80014318 00001812 */  mflo  $v1
/* 014F1C 8001431C 2463FFE2 */  addiu $v1, $v1, -0x1e
/* 014F20 80014320 00000000 */  nop   
/* 014F24 80014324 58600008 */  blezl $v1, .L80014348
/* 014F28 80014328 00081400 */   sll   $v0, $t0, 0x10
/* 014F2C 8001432C 18400003 */  blez  $v0, .L8001433C
/* 014F30 80014330 30C2FDFF */   andi  $v0, $a2, 0xfdff
/* 014F34 80014334 080050D1 */  j     func_80014344
/* 014F38 80014338 34460100 */   ori   $a2, $v0, 0x100

.L8001433C:
/* 014F3C 8001433C 30C2FEFF */  andi  $v0, $a2, 0xfeff
/* 014F40 80014340 34460200 */  ori   $a2, $v0, 0x200
glabel func_80014344
/* 014F44 80014344 00081400 */  sll   $v0, $t0, 0x10
.L80014348:
/* 014F48 80014348 00021403 */  sra   $v0, $v0, 0x10
/* 014F4C 8001434C 3C01800F */  lui   $at, 0x800f
/* 014F50 80014350 00220821 */  addu  $at, $at, $v0
/* 014F54 80014354 90223843 */  lbu   $v0, 0x3843($at)
/* 014F58 80014358 00021600 */  sll   $v0, $v0, 0x18
/* 014F5C 8001435C 00021E03 */  sra   $v1, $v0, 0x18
/* 014F60 80014360 000217C3 */  sra   $v0, $v0, 0x1f
/* 014F64 80014364 34420001 */  ori   $v0, $v0, 1
/* 014F68 80014368 00620018 */  mult  $v1, $v0
/* 014F6C 8001436C 00001812 */  mflo  $v1
/* 014F70 80014370 2463FFE2 */  addiu $v1, $v1, -0x1e
/* 014F74 80014374 00000000 */  nop   
/* 014F78 80014378 58600008 */  blezl $v1, .L8001439C
/* 014F7C 8001437C 00081400 */   sll   $v0, $t0, 0x10
/* 014F80 80014380 18400003 */  blez  $v0, .L80014390
/* 014F84 80014384 30C2FBFF */   andi  $v0, $a2, 0xfbff
/* 014F88 80014388 080050E6 */  j     func_80014398
/* 014F8C 8001438C 34460800 */   ori   $a2, $v0, 0x800

.L80014390:
/* 014F90 80014390 30C2F7FF */  andi  $v0, $a2, 0xf7ff
/* 014F94 80014394 34460400 */  ori   $a2, $v0, 0x400
glabel func_80014398
/* 014F98 80014398 00081400 */  sll   $v0, $t0, 0x10
.L8001439C:
/* 014F9C 8001439C 00022BC3 */  sra   $a1, $v0, 0xf
/* 014FA0 800143A0 00AC1021 */  addu  $v0, $a1, $t4
/* 014FA4 800143A4 A4460000 */  sh    $a2, ($v0)
/* 014FA8 800143A8 00AB3821 */  addu  $a3, $a1, $t3
/* 014FAC 800143AC 00AD2021 */  addu  $a0, $a1, $t5
/* 014FB0 800143B0 94820000 */  lhu   $v0, ($a0)
/* 014FB4 800143B4 00C21026 */  xor   $v0, $a2, $v0
/* 014FB8 800143B8 00C21024 */  and   $v0, $a2, $v0
/* 014FBC 800143BC A4E20000 */  sh    $v0, ($a3)
/* 014FC0 800143C0 30C3FFFF */  andi  $v1, $a2, 0xffff
/* 014FC4 800143C4 94820000 */  lhu   $v0, ($a0)
/* 014FC8 800143C8 10620007 */  beq   $v1, $v0, .L800143E8
/* 014FCC 800143CC 2402000F */   li    $v0, 15
/* 014FD0 800143D0 00AA1821 */  addu  $v1, $a1, $t2
/* 014FD4 800143D4 A4620000 */  sh    $v0, ($v1)
/* 014FD8 800143D8 00A91821 */  addu  $v1, $a1, $t1
/* 014FDC 800143DC 94E20000 */  lhu   $v0, ($a3)
/* 014FE0 800143E0 0800510E */  j     func_80014438
/* 014FE4 800143E4 A4620000 */   sh    $v0, ($v1)

.L800143E8:
/* 014FE8 800143E8 00081400 */  sll   $v0, $t0, 0x10
/* 014FEC 800143EC 000223C3 */  sra   $a0, $v0, 0xf
/* 014FF0 800143F0 008A2821 */  addu  $a1, $a0, $t2
/* 014FF4 800143F4 84A20000 */  lh    $v0, ($a1)
/* 014FF8 800143F8 18400008 */  blez  $v0, .L8001441C
/* 014FFC 800143FC 00401821 */   addu  $v1, $v0, $zero
/* 015000 80014400 2462FFFF */  addiu $v0, $v1, -1
/* 015004 80014404 A4A20000 */  sh    $v0, ($a1)
/* 015008 80014408 00891821 */  addu  $v1, $a0, $t1
/* 01500C 8001440C 008B1021 */  addu  $v0, $a0, $t3
/* 015010 80014410 94420000 */  lhu   $v0, ($v0)
/* 015014 80014414 0800510E */  j     func_80014438
/* 015018 80014418 A4620000 */   sh    $v0, ($v1)

.L8001441C:
/* 01501C 8001441C 00081400 */  sll   $v0, $t0, 0x10
/* 015020 80014420 000213C3 */  sra   $v0, $v0, 0xf
/* 015024 80014424 004A2021 */  addu  $a0, $v0, $t2
/* 015028 80014428 24030005 */  li    $v1, 5
/* 01502C 8001442C A4830000 */  sh    $v1, ($a0)
/* 015030 80014430 00491021 */  addu  $v0, $v0, $t1
/* 015034 80014434 A4460000 */  sh    $a2, ($v0)
glabel func_80014438
/* 015038 80014438 25020001 */  addiu $v0, $t0, 1
/* 01503C 8001443C 00404021 */  addu  $t0, $v0, $zero
/* 015040 80014440 00021400 */  sll   $v0, $v0, 0x10
/* 015044 80014444 00021403 */  sra   $v0, $v0, 0x10
/* 015048 80014448 28420004 */  slti  $v0, $v0, 4
/* 01504C 8001444C 1440FFA2 */  bnez  $v0, .L800142D8
/* 015050 80014450 00082400 */   sll   $a0, $t0, 0x10
/* 015054 80014454 27BD0008 */  addiu $sp, $sp, 8
/* 015058 80014458 03E00008 */  jr    $ra
/* 01505C 8001445C 00000000 */   nop   

glabel func_80014460
/* 015060 80014460 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 015064 80014464 AFBF0018 */  sw    $ra, 0x18($sp)
/* 015068 80014468 AFB10014 */  sw    $s1, 0x14($sp)
/* 01506C 8001446C AFB00010 */  sw    $s0, 0x10($sp)
/* 015070 80014470 00808821 */  addu  $s1, $a0, $zero
/* 015074 80014474 3C01800D */  lui   $at, %hi(D_800D12F0) # $at, 0x800d
/* 015078 80014478 AC3112F0 */  sw    $s1, %lo(D_800D12F0)($at)
/* 01507C 8001447C 3C10800D */  lui   $s0, %hi(D_800D1310) # $s0, 0x800d
/* 015080 80014480 26101310 */  addiu $s0, %lo(D_800D1310) # addiu $s0, $s0, 0x1310
/* 015084 80014484 02002821 */  addu  $a1, $s0, $zero
/* 015088 80014488 0C0187FA */  jal   func_80061FE8
/* 01508C 8001448C 24060010 */   li    $a2, 16
/* 015090 80014490 8E100000 */  lw    $s0, ($s0)
/* 015094 80014494 3C01800D */  lui   $at, %hi(D_800D12F4) # $at, 0x800d
/* 015098 80014498 AC3012F4 */  sw    $s0, %lo(D_800D12F4)($at)
/* 01509C 8001449C 00108080 */  sll   $s0, $s0, 2
/* 0150A0 800144A0 0C00EDA9 */  jal   MallocPerm
/* 0150A4 800144A4 02002021 */   addu  $a0, $s0, $zero
/* 0150A8 800144A8 3C01800D */  lui   $at, %hi(D_800D12F8) # $at, 0x800d
/* 0150AC 800144AC AC2212F8 */  sw    $v0, %lo(D_800D12F8)($at)
/* 0150B0 800144B0 26240004 */  addiu $a0, $s1, 4
/* 0150B4 800144B4 00402821 */  addu  $a1, $v0, $zero
/* 0150B8 800144B8 0C0187FA */  jal   func_80061FE8
/* 0150BC 800144BC 02003021 */   addu  $a2, $s0, $zero
/* 0150C0 800144C0 3C02800D */  lui   $v0, %hi(D_800D12F0) # $v0, 0x800d
/* 0150C4 800144C4 8C4212F0 */  lw    $v0, %lo(D_800D12F0)($v0)
/* 0150C8 800144C8 3C01800D */  lui   $at, %hi(D_800D12FC) # $at, 0x800d
/* 0150CC 800144CC AC2212FC */  sw    $v0, %lo(D_800D12FC)($at)
/* 0150D0 800144D0 3C02800D */  lui   $v0, %hi(D_800D12F4) # $v0, 0x800d
/* 0150D4 800144D4 8C4212F4 */  lw    $v0, %lo(D_800D12F4)($v0)
/* 0150D8 800144D8 3C01800D */  lui   $at, %hi(D_800D1300) # $at, 0x800d
/* 0150DC 800144DC AC221300 */  sw    $v0, %lo(D_800D1300)($at)
/* 0150E0 800144E0 3C02800D */  lui   $v0, %hi(D_800D12F8) # $v0, 0x800d
/* 0150E4 800144E4 8C4212F8 */  lw    $v0, %lo(D_800D12F8)($v0)
/* 0150E8 800144E8 3C01800D */  lui   $at, %hi(D_800D1304) # $at, 0x800d
/* 0150EC 800144EC AC221304 */  sw    $v0, %lo(D_800D1304)($at)
/* 0150F0 800144F0 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0150F4 800144F4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0150F8 800144F8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0150FC 800144FC 03E00008 */  jr    $ra
/* 015100 80014500 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_80014504
/* 015104 80014504 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 015108 80014508 AFBF0018 */  sw    $ra, 0x18($sp)
/* 01510C 8001450C AFB10014 */  sw    $s1, 0x14($sp)
/* 015110 80014510 AFB00010 */  sw    $s0, 0x10($sp)
/* 015114 80014514 3C11800D */  lui   $s1, %hi(D_800D1310) # $s1, 0x800d
/* 015118 80014518 26311310 */  addiu $s1, %lo(D_800D1310) # addiu $s1, $s1, 0x1310
/* 01511C 8001451C 2402002E */  li    $v0, 46
/* 015120 80014520 1082000A */  beq   $a0, $v0, .L8001454C
/* 015124 80014524 00C08021 */   addu  $s0, $a2, $zero
/* 015128 80014528 2402002F */  li    $v0, 47
/* 01512C 8001452C 14820010 */  bne   $a0, $v0, .L80014570
/* 015130 80014530 00051080 */   sll   $v0, $a1, 2
/* 015134 80014534 3C03800D */  lui   $v1, %hi(D_800D12F8) # $v1, 0x800d
/* 015138 80014538 8C6312F8 */  lw    $v1, %lo(D_800D12F8)($v1)
/* 01513C 8001453C 00431021 */  addu  $v0, $v0, $v1
/* 015140 80014540 3C03800D */  lui   $v1, %hi(D_800D12F0) # $v1, 0x800d
/* 015144 80014544 08005159 */  j     func_80014564
/* 015148 80014548 8C6312F0 */   lw    $v1, %lo(D_800D12F0)($v1)

.L8001454C:
/* 01514C 8001454C 3C03800D */  lui   $v1, %hi(D_800D1304) # $v1, 0x800d
/* 015150 80014550 8C631304 */  lw    $v1, %lo(D_800D1304)($v1)
/* 015154 80014554 00051080 */  sll   $v0, $a1, 2
/* 015158 80014558 00431021 */  addu  $v0, $v0, $v1
/* 01515C 8001455C 3C03800D */  lui   $v1, %hi(D_800D12FC) # $v1, 0x800d
/* 015160 80014560 8C6312FC */  lw    $v1, %lo(D_800D12FC)($v1)
glabel func_80014564
/* 015164 80014564 8C420000 */  lw    $v0, ($v0)
/* 015168 80014568 00621821 */  addu  $v1, $v1, $v0
/* 01516C 8001456C AE030000 */  sw    $v1, ($s0)
.L80014570:
/* 015170 80014570 8E040000 */  lw    $a0, ($s0)
/* 015174 80014574 02202821 */  addu  $a1, $s1, $zero
/* 015178 80014578 0C0187FA */  jal   func_80061FE8
/* 01517C 8001457C 24060010 */   li    $a2, 16
/* 015180 80014580 8E020000 */  lw    $v0, ($s0)
/* 015184 80014584 24420008 */  addiu $v0, $v0, 8
/* 015188 80014588 AE020000 */  sw    $v0, ($s0)
/* 01518C 8001458C 8E220000 */  lw    $v0, ($s1)
/* 015190 80014590 AE020004 */  sw    $v0, 4($s0)
/* 015194 80014594 8E220004 */  lw    $v0, 4($s1)
/* 015198 80014598 AE020008 */  sw    $v0, 8($s0)
/* 01519C 8001459C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0151A0 800145A0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0151A4 800145A4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0151A8 800145A8 03E00008 */  jr    $ra
/* 0151AC 800145AC 27BD0020 */   addiu $sp, $sp, 0x20

ReadMainFS:
/* 0151B0 800145B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0151B4 800145B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0151B8 800145B8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0151BC 800145BC 00042C03 */  sra   $a1, $a0, 0x10
/* 0151C0 800145C0 3C02800D */  lui   $v0, %hi(D_800D12F4) # $v0, 0x800d
/* 0151C4 800145C4 8C4212F4 */  lw    $v0, %lo(D_800D12F4)($v0)
/* 0151C8 800145C8 00A2102B */  sltu  $v0, $a1, $v0
/* 0151CC 800145CC 1040000C */  beqz  $v0, .L80014600
/* 0151D0 800145D0 3090FFFF */   andi  $s0, $a0, 0xffff
/* 0151D4 800145D4 0C0051DC */  jal   func_80014770
/* 0151D8 800145D8 2404002F */   li    $a0, 47
/* 0151DC 800145DC 3C02800D */  lui   $v0, %hi(D_800D1300) # $v0, 0x800d
/* 0151E0 800145E0 8C421300 */  lw    $v0, %lo(D_800D1300)($v0)
/* 0151E4 800145E4 0202102B */  sltu  $v0, $s0, $v0
/* 0151E8 800145E8 10400005 */  beqz  $v0, .L80014600
/* 0151EC 800145EC 2404002E */   li    $a0, 46
/* 0151F0 800145F0 0C00519E */  jal   func_80014678
/* 0151F4 800145F4 02002821 */   addu  $a1, $s0, $zero
/* 0151F8 800145F8 08005181 */  j     func_80014604
/* 0151FC 800145FC 00000000 */   nop   

.L80014600:
/* 015200 80014600 00001021 */  addu  $v0, $zero, $zero
glabel func_80014604
/* 015204 80014604 8FBF0014 */  lw    $ra, 0x14($sp)
/* 015208 80014608 8FB00010 */  lw    $s0, 0x10($sp)
/* 01520C 8001460C 03E00008 */  jr    $ra
/* 015210 80014610 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_80014614
/* 015214 80014614 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 015218 80014618 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01521C 8001461C AFB00010 */  sw    $s0, 0x10($sp)
/* 015220 80014620 00042C03 */  sra   $a1, $a0, 0x10
/* 015224 80014624 3C02800D */  lui   $v0, %hi(D_800D12F4) # $v0, 0x800d
/* 015228 80014628 8C4212F4 */  lw    $v0, %lo(D_800D12F4)($v0)
/* 01522C 8001462C 00A2102B */  sltu  $v0, $a1, $v0
/* 015230 80014630 1040000C */  beqz  $v0, .L80014664
/* 015234 80014634 3090FFFF */   andi  $s0, $a0, 0xffff
/* 015238 80014638 0C0051DC */  jal   func_80014770
/* 01523C 8001463C 2404002F */   li    $a0, 47
/* 015240 80014640 3C02800D */  lui   $v0, %hi(D_800D1300) # $v0, 0x800d
/* 015244 80014644 8C421300 */  lw    $v0, %lo(D_800D1300)($v0)
/* 015248 80014648 0202102B */  sltu  $v0, $s0, $v0
/* 01524C 8001464C 10400005 */  beqz  $v0, .L80014664
/* 015250 80014650 2404002E */   li    $a0, 46
/* 015254 80014654 0C0051B5 */  jal   func_800146D4
/* 015258 80014658 02002821 */   addu  $a1, $s0, $zero
/* 01525C 8001465C 0800519A */  j     func_80014668
/* 015260 80014660 00000000 */   nop   

.L80014664:
/* 015264 80014664 00001021 */  addu  $v0, $zero, $zero
glabel func_80014668
/* 015268 80014668 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01526C 8001466C 8FB00010 */  lw    $s0, 0x10($sp)
/* 015270 80014670 03E00008 */  jr    $ra
/* 015274 80014674 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_80014678
/* 015278 80014678 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01527C 8001467C AFBF0024 */  sw    $ra, 0x24($sp)
/* 015280 80014680 AFB00020 */  sw    $s0, 0x20($sp)
/* 015284 80014684 0C005141 */  jal   func_80014504
/* 015288 80014688 27A60010 */   addiu $a2, $sp, 0x10
/* 01528C 8001468C 8FA40014 */  lw    $a0, 0x14($sp)
/* 015290 80014690 24840001 */  addiu $a0, $a0, 1
/* 015294 80014694 2402FFFE */  li    $v0, -2
/* 015298 80014698 0C00EDA9 */  jal   MallocPerm
/* 01529C 8001469C 00822024 */   and   $a0, $a0, $v0
/* 0152A0 800146A0 00408021 */  addu  $s0, $v0, $zero
/* 0152A4 800146A4 12000007 */  beqz  $s0, .L800146C4
/* 0152A8 800146A8 02001021 */   addu  $v0, $s0, $zero
/* 0152AC 800146AC 8FA40010 */  lw    $a0, 0x10($sp)
/* 0152B0 800146B0 8FA60014 */  lw    $a2, 0x14($sp)
/* 0152B4 800146B4 8FA70018 */  lw    $a3, 0x18($sp)
/* 0152B8 800146B8 0C005D17 */  jal   DecodeFile
/* 0152BC 800146BC 02002821 */   addu  $a1, $s0, $zero
/* 0152C0 800146C0 02001021 */  addu  $v0, $s0, $zero
.L800146C4:
/* 0152C4 800146C4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0152C8 800146C8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0152CC 800146CC 03E00008 */  jr    $ra
/* 0152D0 800146D0 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800146D4
/* 0152D4 800146D4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0152D8 800146D8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0152DC 800146DC AFB00020 */  sw    $s0, 0x20($sp)
/* 0152E0 800146E0 0C005141 */  jal   func_80014504
/* 0152E4 800146E4 27A60010 */   addiu $a2, $sp, 0x10
/* 0152E8 800146E8 8FA40014 */  lw    $a0, 0x14($sp)
/* 0152EC 800146EC 24840001 */  addiu $a0, $a0, 1
/* 0152F0 800146F0 2402FFFE */  li    $v0, -2
/* 0152F4 800146F4 0C00EDDD */  jal   MallocTemp
/* 0152F8 800146F8 00822024 */   and   $a0, $a0, $v0
/* 0152FC 800146FC 00408021 */  addu  $s0, $v0, $zero
/* 015300 80014700 12000007 */  beqz  $s0, .L80014720
/* 015304 80014704 02001021 */   addu  $v0, $s0, $zero
/* 015308 80014708 8FA40010 */  lw    $a0, 0x10($sp)
/* 01530C 8001470C 8FA60014 */  lw    $a2, 0x14($sp)
/* 015310 80014710 8FA70018 */  lw    $a3, 0x18($sp)
/* 015314 80014714 0C005D17 */  jal   DecodeFile
/* 015318 80014718 02002821 */   addu  $a1, $s0, $zero
/* 01531C 8001471C 02001021 */  addu  $v0, $s0, $zero
.L80014720:
/* 015320 80014720 8FBF0024 */  lw    $ra, 0x24($sp)
/* 015324 80014724 8FB00020 */  lw    $s0, 0x20($sp)
/* 015328 80014728 03E00008 */  jr    $ra
/* 01532C 8001472C 27BD0028 */   addiu $sp, $sp, 0x28

FreeMainFS:
glabel func_80014730
/* 015330 80014730 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 015334 80014734 10800003 */  beqz  $a0, .L80014744
/* 015338 80014738 AFBF0010 */   sw    $ra, 0x10($sp)
/* 01533C 8001473C 0C00EDB2 */  jal   FreePerm
/* 015340 80014740 00000000 */   nop   
.L80014744:
/* 015344 80014744 8FBF0010 */  lw    $ra, 0x10($sp)
/* 015348 80014748 03E00008 */  jr    $ra
/* 01534C 8001474C 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_80014750
/* 015350 80014750 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 015354 80014754 10800003 */  beqz  $a0, .L80014764
/* 015358 80014758 AFBF0010 */   sw    $ra, 0x10($sp)
/* 01535C 8001475C 0C00EDB2 */  jal   FreePerm
/* 015360 80014760 00000000 */   nop   
.L80014764:
/* 015364 80014764 8FBF0010 */  lw    $ra, 0x10($sp)
/* 015368 80014768 03E00008 */  jr    $ra
/* 01536C 8001476C 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_80014770
/* 015370 80014770 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 015374 80014774 AFBF0024 */  sw    $ra, 0x24($sp)
/* 015378 80014778 AFB00020 */  sw    $s0, 0x20($sp)
/* 01537C 8001477C 3C02800D */  lui   $v0, %hi(D_800D12F8) # $v0, 0x800d
/* 015380 80014780 8C4212F8 */  lw    $v0, %lo(D_800D12F8)($v0)
/* 015384 80014784 00052880 */  sll   $a1, $a1, 2
/* 015388 80014788 00A22821 */  addu  $a1, $a1, $v0
/* 01538C 8001478C 3C04800D */  lui   $a0, %hi(D_800D12F0) # $a0, 0x800d
/* 015390 80014790 8C8412F0 */  lw    $a0, %lo(D_800D12F0)($a0)
/* 015394 80014794 8CA20000 */  lw    $v0, ($a1)
/* 015398 80014798 00821021 */  addu  $v0, $a0, $v0
/* 01539C 8001479C AFA20010 */  sw    $v0, 0x10($sp)
/* 0153A0 800147A0 3C03800D */  lui   $v1, %hi(D_800D12FC) # $v1, 0x800d
/* 0153A4 800147A4 8C6312FC */  lw    $v1, %lo(D_800D12FC)($v1)
/* 0153A8 800147A8 1062001B */  beq   $v1, $v0, .L80014818
/* 0153AC 800147AC 00000000 */   nop   
/* 0153B0 800147B0 10640004 */  beq   $v1, $a0, .L800147C4
/* 0153B4 800147B4 00000000 */   nop   
/* 0153B8 800147B8 3C04800D */  lui   $a0, %hi(D_800D1304) # $a0, 0x800d
/* 0153BC 800147BC 0C00EDB2 */  jal   FreePerm
/* 0153C0 800147C0 8C841304 */   lw    $a0, %lo(D_800D1304)($a0)
.L800147C4:
/* 0153C4 800147C4 8FA40010 */  lw    $a0, 0x10($sp)
/* 0153C8 800147C8 3C01800D */  lui   $at, %hi(D_800D12FC) # $at, 0x800d
/* 0153CC 800147CC AC2412FC */  sw    $a0, %lo(D_800D12FC)($at)
/* 0153D0 800147D0 3C10800D */  lui   $s0, %hi(D_800D1310) # $s0, 0x800d
/* 0153D4 800147D4 26101310 */  addiu $s0, %lo(D_800D1310) # addiu $s0, $s0, 0x1310
/* 0153D8 800147D8 02002821 */  addu  $a1, $s0, $zero
/* 0153DC 800147DC 0C0187FA */  jal   func_80061FE8
/* 0153E0 800147E0 24060010 */   li    $a2, 16
/* 0153E4 800147E4 8E100000 */  lw    $s0, ($s0)
/* 0153E8 800147E8 3C01800D */  lui   $at, %hi(D_800D1300) # $at, 0x800d
/* 0153EC 800147EC AC301300 */  sw    $s0, %lo(D_800D1300)($at)
/* 0153F0 800147F0 00108080 */  sll   $s0, $s0, 2
/* 0153F4 800147F4 0C00EDA9 */  jal   MallocPerm
/* 0153F8 800147F8 02002021 */   addu  $a0, $s0, $zero
/* 0153FC 800147FC 3C01800D */  lui   $at, %hi(D_800D1304) # $at, 0x800d
/* 015400 80014800 AC221304 */  sw    $v0, %lo(D_800D1304)($at)
/* 015404 80014804 8FA40010 */  lw    $a0, 0x10($sp)
/* 015408 80014808 24840004 */  addiu $a0, $a0, 4
/* 01540C 8001480C 00402821 */  addu  $a1, $v0, $zero
/* 015410 80014810 0C0187FA */  jal   func_80061FE8
/* 015414 80014814 02003021 */   addu  $a2, $s0, $zero
.L80014818:
/* 015418 80014818 8FBF0024 */  lw    $ra, 0x24($sp)
/* 01541C 8001481C 8FB00020 */  lw    $s0, 0x20($sp)
/* 015420 80014820 03E00008 */  jr    $ra
/* 015424 80014824 27BD0028 */   addiu $sp, $sp, 0x28

/* 015428 80014828 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01542C 8001482C AFBF002C */  sw    $ra, 0x2c($sp)
/* 015430 80014830 AFB20028 */  sw    $s2, 0x28($sp)
/* 015434 80014834 AFB10024 */  sw    $s1, 0x24($sp)
/* 015438 80014838 AFB00020 */  sw    $s0, 0x20($sp)
/* 01543C 8001483C 00808821 */  addu  $s1, $a0, $zero
/* 015440 80014840 00A09021 */  addu  $s2, $a1, $zero
/* 015444 80014844 0C00EDA9 */  jal   MallocPerm
/* 015448 80014848 24040018 */   li    $a0, 24
/* 01544C 8001484C 00408021 */  addu  $s0, $v0, $zero
/* 015450 80014850 12000013 */  beqz  $s0, .L800148A0
/* 015454 80014854 02202021 */   addu  $a0, $s1, $zero
/* 015458 80014858 02402821 */  addu  $a1, $s2, $zero
/* 01545C 8001485C 0C005141 */  jal   func_80014504
/* 015460 80014860 27A60010 */   addiu $a2, $sp, 0x10
/* 015464 80014864 8FA20014 */  lw    $v0, 0x14($sp)
/* 015468 80014868 AE020004 */  sw    $v0, 4($s0)
/* 01546C 8001486C 97A2001A */  lhu   $v0, 0x1a($sp)
/* 015470 80014870 A6020000 */  sh    $v0, ($s0)
/* 015474 80014874 0C00EDA9 */  jal   MallocPerm
/* 015478 80014878 24040400 */   li    $a0, 1024
/* 01547C 8001487C AE020008 */  sw    $v0, 8($s0)
/* 015480 80014880 24020001 */  li    $v0, 1
/* 015484 80014884 A602000C */  sh    $v0, 0xc($s0)
/* 015488 80014888 A600000E */  sh    $zero, 0xe($s0)
/* 01548C 8001488C 8FA20010 */  lw    $v0, 0x10($sp)
/* 015490 80014890 AE020014 */  sw    $v0, 0x14($s0)
/* 015494 80014894 AE020010 */  sw    $v0, 0x10($s0)
/* 015498 80014898 08005229 */  j     func_800148A4
/* 01549C 8001489C 02001021 */   addu  $v0, $s0, $zero

.L800148A0:
/* 0154A0 800148A0 00001021 */  addu  $v0, $zero, $zero
glabel func_800148A4
/* 0154A4 800148A4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0154A8 800148A8 8FB20028 */  lw    $s2, 0x28($sp)
/* 0154AC 800148AC 8FB10024 */  lw    $s1, 0x24($sp)
/* 0154B0 800148B0 8FB00020 */  lw    $s0, 0x20($sp)
/* 0154B4 800148B4 03E00008 */  jr    $ra
/* 0154B8 800148B8 27BD0030 */   addiu $sp, $sp, 0x30

/* 0154BC 800148BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0154C0 800148C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0154C4 800148C4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0154C8 800148C8 00808021 */  addu  $s0, $a0, $zero
/* 0154CC 800148CC 0C00EDB2 */  jal   FreePerm
/* 0154D0 800148D0 8E040008 */   lw    $a0, 8($s0)
/* 0154D4 800148D4 0C00EDB2 */  jal   FreePerm
/* 0154D8 800148D8 02002021 */   addu  $a0, $s0, $zero
/* 0154DC 800148DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0154E0 800148E0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0154E4 800148E4 03E00008 */  jr    $ra
/* 0154E8 800148E8 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800148EC
/* 0154EC 800148EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0154F0 800148F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0154F4 800148F4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0154F8 800148F8 00808021 */  addu  $s0, $a0, $zero
/* 0154FC 800148FC 8E020014 */  lw    $v0, 0x14($s0)
/* 015500 80014900 8E030010 */  lw    $v1, 0x10($s0)
/* 015504 80014904 00431023 */  subu  $v0, $v0, $v1
/* 015508 80014908 8603000E */  lh    $v1, 0xe($s0)
/* 01550C 8001490C 00431021 */  addu  $v0, $v0, $v1
/* 015510 80014910 8E030004 */  lw    $v1, 4($s0)
/* 015514 80014914 0043102B */  sltu  $v0, $v0, $v1
/* 015518 80014918 1040001B */  beqz  $v0, .L80014988
/* 01551C 8001491C 2402FFFF */   li    $v0, -1
/* 015520 80014920 8602000E */  lh    $v0, 0xe($s0)
/* 015524 80014924 28420400 */  slti  $v0, $v0, 0x400
/* 015528 80014928 14400007 */  bnez  $v0, .L80014948
/* 01552C 8001492C 24020001 */   li    $v0, 1
/* 015530 80014930 A602000C */  sh    $v0, 0xc($s0)
/* 015534 80014934 8602000E */  lh    $v0, 0xe($s0)
/* 015538 80014938 8E030014 */  lw    $v1, 0x14($s0)
/* 01553C 8001493C 00431021 */  addu  $v0, $v0, $v1
/* 015540 80014940 AE020014 */  sw    $v0, 0x14($s0)
/* 015544 80014944 A600000E */  sh    $zero, 0xe($s0)
.L80014948:
/* 015548 80014948 8602000C */  lh    $v0, 0xc($s0)
/* 01554C 8001494C 10400006 */  beqz  $v0, .L80014968
/* 015550 80014950 00000000 */   nop   
/* 015554 80014954 A600000C */  sh    $zero, 0xc($s0)
/* 015558 80014958 8E040014 */  lw    $a0, 0x14($s0)
/* 01555C 8001495C 8E050008 */  lw    $a1, 8($s0)
/* 015560 80014960 0C0187FA */  jal   func_80061FE8
/* 015564 80014964 24060400 */   li    $a2, 1024
.L80014968:
/* 015568 80014968 9602000E */  lhu   $v0, 0xe($s0)
/* 01556C 8001496C 24430001 */  addiu $v1, $v0, 1
/* 015570 80014970 A603000E */  sh    $v1, 0xe($s0)
/* 015574 80014974 00021400 */  sll   $v0, $v0, 0x10
/* 015578 80014978 00021403 */  sra   $v0, $v0, 0x10
/* 01557C 8001497C 8E030008 */  lw    $v1, 8($s0)
/* 015580 80014980 00621821 */  addu  $v1, $v1, $v0
/* 015584 80014984 90620000 */  lbu   $v0, ($v1)
.L80014988:
/* 015588 80014988 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01558C 8001498C 8FB00010 */  lw    $s0, 0x10($sp)
/* 015590 80014990 03E00008 */  jr    $ra
/* 015594 80014994 27BD0018 */   addiu $sp, $sp, 0x18

/* 015598 80014998 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 01559C 8001499C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0155A0 800149A0 AFB40020 */  sw    $s4, 0x20($sp)
/* 0155A4 800149A4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0155A8 800149A8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0155AC 800149AC AFB10014 */  sw    $s1, 0x14($sp)
/* 0155B0 800149B0 AFB00010 */  sw    $s0, 0x10($sp)
/* 0155B4 800149B4 00E09821 */  addu  $s3, $a3, $zero
/* 0155B8 800149B8 00008021 */  addu  $s0, $zero, $zero
/* 0155BC 800149BC 00A60018 */  mult  $a1, $a2
/* 0155C0 800149C0 00009012 */  mflo  $s2
/* 0155C4 800149C4 00808821 */  addu  $s1, $a0, $zero
/* 0155C8 800149C8 2414FFFF */  li    $s4, -1
.L800149CC:
/* 0155CC 800149CC 0C00523B */  jal   func_800148EC
/* 0155D0 800149D0 02602021 */   addu  $a0, $s3, $zero
/* 0155D4 800149D4 50540007 */  beql  $v0, $s4, .L800149F4
/* 0155D8 800149D8 02001021 */   addu  $v0, $s0, $zero
/* 0155DC 800149DC A2220000 */  sb    $v0, ($s1)
/* 0155E0 800149E0 26100001 */  addiu $s0, $s0, 1
/* 0155E4 800149E4 0212102A */  slt   $v0, $s0, $s2
/* 0155E8 800149E8 1440FFF8 */  bnez  $v0, .L800149CC
/* 0155EC 800149EC 26310001 */   addiu $s1, $s1, 1
/* 0155F0 800149F0 02001021 */  addu  $v0, $s0, $zero
.L800149F4:
/* 0155F4 800149F4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0155F8 800149F8 8FB40020 */  lw    $s4, 0x20($sp)
/* 0155FC 800149FC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 015600 80014A00 8FB20018 */  lw    $s2, 0x18($sp)
/* 015604 80014A04 8FB10014 */  lw    $s1, 0x14($sp)
/* 015608 80014A08 8FB00010 */  lw    $s0, 0x10($sp)
/* 01560C 80014A0C 03E00008 */  jr    $ra
/* 015610 80014A10 27BD0028 */   addiu $sp, $sp, 0x28

/* 015614 80014A14 24020001 */  li    $v0, 1
/* 015618 80014A18 10C2000E */  beq   $a2, $v0, .L80014A54
/* 01561C 80014A1C 28C20002 */   slti  $v0, $a2, 2
/* 015620 80014A20 50400005 */  beql  $v0, $zero, .L80014A38
/* 015624 80014A24 24020002 */   li    $v0, 2
/* 015628 80014A28 10C00007 */  beqz  $a2, .L80014A48
/* 01562C 80014A2C 00000000 */   nop   
/* 015630 80014A30 080052B9 */  j     func_80014AE4
/* 015634 80014A34 00000000 */   nop   

.L80014A38:
/* 015638 80014A38 10C2000A */  beq   $a2, $v0, .L80014A64
/* 01563C 80014A3C 00000000 */   nop   
/* 015640 80014A40 080052B9 */  j     func_80014AE4
/* 015644 80014A44 00000000 */   nop   

.L80014A48:
/* 015648 80014A48 8C820010 */  lw    $v0, 0x10($a0)
/* 01564C 80014A4C 0800529D */  j     func_80014A74
/* 015650 80014A50 00A23021 */   addu  $a2, $a1, $v0

.L80014A54:
/* 015654 80014A54 8483000E */  lh    $v1, 0xe($a0)
/* 015658 80014A58 8C820014 */  lw    $v0, 0x14($a0)
/* 01565C 80014A5C 0800529C */  j     func_80014A70
/* 015660 80014A60 00623021 */   addu  $a2, $v1, $v0

.L80014A64:
/* 015664 80014A64 8C830010 */  lw    $v1, 0x10($a0)
/* 015668 80014A68 8C820004 */  lw    $v0, 4($a0)
/* 01566C 80014A6C 00623021 */  addu  $a2, $v1, $v0
glabel func_80014A70
/* 015670 80014A70 00C53021 */  addu  $a2, $a2, $a1
glabel func_80014A74
/* 015674 80014A74 8C830010 */  lw    $v1, 0x10($a0)
/* 015678 80014A78 00C3102B */  sltu  $v0, $a2, $v1
/* 01567C 80014A7C 54400001 */  bnezl $v0, .L80014A84
/* 015680 80014A80 00603021 */   addu  $a2, $v1, $zero
.L80014A84:
/* 015684 80014A84 8C820010 */  lw    $v0, 0x10($a0)
/* 015688 80014A88 8C830004 */  lw    $v1, 4($a0)
/* 01568C 80014A8C 00431821 */  addu  $v1, $v0, $v1
/* 015690 80014A90 00C3102B */  sltu  $v0, $a2, $v1
/* 015694 80014A94 14400002 */  bnez  $v0, .L80014AA0
/* 015698 80014A98 00000000 */   nop   
/* 01569C 80014A9C 2466FFFF */  addiu $a2, $v1, -1
.L80014AA0:
/* 0156A0 80014AA0 8C830014 */  lw    $v1, 0x14($a0)
/* 0156A4 80014AA4 00C3102B */  sltu  $v0, $a2, $v1
/* 0156A8 80014AA8 14400005 */  bnez  $v0, .L80014AC0
/* 0156AC 80014AAC 24020001 */   li    $v0, 1
/* 0156B0 80014AB0 24620400 */  addiu $v0, $v1, 0x400
/* 0156B4 80014AB4 00C2102B */  sltu  $v0, $a2, $v0
/* 0156B8 80014AB8 14400007 */  bnez  $v0, .L80014AD8
/* 0156BC 80014ABC 24020001 */   li    $v0, 1
.L80014AC0:
/* 0156C0 80014AC0 A482000C */  sh    $v0, 0xc($a0)
/* 0156C4 80014AC4 30C20001 */  andi  $v0, $a2, 1
/* 0156C8 80014AC8 A482000E */  sh    $v0, 0xe($a0)
/* 0156CC 80014ACC 00C21023 */  subu  $v0, $a2, $v0
/* 0156D0 80014AD0 080052B9 */  j     func_80014AE4
/* 0156D4 80014AD4 AC820014 */   sw    $v0, 0x14($a0)

.L80014AD8:
/* 0156D8 80014AD8 94820016 */  lhu   $v0, 0x16($a0)
/* 0156DC 80014ADC 00C21023 */  subu  $v0, $a2, $v0
/* 0156E0 80014AE0 A482000E */  sh    $v0, 0xe($a0)
glabel func_80014AE4
/* 0156E4 80014AE4 03E00008 */  jr    $ra
/* 0156E8 80014AE8 00000000 */   nop   

/* 0156EC 80014AEC 00000000 */  nop   
