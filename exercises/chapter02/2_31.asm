# 2.31  Implement the following C code in MIPS assembly. What is the
#       total number of MIPS instructions needed to execute the function?


#           int fib(int n){
#               if (n==0)
#                   return 0;
#               else if (n == 1)
#                   return 1;
#               else
#                   return fib(n−1) + fib(n−2);
zero:
    add $v0, $zero, $zero
    jr $ra

one:
    addi $v0, $zero, 1
    jr $ra

fib:
    addi $sp, $sp, -12  # Incrementing stack to preserve registers
    sw $ra, 8($sp)      # Saving return address register
    sw $a0, 4($sp)      # Saving argument register (It'll be altered during recursion)
    sw $s0, 0($sp)

    beq $a0, 0, zero
    beq $a0, 1, one

    add $a0, $a0, -1    # n-1
    jal fib             # calling fib(n - 1)

    add $s0, $zero, $v0 # storing fib(n - 1)

    add $a0, $a0, -1    # n-2
    jal fib             # calling fib(n - 2)

    add $v0, $v0, $s0

exit:
    lw $s0, 0($sp)
    lw $a0, 0($sp)
    lw $ra, 0($sp)

    addi $sp, $sp, 12
