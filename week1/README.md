# CSE3032 — Kiến trúc máy tính

Repository lưu mã nguồn Assembly MIPS, bản scan bài tập viết tay và báo cáo thực hành môn CSE3032 — Kiến trúc máy tính. Phạm vi README và báo cáo hiện tại tập trung vào nội dung đã học **đến hết Buổi 1**, sử dụng **MARS (MIPS Assembler and Runtime Simulator)**.

## Nội dung

| Nội dung | Tệp / liên kết | Ghi chú |
|---|---|---|
| Bài tập viết tay (bản scan PDF) | [`week1/14-10-architecture_computer_hw.pdf`](week1/14-10-architecture_computer_hw.pdf) | Bản bài làm do em tự viết; **không phải đề gốc** |
| Bài 1 / ví dụ đọc biến và tính `x + 5` | [`week1/ex1.asm`](week1/ex1.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/2) | Với `x = 7`, kết quả cần in là `12` |
| Buổi 1 — Phần 1: nhập hai số, tính tổng và hiệu | [`week1/example.asm`](week1/example.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/3) | Dùng `sw` lưu kết quả và `lw` đọc lại trước khi in |
| Bài 4.1: tính `f = (g + h) - (i + j)` | [`week1/lab1.asm`](week1/lab1.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/1) | Kiểm thử bằng bốn bộ giá trị của đề |
| Câu tự kiểm B.5 trước Buổi 1 | [`week1/ex5.asm`](week1/ex5.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/4) | Phần ôn tập; hướng dẫn ghi rõ không phải sản phẩm cần nộp |
| Báo cáo từng bước | [`week1/reports/`](week1/reports/) | Có báo cáo riêng cho từng chương trình và checklist |

## Phân biệt tài liệu trong repo

- `14-10-architecture_computer_hw.pdf` là bản scan bài tập viết tay của em, được lưu làm minh chứng bài làm. Không dùng tệp này như đề gốc khi xác định yêu cầu.
- Các file `.asm` là mã nguồn thực hành để chạy trên MARS.
- Các tài liệu trong `week1/reports/` giải thích từng bước và ghi lại kết quả cần xác nhận. Chỉ ghi kết quả là đã kiểm thử thành công sau khi tự chạy MARS và bổ sung ảnh thực tế.

## Môi trường và cách chạy

- Dùng tệp `Mars4_5.jar` do giảng viên cung cấp và Java để mở MARS.
- Trong MARS, kiểm tra **Settings → Delayed branching** và tắt nếu đang bật, theo hướng dẫn thực hành.
- Mở tệp `.asm`, nhấn **F3 (Assemble)** để dịch, sau đó nhấn **F5 (Go)** để chạy.
- Dùng **F7 (Step)** để đi từng lệnh và quan sát `Registers`; dùng **F8 (Backstep)** để lùi một bước; **F11 (Stop)** để dừng chương trình; **F12 (Reset)** để đặt lại trạng thái trước khi chạy lại.
- Sau mỗi lần sửa mã, cần Assemble lại bằng F3.

## Kết quả tự kiểm

| Tệp | Dữ liệu kiểm thử | Kết quả mong đợi |
|---|---|---|
| `ex1.asm` | `x = 7` | `x + 5 = 12` |
| `example.asm` | `10` và `20` | Tổng `30`, hiệu `-10` |
| `example.asm` | `7` và `13` | Tổng `20`, hiệu `-6` |
| `example.asm` | `100` và `25` | Tổng `125`, hiệu `75` |
| `lab1.asm` | `(g,h,i,j) = (10,20,3,5)` | `f = 22` |
| `lab1.asm` | `(g,h,i,j) = (7,13,4,6)` | `f = 10` |
| `lab1.asm` | `(g,h,i,j) = (5,5,9,1)` | `f = 0` |
| `lab1.asm` | `(g,h,i,j) = (2,3,8,8)` | `f = -11` |

Các giá trị trong bảng là kết quả tính toán cần đối chiếu khi chạy MARS. Báo cáo không thay thế ảnh chụp đầu ra thực tế.

## Báo cáo và bằng chứng

Mỗi báo cáo trong `week1/reports/` nêu mục tiêu, quy trình thao tác, vai trò các lệnh/thanh ghi, kết quả cần kiểm tra và vị trí chèn ảnh chụp từ MARS. Sau khi tự chạy chương trình, hãy cập nhật phần minh chứng bằng ảnh thực tế của mình.

## Lưu ý cần rà soát

- Trong `lab1.asm` hiện tại, các giá trị khởi tạo là `g=2, h=3, i=8, j=8`, nên chương trình kiểm thử trường hợp cuối và cho kết quả `-11`. Một số comment ở các dòng `addi` đang ghi giá trị khác với giá trị thật; cần sửa comment hoặc đổi bộ dữ liệu cho khớp.
- `ex5.asm` hiện có lệnh nhánh tới nhãn `main` nhưng chưa khai báo nhãn này. Tệp chưa nên được xem là chương trình hoàn chỉnh để Assemble/Run cho đến khi sửa; xem chi tiết trong báo cáo B.5.
- Bài 4.2, Bài 4.3 và Bài 4.4 có thể xuất hiện trong bản bài làm viết tay, nhưng theo tài liệu hướng dẫn thực hành, nội dung này thuộc các buổi sau. README hiện chỉ tổng kết phần làm quen và các bài thuộc phạm vi đến hết Buổi 1; việc có bản scan không đồng nghĩa các bài trong đó đã được kiểm chứng bằng MARS.
