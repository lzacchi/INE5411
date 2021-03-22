# 2.34  Translate function f into MIPS assembly language. If you need to use
#       registers $t0 through $t7, use the lower-numbered registers first. Assume the
#       function declaration for func is “int f(int a, int b);”. Th e code for function
#       f is as follows:
#
#           int f(int a, int b, int c, int d){
#               return func(func(a,b),c+d);
#           }


f:
    addi $sp, $sp, -12  # storing preserved registers
    lw $ra, 8($sp)
    lw $a0, 4($sp)     # storing a
    lw $a1, 0($sp)      # storing b

    jal func            # calling func(a,b)

    addi $sp, $sp, -4
    sw $v0, 0($sp)      # storing return of func(a,b)

    add $a0, $zero, $v0 # $a0 = func(a,b)
    addi $a1 $a2, $a3   # $a1 = c + d

    jal func

    lw $v0, 0($sp)
    lw $a1, 4($sp)
    lw $a0, 8($sp)
    lw $ra, 12($sp)

    addi $sp, $sp, 16
