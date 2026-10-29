#a f=-g-A[4], t1=g, t
lw $t0, 16[s6] #nap dia chi phan tu a[4] tai dia chi s6 + 16 tai gia tri t0
sub $s0, $0, $s1 #nap g thanh am
sub $s0, $s0, $t0 # s0=-g, t0=A[4]

 #b B[8]=A[i-j], s2=i, s3=j, s6=A, s7=B
sub $t0, $s1, $s2 #t0=i-j
sll $t0, $t0, 2 #dich sang trai 2 bit 
add $t0, $s6, $t0 #t0=A+byte offset
lw $t1, 0($t0) #nap gia tri A[i-j] vao t1
sw $t1, 32($7) #luu gia tri A[i-j] vao phan tu B tai dia chi $s7 + 32

  