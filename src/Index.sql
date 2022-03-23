create unique index inx_productCode on products(productCode);
explain select productCode from products;
alter table products add index composite_idx (productName,productPrice);
explain select productName,ProductPrice from demo5.products;