use movielens;

drop view if exists movie_ratings;
create view movie_ratings as select movie_id, count(rating) as ratings_count from ratings group by movie_id;

drop view if exists high_rate;
create view high_rate as select title as most_reviews from movies where id in (
	select movie_id from movie_ratings where ratings_count in(
		select max(ratings_count) from movie_ratings));
        
select * from high_rate;