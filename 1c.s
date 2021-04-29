.data

const: .word 0xFFFF

.text

lw x10, const
li x11, 16 #numero maximo de bits

for:
addi x11, x11, -1
andi x12, x10, 1
add x13, x12,x13
srli x10, x10, 1
bne x11 zero for

add x10, x13, zero

end:
li x17,1
ecall
	
li x17,10
ecall