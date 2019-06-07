use movielens;

drop view if exists r_tot;
create view  r_tot as select user_id, count(rating) as number_of_ratings from ratings group by user_id;

drop view if exists test;
create view test as select id as use_id, occupation_id from users;

drop view if exists occ_tot;
create view occ_tot as select occupation_id, use_id, name from test join occupations on test.occupation_id = occupations.id;



drop view if exists joining;
create view joining as select user_id, number_of_ratings, occupation_id, name from r_tot join occ_tot on r_tot.user_id = occ_tot.use_id;

drop view if exists occ_rate;
create view occ_rate as select name, sum(number_of_ratings) as total_ratings from joining group by name;

select * from occ_rate;