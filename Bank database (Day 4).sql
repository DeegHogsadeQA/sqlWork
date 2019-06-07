use bank;
-- select cid from (select cid, sum(balance) as total from accounts group by cid) as total_table where total = 
-- 		(select max(total) from (select cid, sum(balance) as total from accounts group by cid) as total_table);
-- -- create view total_table as Select cid, total from (Select cid, sum(balance) as total from accounts group by cid) as t;
-- -- select first_name from customer where c_id = 
-- select first_name from customer where c_id in (select cid from total_table where total = (Select max(total) from total_table));

-- select max(total) from (select cid, sum(balance) as total from accounts group by cid) as total_table;
-- select first_name from customer where c_id = 
-- 	select cid from (select cid, sum(balance) as total from accounts group by cid) as total_table where total = 
-- 		(select max(total) from (select cid, sum(balance) as total from accounts group by cid) as total_table);