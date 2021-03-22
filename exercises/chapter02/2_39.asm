# 2.39  Write the MIPS assembly code that creates the 32-bit constant
#       0010 0000 0000 0001 0100 1001 0010 0100 and stores that value to
#       register $t1.

lui $t0, 0x2001
ori $t0, $t0, 4924

# 2.40  If the current value of the PC is 0x00000000, can you use
#       a single jump instruction to get to the PC address as shown in Exercise 2.39?

# R:
#   A jump uses 26 bits + 00  as maximum address.
#   So if the address is 0000 0000 0000 0000 0000 0000 0000 0000
#   A single jump instrunction can reach the maximum address of:
#   0000 1111 1111 1111 1111 1111 1111 1100
#   Which means the address is uncreachable.

# 2.41  If the current value of the PC is 0x00000600, can you use
#       a single branch instruction to get to the PC address as shown in Exercise 2.39?

# R:
#   The branch instruction uses PC + 4 + 16 bits + 00.
#   So if the target address was 0010 0000 0000 0001 0100 1001 0010 0100
#   And PC + 4 = 0000 0000 0000 0000 0000 0110 0000 0000
#   The maximum branch constant is 0011 1111 1111 1111 1100
#   Adding that to PC+4 we get 0x00000600 + 0x3fffc = 0000 0000 0000 0100 0000 0101 1111 1100
#   Which means the address is unreachable with a single branch instruction.


# 2.42  If the current value of the PC is 0x1FFFf000, can you use
#       a single branch instruction to get to the PC address as shown in Exercise 2.39?

# R:
#   So if the target address was 0010 0000 0000 0001 0100 1001 0010 0100 (0x20014924)
#   And current PC is 0x1FFFF000, the maximum branch address would be:
#   0x1FFFF004 + 0x3FFFc = 0x2003F000, which means the address is reachable in a single
#   branch instruction
