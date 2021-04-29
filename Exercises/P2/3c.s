.data

vals: .word 3, 15, 4, 0

.text

la x11, vals
lw x12, 0(x11)
lw x13, 4(x11)
lw x14, 8(x11)
lw x10, 12(x11)

slli x12, x12, 7
add x10, x10, x12
srli x13, x13, 2
add x10, x10, x13
slli x14, x14, 3
add x10, x10, x14
sw x10, 12(x11)

end:
li x17,1
ecall
	
li x17,10
ecall