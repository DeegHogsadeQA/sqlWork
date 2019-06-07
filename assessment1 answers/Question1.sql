use movielens;

drop view if exists g_tot;
create view  g_tot as select genre_id, count(genre_id) as c from genres_movies group by genre_id;

drop view if exists pop_gen;
create view Pop_gen as select name from genres where id in (
	select genre_id from g_tot where c in (
		select max(c) from g_tot));

select * from pop_gen;