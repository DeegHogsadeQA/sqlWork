use movielens;


drop view if exists movie_ratings;
create view movie_ratings as select movie_id, count(rating) as ratings_count from ratings group by movie_id;



drop view if exists reviewed;
create view reviewed as select movie_id, ratings_count from movie_ratings where ratings_count>10;



drop view if exists more_reviews;
create view more_reviews as select movie_id, rating from ratings where movie_id in (
	select movie_id from reviewed);
    
drop view if exists average_ratings;
create view average_ratings as select movie_id, avg(rating) as avg_rating from more_reviews group by movie_id;


drop view if exists highest_rated;
create view highest_rated as select title from movies where id in (
	select movie_id from average_ratings where avg_rating in (
		select max(avg_rating) from average_ratings));
        
select * from highest_rated;
