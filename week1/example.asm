.data
kq: .word 0, 0 # kq[0] = tong, kq[1] = hieu
nhac1: .asciiz "Nhap so thu nhat: "
nhac2: .asciiz "Nhap so thu hai: "
nhanT: .asciiz "Tong = "
nhanH: .asciiz "\nHieu = "
.text
main:
li $v0, 4 # in chuoi nhac
la $a0, nhac1
syscall
li $v0, 5 # doc so nguyen
syscall
move $s0, $v0 # $s0 = so thu nhat
li $v0, 4
la $a0, nhac2
syscall
li $v0, 5
syscall
move $s1, $v0 # $s1 = so thu hai
add $t0, $s0, $s1 # $t0 = tong
sub $t1, $s0, $s1 # $t1 = hieu
la $s2, kq # $s2 = dia chi mang kq
sw $t0, 0($s2) # kq[0] = tong
sw $t1, 4($s2) # kq[1] = hieu
li $v0, 4 # in &quot;Tong = &quot;
la $a0, nhanT
syscall
lw $a0, 0($s2) # doc lai tu bo nho
li $v0, 1
syscall
li $v0, 4 # in &quot;\nHieu = &quot;
la $a0, nhanH
syscall
lw $a0, 4($s2)
li $v0, 1
syscall
li $v0, 10 # ket thuc
syscall