	.text
	addi $s1, $0, 0
	add $s0, $0, $0
	addi $t0, $0, 10
for:	beq $s0, $t0, Exit
	add $s1, $s1, $s0
	addi $s0, $s0, 1
	j for