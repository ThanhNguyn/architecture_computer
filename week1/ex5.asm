#A
addi $s0, $zero, 48 # li $s0, 48, gan 48 vao $s0

addu $a0, $v0, $zero # move $a0, $v0, gan $a0 = $v0 bang phep cong voi 0

slt $at, $s1, $s0  # Dat $at=1 neu $s1<$s0 nguoc lai $at=0 neu $s1>$s0
bne $at, $zero, main # nhay den main neu $at != 0 => $s1<$s0 nhay den main
#bgt $s0, $s1

#B
#7000 = 0x1B58 => nam trong so nguyen duong 16 bit co dau
# chi can chay lenh: addi $t0, $zero, 7000

#70000 = 0x00011170 => can 17 bit de bieu dien vuot qua pham vi 16 bit co dau
#vi vay can 2 lenh:
	# lui $at, 0x0001	dua 0x0001 vao 16 bit cao cua $at ta dc 0x00010000
	# ori $t0, $at, 0x1170	ghep 16 bit thap 0x1170 vao
	
#C
#nhung lenh gia trong chuong trinh ex1 la:
	#la   $t0, x
	#li   $v0, 4
	#la   $a0, msg
	#move $a0, $t1
	#li   $v0, 1
	#li   $v0, 10
# vay cac lenh gia "la, li, move" xuat hien lan luot la 2, 3 va 1 lan
# lenh la moi lenh dc mo rong 2 lenh may nen tong so lenh cua truong trinh la 11 + 2 = 13