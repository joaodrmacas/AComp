.data

.text

li x11, 3
li x12, 2
li x16, 5
li x10, 0 #y
li x13, 3 #x

mul x14, x13, x13 # x^2

mul x15,x13,x13
mul x15,x15,x13 #x^3

mul x15, x15, x11 # 3x^3
mul x14, x14, x12 # 2x^2
mul x13,x13, x16 #5x

sub x10, x15, x14
add x10, x10, x13
addi x10, x10, 7

end:
li x17,1
ecall
	
li x17,10
ecall