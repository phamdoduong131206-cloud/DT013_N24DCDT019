# DT013 – Sắp xếp nổi bọt có cờ dừng sớm

## 1. Thông tin sinh viên

- **Họ và tên:** Phạm Đỗ Dương
- **MSSV:** N24DCDT019
- **Lớp:** D24CQDT01-N
- **Học phần:** INT13185 – Nhóm 03
- **Mã đề tài:** DT013
- **Tên đề tài:** Sắp xếp nổi bọt có cờ dừng sớm

## 2. Mô tả đề tài

Cài đặt thuật toán sắp xếp nổi bọt (Bubble Sort) có sử dụng cờ dừng sớm bằng ngôn ngữ Julia.

Thuật toán so sánh các phần tử liền kề và đổi chỗ khi chúng không đúng thứ tự. Nếu một lượt duyệt không xảy ra phép đổi chỗ nào, thuật toán dừng sớm vì mảng đã được sắp xếp.

## 3. Cấu trúc dự án

```text
DT013_N24DCDT019/
├── src/
│   └── DT013_N24DCDT019.jl
├── tests/
│   └── tests_DT013_N24DCDT019.jl
├── evidence/
│   ├── 01_vi_du_1.png
│   ├── 02_vi_du_2.png
│   ├── 03_tu_thiet_ke_1.png
│   ├── 04_tu_thiet_ke_2.png
│   ├── 05_truong_hop_xau_nhat.png
│   ├── 06_phan_tu_trung.png
│   ├── 07_mang_rong.png
│   ├── 08_input_khong_hop_le.png
│   ├── 09_tong_ket_kiem_thu.png
│   ├── 10_clone_sach_chay_lai.png
│   └── 11_github_repo_commit.png
└── README.md
```

## 4. Yêu cầu môi trường

- Đã cài đặt Julia 1.x.
- Có thể chạy lệnh Julia trong Terminal của VS Code.
- Các bài kiểm thử sử dụng thư viện `Test` có sẵn trong Julia.

## 5. Cách chạy chương trình

Mở Terminal tại thư mục gốc của dự án và chạy:

```powershell
julia src/DT013_N24DCDT019.jl
```

## 6. Cách chạy kiểm thử

Chạy lệnh:

```powershell
julia tests/tests_DT013_N24DCDT019.jl
```

Kết quả kiểm thử cần được đối chiếu với màn hình thực tế. Khi chạy thành công, chụp ảnh kết quả để lưu vào thư mục `evidence/`.

## 7. Các trường hợp kiểm thử

- Ví dụ 1 và ví dụ 2 theo đề bài.
- Mảng tự thiết kế có số nguyên dương và âm.
- Mảng có phần tử trùng nhau.
- Mảng giảm dần, là trường hợp xấu đối với thuật toán nổi bọt.
- Mảng có các phần tử bằng nhau.
- Mảng rỗng.
- Đầu vào vượt quá giới hạn 2000 phần tử.
- Chạy toàn bộ bộ kiểm thử tự động.

## 8. Ảnh minh chứng

Thư mục `evidence/` dùng để lưu ảnh chụp màn hình thực tế:

- `01_vi_du_1.png` đến `09_tong_ket_kiem_thu.png`: minh chứng chạy ví dụ, kiểm tra các trường hợp và kết quả kiểm thử.
- `10_clone_sach_chay_lai.png`: minh chứng clone dự án từ GitHub vào một thư mục mới và chạy lại chương trình, kiểm thử.
- `11_github_repo_commit.png`: minh chứng repository GitHub và commit của dự án.

**Lưu ý:** Chỉ ghi nhận ảnh minh chứng là hoàn thành sau khi đã thực hiện thao tác tương ứng và chụp ảnh thật. Không dùng ảnh giả lập hoặc ghi kết quả chưa kiểm tra.

## 9. Kiểm tra trước khi nộp

- [ ] Chạy chương trình thành công.
- [ ] Chạy bộ kiểm thử và kiểm tra kết quả thực tế.
- [ ] Bổ sung đầy đủ ảnh minh chứng vào `evidence/`.
- [ ] Đẩy mã nguồn lên repository GitHub.
- [ ] Clone dự án vào thư mục mới và chạy lại chương trình, kiểm thử.
- [ ] Kiểm tra README và các tệp cần nộp.
- [ ] Hoàn thiện báo cáo theo yêu cầu của giảng viên.

**Trạng thái:** Chưa xác nhận hoàn tất cho đến khi các bước kiểm tra, ảnh minh chứng và thao tác GitHub được thực hiện thực tế.