# 2.17    Provide the type, assembly language instruction, and binary
#         representation of instruction described by the following MIPS fields:
#         op=0x23, rs=1, rt=2, const=0x4
#
#         R:
#         10 0011 00001 00010 0000000000000100
#          lw (I)   at    vo         4

lw $v0 4($at)
