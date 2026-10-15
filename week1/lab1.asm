	.text
main:
	addi $s1, $zero, 2 # gan gia tri 10 cho g
	addi $s2, $zero, 3 # gan gia tri 20 cho h
	addi $s3, $zero, 8 # gan gia tri 3 cho i
	addi $s4, $zero, 8 # gan gia tri 5 cho j
	
	add $t0, $s1, $s2 # thanh ghi tam thoi $t0 thay doi, cong gia tri $s1 va $s2 ket qua duoc luu vao thanh ghi $t0
	add $t1, $s3, $s4 # thanh ghi tam thoi $t1 thay doi, cong gia tri $s3 va $s4 ket qua duoc luu vao thanh ghi $t1
	sub $s0, $t0, $t1 # thanh ghi luu tru $s0 thay doi, gia tru $t0 tru $t1 ket qua duoc luu vao thanh ghi $s0
	
	move $a0, $s0 # chuyen sang thanh ghi de in so nguyen
	li $v0, 1
	syscall
	li $v0, 10
	syscall
	
	# Tra loi cau hoi suy nghi
	
	# vi $t0 chi luu gia tri trong thanh ghi, con sw co nv luu gia tri vao bo nho
	# neu in truc tiep $t0 ta chi ktra dc thanh ghi ko bt du lieu da dc ghi dung dia chi bo nho ko
	# sau khi dung sw de luu du lieu, ta dung lw doc lai du lieu tu dia chi bo nho can ktra roi moi in
	# neu du lieu doc lai dung ta xac nhan chuong trinh luu va doc du lieu chinh xac