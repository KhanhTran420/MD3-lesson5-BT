CREATE VIEW product_view AS SELECT  productCode, productName, ProductPrice,ProductStatus FROM demo5.products;
select * from product_view;

update product_view set product_view.productPrice = 50 where productPrice = 0;
drop view product_view;