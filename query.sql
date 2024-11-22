use product_management;

select * from products;

create unique index code_index on products(productCode);
drop index code_index on products;

create index name_price_index on products(productName, productPrice);
drop index name_price_index on products;

explain select * from products
where productCode = 'P008';

explain select * from products
where productName = 'Tivi Samsung 4K 65 inch' and productPrice = 1500.00;

create view product_info as
select productCode, productName, productPrice, productStatus
from products;

select * from product_info;

update product_info
set productPrice = 1199.00
where productCode = 'P001';

delete from product_info
where productCode = 'P006';

drop view product_info;

DELIMITER //
create procedure getAllProduct()
begin
	select * from products;
end;
//DELIMITER ;

call getAllProduct();

DELIMITER //
create procedure insertNewProduct(
	in new_productCode varchar(10),
	in new_productName varchar(100),
	in new_productPrice DECIMAL(10, 2),
	in new_productAmount INT,
	in new_productDescription TEXT,
	in new_productStatus ENUM('Available', 'OutOfStock', 'Discontinued')
)
begin
	insert into Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
	values
    (new_productCode, new_productName, new_productPrice, new_productAmount, new_productDescription, new_productStatus);
    
end;
//DELIMITER ;

call insertNewProduct(
'P011', 'Ghế gaming DXRacer', 300.00, 25, 'Ghế gaming cao cấp hỗ trợ cột sống và thoải mái khi ngồi lâu', 'Available');

DELIMITER //
create procedure editProduct(
	in exist_id int,
	in new_productCode varchar(10),
	in new_productName varchar(100),
	in new_productPrice DECIMAL(10, 2),
	in new_productAmount INT,
	in new_productDescription TEXT,
	in new_productStatus ENUM('Available', 'OutOfStock', 'Discontinued')
)
begin
	update products
    set
		productCode = new_productCode,
		productName = new_productName,
		productPrice = new_productPrice,
		productAmount =  new_productAmount,
		productDescription = new_productDescription,
		productStatus = new_productStatus
    where products.id = exist_id;
end;
//DELIMITER ;

call editProduct(12, 'P012', 'Laptop Lenovo ThinkPad X1 Carbon', 1500.00, 10, 'Laptop doanh nhân mỏng nhẹ và bền bỉ', 'Available');

DELIMITER //
create procedure deleteProduct
(in delete_id int)
begin
	delete from products
    where id = delete_id;
end;
//DELIMITER ;

call deleteProduct(12);