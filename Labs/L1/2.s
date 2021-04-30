.data

.text

li x11, 55 #10 elemento da sequencia de fibonacci
li x10, 2

verificar:
slli x10, x10, 1
ble x10, x11, verificar
srli x10, x10, 1

li x17, 1
ecall

li x17, 10
ecall
