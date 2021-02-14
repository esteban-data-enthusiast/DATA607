
-- Populate movies table
insert into movies.movies
(movie_name, release_year)
select distinct Movie, MovieYear
from movies.recent_movies_ratings;

-- select * from movies.movies;


-- Populate persons table
insert into movies.persons
(person_name)
select distinct Person
FROM movies.recent_movies_ratings;

-- select * from movies.persons


-- Populate movie_ratings table
insert into movies.movie_ratings
(movie_id, person_id, rating_value)
select m.movie_id, p.person_id, r.Rating
from movies.recent_movies_ratings as r
inner join movies.movies m
on r.Movie = m.movie_name
inner join movies.persons p
on r.Person = p.person_name;

-- select * from movies.movie_ratings

-- Create view to see all movies with their ratings
/*
create view `movie_ratings_view` as
select m.movie_id, m.movie_name, m.release_year, p.person_name, r.rating_value
from movies.movies m
left join movies.movie_ratings r
on m.movie_id = r.movie_id
left join movies.persons p
on r.person_id = p.person_id;
*/

select * from movies.movie_ratings_view;






