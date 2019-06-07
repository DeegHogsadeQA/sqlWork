use movielens;

drop view if exists modified_users;
create view modified_users as select id as use_id, occupation_id from users;


drop view if exists complete;
create view complete as select user_id, movie_id, rating, occupation_id from modified_users join ratings on modified_users.use_id = ratings.user_id;

drop view if exists horror_ratings;
create view horror_ratings as select occupation_id from complete where user_id in (
		select user_id from ratings where movie_id in (
			select movie_id from genres_movies where genre_id in (
				select id from genres where name in ('Horror'))));
                

drop view if exists counting;
create view counting as select occupation_id, count(occupation_id) as max_count from horror_ratings group by occupation_id;

drop view if exists occ_horr;
create view occ_horr as select name from occupations where id in (
	select occupation_id from counting where max_count in(
		select max(max_count) from counting));

select * from occ_horr;