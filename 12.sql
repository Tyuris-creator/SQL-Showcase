--In 12.sql, write a SQL query to list the titles of all movies in which both Bradley Cooper and Jennifer Lawrence starred.
--Your query should output a table with a single column for the title of each movie.
--You may assume that there is only one person in the database with the name Bradley Cooper.
--You may assume that there is only one person in the database with the name Jennifer Lawrence.

--people.name = "Bradley Cooper" AND people.name = "Jennifer Lawrence";
--SELECT person_id FROM stars WHERE person_id IN (SELECT id FROM people WHERE name = "Bradley Cooper");
--SELECT person_id FROM stars WHERE person_id IN (SELECT if FROM people WHERE name = "Jennifer Lawrence");
SELECT title FROM movies WHERE id IN (
SELECT id FROM movies WHERE id IN
(SELECT movie_id FROM stars WHERE person_id in
(SELECT id FROM people WHERE name = "Bradley Cooper"))) AND id IN

(SELECT id FROM movies WHERE id IN
(SELECT movie_id FROM stars WHERE person_id in
(SELECT id FROM people WHERE name = "Jennifer Lawrence")));
