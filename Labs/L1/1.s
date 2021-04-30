.data

a: .word 1,1
.text

la x14, a

lw x10, 0(x14) #x
lw x11, 4(x14) #y
lw x12, 8(x14) #z
li x13, 8 #offset

for:
addi x12, x11, 0
add x11, x11, x10
add x10, x12, zero
addi x14, x14, 4
sw x11, 4(x14)
addi x13, x13, -1
bne x13, zero, for

li x17, 1
ecall

li x17, 10
ecall
