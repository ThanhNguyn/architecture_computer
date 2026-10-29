# Y tuong: x * 17 = x * 16 + x = (x << 4) + x

# 1. Thu tuc MUL(x) (Toi thieu 3 lenh, khong dung lenh nhan)
MUL: 
    sll  $v0, $a0, 4        # v0 = x * 16 (dich trai 4 bit)
    add  $v0, $v0, $a0      # v0 = 16x + x = 17x
    jr   $ra                # tro ve noi goi ham

# 2. Doan chuong trinh chinh goi y = MUL(x)
    add  $a0, $s0, $zero    # a0 = x (truyen tham so x tu $s0 vao $a0)
    jal  MUL                # nhay toi ham MUL va luu dia chi tro ve vao $ra
    add  $s1, $v0, $zero    # y = v0 (luu ket qua tra ve vao $s1)