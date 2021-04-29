.data

n_valores: .word 9
valores: .word 1,2,4,6,7,8,9,10,11
.text

lw x11, n_valores
la x12, valores
li x14, 0 #contador

for:
lw x13, 0(x12)
addi x14, x14, 1
add x15, x13, x15
addi x12, x12, 4
bne x11, x14, for
j end



end:
add x10, x15, zero

li x17 1
ecall

li x17 10
ecall