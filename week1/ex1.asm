	.data # vung du lieu
x: 	.word 7 # bien x, gia tri dau = 7
msg: 	.asciiz "x + 5 = " # chuoi, ket thuc bang byte 0
	.text # vung ma lenh
main: 	# nhan: noi chuong trinh bat dau
	la $t0, x # $t0 = DIA CHI cua x
	lw $t1, 0($t0) # $t1 = GIA TRI cua x
	addi $t1, $t1, 5 # $t1 = x + 5
	li $v0, 4 # in chuoi msg
	la $a0, msg
	syscall
	move $a0, $t1 # in so nguyen trong $t1
	li $v0, 1
	syscall
	li $v0, 10 # ket thuc chuong trinh
	syscall