CREATE TABLE oscar_metadata
AS(SELECT *
from movie_clean 
LEFT JOIN oscars_clean 
ON movie_clean.original_title = oscars_clean.film);