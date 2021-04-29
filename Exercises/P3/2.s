.data

x: .word 999

.text

li x11, 32
lw x13, x

for:
addi x11, x11, -1
andi x12,x13,1
add x10, x12, x10
srli x13,x13, 1
bne x13, x11, for



end:
li x17 1
ecall

li x17 10
ecall