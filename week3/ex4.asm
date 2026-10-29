LOOP: slt $t2, $zero, $t1 # so sanh zero<s1 neu dung t2=1 nguoc lai t2=0
bne $t2, $zero, ELSE # neu t2 != xuong else
j DONE	# nhay qua else
ELSE: addi $s2, $s2, 2 # s2+=2
addi $t1, $t1, -1 #t1 -=1
j LOOP #nhay ve loop ktra dk
DONE: ...

#a) s2=0+18&*2=36=0x00000024

#b) moi lan thuc hien 5 lenh ta co t1 = N => co N vong lap => 5N lenh
# 3 lenh de thoat vong lap
# => 5N+3 lenh