#2.9 Translate the following C code to MIPS.
#    Assume that the variables f, g, h, i, and j
#    are assigned to registers $s0, $s1, $s2, $s3, and $s4,respectively.
#    Assume that the base address of the arrays A and B are in registers $s6 and $s7, respectively.
#    Assume that the elements of the arrays A and B are 4-byte words:
#    B[8] = A[i] + A[j];

sll $t0, $s3, 2     # i * 4
add $t0, $t0, $s6   # offsetting array base
lw  $t1, 0($t0)     # $t1 = A[i]

sll $t2, $s4, 2     # j * 4
add $t2, $t2, $s6   # offsetting array base
lw  $t3, 0($t2)     # $t3 = A[j]

add $t1, $t1, $t3   # $t1 = A[i] + A [j]
sw $t1, 32($s7)
