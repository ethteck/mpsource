.set noat      # allow manual use of $1
.set noreorder # don't insert nops after branches

.include "globals.inc"
.include "macros.inc"

/* 015428 80014828 27BDFFD0 */  addiu $29, $29, -0x30
/* 01542C 8001482C AFBF002C */  sw    $31, 0x2c($29)
/* 015430 80014830 AFB20028 */  sw    $18, 0x28($29)
/* 015434 80014834 AFB10024 */  sw    $17, 0x24($29)
/* 015438 80014838 AFB00020 */  sw    $16, 0x20($29)
/* 01543C 8001483C 00808821 */  addu  $17, $4, $0
/* 015440 80014840 00A09021 */  addu  $18, $5, $0
/* 015444 80014844 0C00EDA9 */  jal   MallocPerm
/* 015448 80014848 24040018 */   li    $4, 24
/* 01544C 8001484C 00408021 */  addu  $16, $2, $0
/* 015450 80014850 12000013 */  beqz  $16, .L800148A0
/* 015454 80014854 02202021 */   addu  $4, $17, $0
/* 015458 80014858 02402821 */  addu  $5, $18, $0
/* 01545C 8001485C 0C005141 */  jal   func_80014504
/* 015460 80014860 27A60010 */   addiu $6, $29, 0x10
/* 015464 80014864 8FA20014 */  lw    $2, 0x14($29)
/* 015468 80014868 AE020004 */  sw    $2, 4($16)
/* 01546C 8001486C 97A2001A */  lhu   $2, 0x1a($29)
/* 015470 80014870 A6020000 */  sh    $2, ($16)
/* 015474 80014874 0C00EDA9 */  jal   MallocPerm
/* 015478 80014878 24040400 */   li    $4, 1024
/* 01547C 8001487C AE020008 */  sw    $2, 8($16)
/* 015480 80014880 24020001 */  li    $2, 1
/* 015484 80014884 A602000C */  sh    $2, 0xc($16)
/* 015488 80014888 A600000E */  sh    $0, 0xe($16)
/* 01548C 8001488C 8FA20010 */  lw    $2, 0x10($29)
/* 015490 80014890 AE020014 */  sw    $2, 0x14($16)
/* 015494 80014894 AE020010 */  sw    $2, 0x10($16)
/* 015498 80014898 08005229 */  j     .L800148A4
/* 01549C 8001489C 02001021 */   addu  $2, $16, $0
.L800148A0:
/* 0154A0 800148A0 00001021 */  addu  $2, $0, $0
.L800148A4:
/* 0154A4 800148A4 8FBF002C */  lw    $31, 0x2c($29)
/* 0154A8 800148A8 8FB20028 */  lw    $18, 0x28($29)
/* 0154AC 800148AC 8FB10024 */  lw    $17, 0x24($29)
/* 0154B0 800148B0 8FB00020 */  lw    $16, 0x20($29)
/* 0154B4 800148B4 03E00008 */  jr    $31
/* 0154B8 800148B8 27BD0030 */   addiu $29, $29, 0x30

.set at
.set reorder