# Setup Notes

## 1. Mục tiêu buổi setup

Buổi này dùng để chuẩn bị môi trường học Data Engineering trong 6 tháng.

Các công cụ cần có:

- Git
- Python
- PostgreSQL
- psql
- VS Code

## 2. Kết quả kiểm tra công cụ

### Git

Lệnh kiểm tra:

git --version

Kết quả:

git version 2.51.1.windows.1

### Python

Lệnh kiểm tra:

python --version

Kết quả:

Python 3.13.7

### PostgreSQL / psql

Lệnh kiểm tra:

psql --version

Kết quả:

psql (PostgreSQL) 18.4

### VS Code

Lệnh kiểm tra:

code --version

Kết quả:

VS Code đã nhận lệnh `code`.

## 3. Lỗi đã gặp

### Lỗi 1: CMD không nhận lệnh psql

Thông báo lỗi:

'psql' is not recognized as an internal or external command,
operable program or batch file.

Nguyên nhân:

PostgreSQL đã cài nhưng Windows chưa biết file `psql.exe` nằm ở đâu.

Cách kiểm tra PostgreSQL đã cài:

dir "C:\Program Files\PostgreSQL"

Kết quả:

Có thư mục version `18`.

Cách test trực tiếp psql:

"C:\Program Files\PostgreSQL\18\bin\psql.exe" --version

Kết quả:

psql (PostgreSQL) 18.4

Cách sửa tạm thời trong CMD:

set PATH=%PATH%;C:\Program Files\PostgreSQL\18\bin

Cách sửa vĩnh viễn:

Thêm đường dẫn sau vào Environment Variables > User variables > Path:

C:\Program Files\PostgreSQL\18\bin

Sau đó mở CMD mới và chạy lại:

psql --version

Kết quả:

psql (PostgreSQL) 18.4

## 4. Ghi chú quan trọng

PATH là danh sách các thư mục mà Windows dùng để tìm command.

Khi gõ:

psql --version

Windows sẽ đi tìm file `psql.exe` trong các thư mục có trong PATH.

Nếu thư mục PostgreSQL `bin` chưa nằm trong PATH thì CMD sẽ không nhận lệnh `psql`.

## 5. Kết quả hôm nay

Ngày bắt đầu: 28/06/2026

Kết quả:

- Đã tạo folder học Data Engineering
- Đã tạo cấu trúc tuần 1
- Đã cài PostgreSQL
- Đã sửa PATH cho psql
- Đã kiểm tra Git, Python, PostgreSQL và VS Code
- Đã tạo README.md
- Đã tạo notes/setup.md