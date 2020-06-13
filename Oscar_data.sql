--Check the movie_metadata
SELECT * FROM movie_metadata;

--Check the award
SELECT * FROM award;

--Join the above two datasets into single table
CREATE TABLE oscar_metadata 
As (SELECT *
FROM movie_metadata
LEFT JOIN award ON movie_metadata .original_title = award.film);

--Check the data from the new created table with the merged datasets
SELECT * FROM oscar_metadata;