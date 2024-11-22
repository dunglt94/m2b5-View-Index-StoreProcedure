create database Product_Management;

use Product_Management;

create table Products (
Id int not null auto_increment primary key,
productCode varchar(10),
productName varchar(100),
productPrice DECIMAL(10, 2) NOT NULL,
productAmount INT NOT NULL,
productDescription TEXT,
productStatus ENUM('Available', 'OutOfStock', 'Discontinued') NOT NULL
);

INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES
    ('P001', 'Laptop Dell XPS 13', 1200.00, 50, 'Ultrabook cao cấp từ Dell', 'Available'),
    ('P002', 'iPhone 15 Pro', 999.00, 30, 'Điện thoại cao cấp từ Apple', 'Available'),
    ('P003', 'Tai nghe Sony WH-1000XM5', 400.00, 100, 'Tai nghe chống ồn hàng đầu', 'Available'),
    ('P004', 'Máy giặt LG Inverter', 800.00, 20, 'Máy giặt tiết kiệm năng lượng', 'OutOfStock'),
    ('P005', 'Tivi Samsung 4K 65 inch', 1500.00, 10, 'Tivi độ phân giải cao', 'Available'),
    ('P006', 'Máy ảnh Canon EOS 90D', 1200.00, 0, 'Máy ảnh DSLR chuyên nghiệp', 'Discontinued');
    
INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES
    ('P007', 'Bàn phím cơ Logitech G Pro', 150.00, 75, 'Bàn phím cơ chuyên game với RGB', 'Available'),
    ('P008', 'Loa Bluetooth JBL Charge 5', 200.00, 40, 'Loa di động chống nước, âm thanh chất lượng cao', 'Available'),
    ('P009', 'Samsung Galaxy Watch 6', 350.00, 15, 'Đồng hồ thông minh hỗ trợ thể thao và sức khỏe', 'OutOfStock'),
    ('P010', 'Máy chiếu Epson EH-TW7100', 2500.00, 5, 'Máy chiếu 4K chuyên nghiệp cho gia đình', 'Available');

INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES  ('P006', 'Máy ảnh Canon EOS 90D', 1200.00, 0, 'Máy ảnh DSLR chuyên nghiệp', 'Discontinued');