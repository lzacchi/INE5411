# 2.14  Provide the type and assembly language instruction for the
#       following binary value:
#       0000 0010 0001 0000 1000 0000 0010 0000

# R:
#   If we rearrange the bits to a MIPS instruction, we get the first bits:
#   00 0000, which lets us know it is a type-R instruction.
#   now if we rearrange the rest of the bits according to an instruction R, we get:
#   opcode    rs     rt    rd    shamt  funct
#   000000  10000  10000  10000  00000 100000

#   we can see that rs, rt and rd all represent the same register ($16, or $s0)
#   through the funct field, which is 0010 0000, or 0x20, we know that this is an
#   add operation. So, the assembly language instruction is as follows:

add $s0, $s0, $s0.
