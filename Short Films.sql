SELECT movie_title,movie_year,concat(director_first_name,director_last_name) AS director_name , concat(actor_first_name,actor_last_name) AS actor_name ,role
FROM directors,movies,movies_directors,actors,movies_cast
WHERE movies.movie_id = movies_directors.movie_id AND movies_directors.director_id = directors.director_id AND movies.movie_id = movies_cast.movie_id AND movies_cast.actor_id = actors.actor_id AND movies.movie_time = (SELECT MIN(movies.movie_time) FROM movies) 
