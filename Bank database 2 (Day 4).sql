use Bank;
drop table customer;
create table customer (c_id int, first_name varchar(30), primary key (c_id));
insert into customer values ('1', 'Chris'),
							('2', 'Hugo'),
                            ('3', 'Viki'),
                            ('4', 'Rob');
                            

drop table accounts;
create table accounts (a_id int, cid int, balance dec(5,2), primary key (a_id), foreign key (cid) references customer(c_id));
insert into accounts values ('1', '1', 200),
							('2', '1', 150),
                            ('3', '2', 100),
                            ('4', '3', 180);
update accounts set balance = '280' where cid = 3;
