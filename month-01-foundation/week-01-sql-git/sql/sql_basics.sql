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