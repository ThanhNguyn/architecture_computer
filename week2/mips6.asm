	.text
	#$s0=i, $s1=sum
	add $s1, $0, $0
	addi $s0, $s0, 1
Loop:	slti $t0, $s0, 101
	beq $t0, $0, Exit
	add $s1, $s1, $s0
	sll $s0, $s0, 2
	j loop