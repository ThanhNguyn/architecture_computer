		.text
main
		beq $s3, $s4, If_code
		sub $s0, $s1, $s2
		j Exit
If_code:	add $s0, $s1, $s2
	