	.text
main:
	bne %s3, $s4, L1
	add $s0, $s1, $s2
L1:	sub $s0, $s0, $s3