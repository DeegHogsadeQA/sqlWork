create database movielens;
use movielens;

describe users;
describe occupations;


select name, count(name) as summy from
	(select name from (select occupation_id from 
		(select user_id from ratings where movie_id in 
			(select movie_id from genres_movies where genre_id = 
				(select id from genres where name = "Horror")))
					as usersWhoRated join users on usersWhoRated.user_id = users.id)
						as allOccRatedHorror join occupations on allOccRatedHorror.occupation_id = occupations.id) as allOccRatedHorror
                        group by name;

select name from horrorRaters where summy = (select max(summy) from horrorRaters);
                        
-- create view horrorRaters as (select name, count(name) as summy from
-- 	(select name from (select occupation_id from 
-- 		(select user_id from ratings where movie_id in storesname
-- 			(select movie_id from genres_movies where genre_id = 
-- 				(select id from genres where name = "Horror")))
-- 					as usersWhoRated join users on usersWhoRated.user_id = users.id)
-- 						as allOccRatedHorror join occupations on allOccRatedHorror.occupation_id = occupations.id) as allOccRatedHorror
--                         group by name);