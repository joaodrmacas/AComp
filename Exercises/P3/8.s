.data

.text

#y = x^n
li x10, 3 #x
li x12, 7 #n

addi sp sp -8
sw x10, 4(sp)
sw x12, 0(sp)

jal power


power:
li x11, 1 #y
li x13, 0 #i
lw x10, 4(sp)
lw x12, 0(sp)
addi sp sp -4
sw x1, 8(sp)

for:
jal multiplica
addi x13,x13, 1
bne x13, x12, for

mv x10, x11
addi sp sp 12
j end


multiplica:
mul x11, x11, x10
ret


end:
li x17, 1
ecall

li x17, 10
ecall