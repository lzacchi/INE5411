# 2.21  Provide a minimal set of MIPS instructions that may be used to
#       implement the following pseudoinstruction:

        not $t1, $t2 // bit-wise invert

#       R:
#       MIPS contains the instuction nor
        nor $t1, $t2, $t2
        # or
        nor $t1, $t2, $zero
