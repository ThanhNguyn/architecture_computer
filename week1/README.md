# CSE3032 — Kiến trúc máy tính

Repository lưu mã nguồn Assembly MIPS, bản scan bài tập viết tay và báo cáo thực hành môn CSE3032 — Kiến trúc máy tính. Phạm vi báo cáo chính tập trung vào nội dung đã học đến hết Buổi 1, sử dụng MARS (MIPS Assembler and Runtime Simulator). Một số bài thuộc phần sau, như Bài 4.4, được ghi lại riêng để lưu quá trình tự học và kiểm chứng mã máy.

## Nội dung

| Nội dung | Tệp / liên kết | Ghi chú |
|---|---|---|
| Bài tập viết tay (bản scan PDF) | [`14-10-architecture_computer_hw.pdf`](14-10-architecture_computer_hw.pdf) | Bản bài làm do em tự viết; **không phải đề gốc** |
| Bài 1 / ví dụ đọc biến và tính `x + 5` | [`ex1.asm`](ex1.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/2) | Với `x = 7`, kết quả cần in là `12` |
| Buổi 1 — Phần 1: nhập hai số, tính tổng và hiệu | [`example.asm`](example.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/3) | Dùng `sw` lưu kết quả và `lw` đọc lại trước khi in |
| Bài 4.1: tính `f = (g + h) - (i + j)` | [`lab1.asm`](lab1.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/1) | Kiểm thử bằng bốn bộ giá trị của đề |
| Câu tự kiểm B.5 trước Buổi 1 | [`ex5.asm`](ex5.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/4) | Phần ôn tập; hướng dẫn ghi rõ không phải sản phẩm cần nộp |
| Bài 4.4 — mã hóa và giải mã mã máy | [`ex4.4.asm`](ex4.4.asm) · [Report](https://github.com/ThanhNguyn/architecture_computer/issues/5) | Bài bổ sung thuộc phần mã máy; đối chiếu bằng Assemble trong MARS |

## Phân biệt tài liệu trong repo

- `14-10-architecture_computer_hw.pdf` là bản scan bài tập viết tay của em, được lưu làm minh chứng bài làm. Không dùng tệp này như đề gốc khi xác định yêu cầu.
- Các file `.asm` là mã nguồn thực hành để chạy hoặc Assemble trên MARS.
- Các báo cáo Markdown giải thích cách làm và các kết quả cần đối chiếu. Chỉ ghi kết quả là đã kiểm thử thành công sau khi tự chạy/Assemble trong MARS và bổ sung ảnh thực tế.
- Các báo cáo và ghi chú cũ cũng được lưu trong GitHub Issues được liên kết ở bảng trên.

## Môi trường và cách chạy

- Dùng tệp `Mars4_5.jar` do giảng viên cung cấp và Java để mở MARS.
- Trong MARS, kiểm tra **Settings → Delayed branching** và tắt nếu đang bật, theo hướng dẫn thực hành.
- Mở tệp `.asm`, nhấn **F3 (Assemble)** để dịch, sau đó nhấn **F5 (Go)** để chạy chương trình cần thực thi.
- Với bài chỉ yêu cầu mã hóa/giải mã, chỉ cần **Assemble** và xem cột **Code** trong **Text Segment**, không cần Go/Run.
- Dùng **F7 (Step)** để đi từng lệnh và quan sát `Registers`; dùng **F8 (Backstep)** để lùi một bước; **F11 (Stop)** để dừng chương trình; **F12 (Reset)** để đặt lại trạng thái trước khi chạy lại.
- Sau mỗi lần sửa mã, cần Assemble lại bằng F3.