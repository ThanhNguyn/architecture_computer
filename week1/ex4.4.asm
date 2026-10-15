.text
.globl main
main:
    add $s0, $s1, $s2
    lw  $t0, 8($s1)
    sw  $t0, 12($s2)