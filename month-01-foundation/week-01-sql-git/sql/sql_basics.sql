-- Week 01 - SQL Basics
-- Database: de_learning

-- 1. Tạo bảng customers
CREATE TABLE customers (
    customer_id INT,
    full_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

-- 2. Thêm dữ liệu mẫu vào bảng customers
INSERT INTO customers (customer_id, full_name, email, city)
VALUES
    (1, 'Nguyen Van An', 'an@example.com', 'Hanoi'),
    (2, 'Tran Thi Binh', 'binh@example.com', 'Ho Chi Minh'),
    (3, 'Le Minh Chau', 'chau@example.com', 'Da Nang');

-- 3. Lấy toàn bộ dữ liệu từ bảng customers
SELECT * FROM customers;

-- 4. SELECT tất cả cột từ bảng customers
SELECT *
FROM customers;

-- 5. SELECT một số cột cụ thể
SELECT customer_id, full_name
FROM customers;

-- 6. Lọc dữ liệu với WHERE
SELECT *
FROM customers
WHERE city = 'Hanoi';

-- 7. Sắp xếp dữ liệu tăng dần với ORDER BY ASC
SELECT *
FROM customers
ORDER BY customer_id ASC;

-- 8. Sắp xếp dữ liệu giảm dần với ORDER BY DESC
SELECT *
FROM customers
ORDER BY customer_id DESC;

-- 9. Giới hạn số dòng trả về với LIMIT
SELECT *
FROM customers
LIMIT 2;

-- 10. Kết hợp ORDER BY và LIMIT
-- Lấy khách hàng có customer_id lớn nhất
SELECT *
FROM customers
ORDER BY customer_id DESC
LIMIT 1;

-- 11. Thêm thêm dữ liệu mẫu vào bảng customers
INSERT INTO customers (customer_id, full_name, email, city)
VALUES
    (4, 'Pham Quoc Dung', 'dung@example.com', 'Hanoi'),
    (5, 'Hoang Thu Ha', 'ha@example.com', 'Ho Chi Minh'),
    (6, 'Do Manh Hung', 'hung@example.com', 'Hanoi');

-- 12. Lọc khách hàng có customer_id từ 4 trở lên
SELECT *
FROM customers
WHERE customer_id >= 4;

-- 13. Lọc khách hàng ở Hanoi
SELECT *
FROM customers
WHERE city = 'Hanoi';

-- 14. Lọc khách hàng ở Hanoi và customer_id từ 4 trở lên
SELECT *
FROM customers
WHERE city = 'Hanoi'
  AND customer_id >= 4;

-- 15. Lọc khách hàng ở Hanoi hoặc Da Nang
SELECT *
FROM customers
WHERE city = 'Hanoi'
   OR city = 'Da Nang';

-- 16. Lọc khách hàng không ở Hanoi
SELECT *
FROM customers
WHERE city <> 'Hanoi';

-- 17. Tìm khách hàng có email chứa example.com
SELECT *
FROM customers
WHERE email LIKE '%example.com%';