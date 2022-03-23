delimiter //
create procedure getProducts()
begin
    select * from products;
end //
delimiter ;
call getProducts();

delimiter //
create procedure addNewProduct(
    newId int , newCode varchar(10),newName varchar(50),newPrice int,newAmount int,newDescript varchar(50),newStatus bit
)
begin
    insert into products values
        (newId,newCode,newName,newPrice,newAmount,newDescript,newStatus);
end //
call addNewProduct(6,'p6','diablo III',300,8,'adventure',1);


delimiter //
create procedure editProduct(newId int,newCode varchar(10),newName varchar(50),newPrice int,newAmount int,newDescript varchar(50),newStatus bit)
begin
    update products p set p.productCode = newCode, p.productName = newName,
                          p.productPrice = newPrice, p.productAmount = newAmount, p.productDescription = newDescript,
                          p.productStatus = newStatus where p.id = newId;
end //
//delimiter ;
call editProduct(4,'p04','Call of duty black ops',250,9,'fps action',1);

DELIMITER //
CREATE PROCEDURE deleteProductByiD(deleteID INT)
BEGIN
    delete from demo5.products where Id = deleteID;
end //DELIMITER ;
call deleteProductByiD(6);