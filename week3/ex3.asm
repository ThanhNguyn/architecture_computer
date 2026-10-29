lui $s0, 0x4050
#nap gtri 16bit cao vao thanh ghi s0, 16bit thap dien vao gtri 0 =>0x40500000
ori $s0, $s0, 251
#chuyen 251 sang hex = 0x00FB
#0x40500000 OR 0x000000FB = 0x405000FB =s0
sll $s1, $s0, 4
#sang trai thanh ghi s0 4 bit => s1=0x05000FB0
add $s2, $s0, $s1
# s2=s0+s1, 0x455010AB
andi $s3, $s1, 0x0FE7
# 0x05000FB0 and 0x00000FE7 => s3=0x00000FA0

