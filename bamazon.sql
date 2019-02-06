create database bamazon;

use bamazon;

create table products (
    item_id int not null auto_increment,
    primary key (item_id),
    product_name varchar(150),
    department_name varchar(50),
    price decimal(9,2),
    stock_quantity int
);

insert into products (product_name, department_name, price, stock_quantity)
    values ("Microsoft Surface Studio 2 - 32GB RAM - 2TB SSD - i7-7820HQ - GTX 1070-8G - 28\" 4500x3000 touch screen", "computers", "4799.00", "10"),
            ("20oz water bottle", "grocery", "0.5", "500000"),
            ("Microsoft Surface Pro 6 - 16GB RAM - 1TB SSD - i7-8650U - 12.3\" 2736x1824 touch screen", "computers", "2299.00", "50"),
            ("Lightning cable iPhone charger - 6ft", "electronics", "9.36", "1000"),
            ("apples", "produce", "0.75", "75"),
            ("bananas", "produce", "0.20", "200"),
            ("oranges", "produce", "0.9", "150"),
            ("4-pack butter sticks", "dairy", "4", "20"),
            ("chicken tenders - 1-lb", "meat", "3.99", "14"),
            ("Snickers - 12 oz", "grocery", "0.85", "55");