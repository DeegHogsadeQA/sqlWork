use asda;
drop table category;
drop table sub_category;
drop table product;
drop table sales;
create table sales (sales_id int, dates timestamp);
create table sales_product (sales_product_id int, sales_id int, Pid int, primary key(sales_product_id), foreign key (sales_id) references sales (sale_id));
create table category (id int, category_name varchar(20), primary key (id));
create table sub_category (id int, category_id int, sub_name varchar(30), primary key (id), foreign key (category_id) references category(id));
create table product (Prod_id int, sub_id int, prod varchar(30), primary key (prod_id), foreign key(sub_id) references sub_category(id));

insert into category values ('1', 'Drink'), ('2', 'Food');
insert into sub_category values ('1', '1', 'Soft Drinks'), ('2', '1', 'Alcohol'), ('3', '1', 'Juice'), ('4', '2', 'Snacks'), ('5', '2', 'Meals');
insert into product values ('1', '1', 'Fanta'), ('2', '1', 'Coke'), ('3', '1', '7up'), ('4', '2', 'Wine'), ('5', '3', 'Juice'), ('6', '4', 'Twix'), ('7', '4', 'KitKat'), ('8', '5', 'Meal41');
insert into sales_product values ('1', '1', '1'), ('2', '1', '2'), ('3', '1', '4'), ('4', '2', '3'), ('5', '2', '4');
select distinct sales_id from sales_product where Pid in(
select prod from product where sub_id in (
(select id from sub_category where category_id = 
(select id from category where id=1)
)
);
