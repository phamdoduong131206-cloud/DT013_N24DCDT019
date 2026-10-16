# DT013 – Sắp xếp nổi bọt có cờ dừng sớm

**Sinh viên:** Phạm Đỗ Dương  
**MSSV:** N24DCDT019  
**Lớp:** D24CQDT01-N  
**Học phần:** INT13185 – Nhóm 03  
**Đề tài:** DT013 – Sắp xếp nổi bọt có cờ dừng sớm

## Cấu trúc

- `src/DT013_N24DCDT019.jl`: thuật toán có cờ dừng sớm, bản đủ lượt để đối chiếu, hàm lần vết và demo.
- `tests/tests_DT013_N24DCDT019.jl`: các ca kiểm thử độc lập và kiểm tra bộ đếm.
- `evidence/`: nơi đặt 11 ảnh chụp thật A01–A11 sau khi chạy chương trình và thao tác GitHub.
- `ThongTinNop.txt`: thông tin phiên bản cần hoàn thiện sau khi có repo GitHub thật.

## Điều kiện

Cần cài Julia 1.x. Mã không yêu cầu gói ngoài thư viện chuẩn `Test`.

## Chạy từ thư mục gốc dự án

```sh
julia src/DT013_N24DCDT019.jl
julia tests/tests_DT013_N24DCDT019.jl
```

## Hành vi thuật toán

`noi_bot_co_co(a)` sắp xếp vector số nguyên tăng dần. Sau mỗi lượt, nếu không có hoán đổi, cờ `da_doi` vẫn `false` và vòng lặp dừng sớm. `noi_bot_du_luot(a)` chạy đủ lượt để làm bản đối chiếu. Hai hàm trả về một `NamedTuple` gồm `a`, `so_sanh`, `hoan_doi`, `so_luot`. Giới hạn độ dài trong bản này là 0–2000 phần tử; đầu vào dài hơn bị báo `ArgumentError`.

## Trước khi nộp – các bước bắt buộc chưa thể làm thay bạn

1. Chạy hai lệnh trên bằng Julia thật; lưu output và xử lý mọi lỗi nếu có.
2. Chụp ảnh màn hình thật, rõ lệnh/input/output: A01–A08 cho tám ca, A09 cho tổng kết test, A10 cho clone sạch chạy lại, A11 cho repo/commit trên GitHub. Lưu ảnh trong `evidence/` và chèn cùng ảnh vào báo cáo.
3. Tạo repo GitHub và đẩy các tệp. Không dùng URL/SHA giả.
4. Lấy commit bằng `git rev-parse HEAD`; ghi SHA đầy đủ C và permalink file tại C trong báo cáo. Sau khi hoàn thiện toàn bộ tệp, tạo commit cuối S và ghi SHA S vào `ThongTinNop.txt`.
5. Clone S vào thư mục mới, chạy lại demo và test theo lệnh ở trên, chụp A10. Kiểm tra quyền truy cập repo và đường dẫn permalink.
6. Xuất PDF từ đúng phiên bản DOCX cuối cùng.

**Trạng thái:** gói mã, bộ test và báo cáo đã được chuẩn bị; chưa thể coi là bộ nộp hoàn chỉnh cho đến khi chạy Julia, chụp đủ 11 ảnh thật, tạo/kiểm tra repo GitHub, điền SHA C/S và kiểm thử clone sạch. Các mục này không được tự đánh dấu PASS khi chưa thực hiện.
