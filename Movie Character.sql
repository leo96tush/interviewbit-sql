SELECT concat(director_first_name,director_last_name) AS director_name,movie_title
FROM directors,movies,movies_directors,movies_cast
WHERE directors.director_id = movies_directors.director_id AND movies_directors.movie_id = movies.movie_id AND movies_cast.movie_id = movies.movie_id AND movies_cast.role = 'SeanMaguire'
