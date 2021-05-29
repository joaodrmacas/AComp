.data
vector1: .word 2, 10, -27, 4, 13, -7, 5, 11 # address 0x1000 0000
vector2: .word 3, -5, 14, 0, -10, -2, 21, 15
minimum: .zero 32
.text
la x12, vector1 # address 0x0000 0000
li x13, 8
proc:
lw x10, 0(x12) # 00062503
# I 0000011 0x2 - 0000 0000 0000 0110 0010 0101 0000 0011
lw x11, 32(x12) # 02062583
jal calc_min #01c000ef
sw x10, 64(x12) #04a62023
addi x12, x12, 4 # 00460613
addi x13, x13, -1 # fff68693
bgt x13, zero, proc # fed044e3
li x17, 10
ecall
calc_min:
blt x10, x11, cm_end # 00b54463
mv x10, x11 # 00058513
cm_end:
ret # 00008067