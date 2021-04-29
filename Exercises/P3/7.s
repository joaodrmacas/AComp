.data

.text

li x10, 3
jal factorial
li x17 1
ecall

li x17 10
ecall




factorial:
ble x10, zero, end
addi sp sp -8
sw x1, 4(sp) #ra
sw x18, 0(sp) #save i
mv x18, x10
addi x10 x10 -1
jal factorial
mul x10, x10, x18

lw x1, 4(sp) #ra
lw x18, 0(sp) #save i
addi sp sp 8
ret


end:
li x10, 1
ret