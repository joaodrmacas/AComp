.data
.text

li x10, 10
li x11, 11
addi sp sp -8
sw x10, 0(sp)
sw x11, 4(sp)

lw x10 4(sp)
lw x11 0(sp)
addi sp sp 8

end:

li x17 1
ecall

li x17 10
ecall