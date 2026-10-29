# Khoi tao ban dau
lw   $t0, 0($s1)          # max = M[0]
addi $t1, $zero, 1        # i = 1 (dung $t1 lam bien dem i)

LOOP: 
    slt  $t2, $t1, $s2    # so sanh i < n, dung thi $t2 = 1, sai thi $t2 = 0
    beq  $t2, $zero, DONE # neu i >= n ($t2 == 0) thi nhay ra DONE thoat loop

    # Tinh dia chi va lay phan tu M[i]
    sll  $t3, $t1, 2      # $t3 = i * 4 (dich trai 2 bit de ra byte offset)
    add  $t3, $s1, $t3    # $t3 = base_address + offset -> dia chi M[i]
    lw   $t4, 0($t3)      # $t4 = M[i]

    # Kiem tra if (M[i] > max) tuong duong (max < M[i])
    slt  $t5, $t0, $t4    # so sanh max < M[i], dung thi $t5 = 1, sai thi $t5 = 0
    beq  $t5, $zero, SKIP # neu M[i] <= max ($t5 == 0) thi khong cap nhat, nhay den SKIP
    add  $t0, $t4, $zero  # max = M[i] (cap nhat gia tri max moi vao $t0)

SKIP:
    addi $t1, $t1, 1      # i++
    j    LOOP             # nhay ve dau loop ktra lai dk

DONE:
    # Ket thuc: gia tri lon nhat nam trong thanh ghi $t0