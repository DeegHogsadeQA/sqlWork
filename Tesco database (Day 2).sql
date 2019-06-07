-- use tesco;
-- alter table stores 
-- add rating varchar(10);
-- insert into stores (id, location, rating) values ('1', 'Salford', 'Bad');
-- insert into stores (id, location, rating) values ('2', 'Salford', 'Good');
-- insert into stores (id, location, rating) values ('3', 'Manchester', 'OK');
-- alter table stores
-- add size varchar(10);
-- update stores set size = 'Big' where id = 1;
-- update stores set size = 'Small' where id = 2;

-- select * from tesco.stores;

-- select * from products;
-- insert into products values ('1', 'tea');
-- insert into products values ('2', 'ham');
-- insert into products values ('3', 'penguins');

-- select * from customers;
-- insert into customers values ('1', 'Chris', '22');
-- insert into customers values ('2', 'Al', 'Heart');
-- insert into customers values ('3', 'Danny', 'Heart');

-- insert into orders_line values ('1', '1', '1'), ('2', '1', '3'), ('3', '2', '1');
-- select * from orders_line;

-- select * from stores order by location, rating desc;

-- select * from stores limit 2;

select orderID from orders where customerNo = (select id from customers where firstName = 'chris');
insert into orders (orderID, customerNo) values ('1', '3');
insert into orders (orderID, customerNo) values (2, 2);
insert into orders (orderID, customerNo) values (3, 2);

