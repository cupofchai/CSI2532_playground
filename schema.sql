-- 1st question
SELECT name, birthplace
FROM artists;
-- 2nd question
SELECT title, price
FROM artworks
WHERE year > 1600;
-- 3rd question
SELECT title, type
FROM artworks
WHERE year = 2000 OR artist_name = 'Picasso';
-- 4th question
SELECT name, birthplace
FROM artists
WHERE EXTRACT(YEAR FROM dateofbirth)>1880 AND EXTRACT(YEAR FROM dateofbirth)<1930;
-- 5th question
SELECT name, birthplace
FROM artists
WHERE style = 'Modern' OR style = 'Baroque' OR style = 'Renaissance';
-- 6th question
SELECT *
FROM artworks
GROUP BY title;
-- 7th question
SELECT name, id
FROM customers, likeartists
WHERE id = customer_id AND artist_name = 'Picasso';
--8th question
SELECT c.name
FROM customers AS c,
(SELECT name
 FROM artists
 WHERE style = 'Baroque') AS ren,
 likeartists AS l,
 artworks AS a
WHERE c.id = l.customer_id AND l.artist_name = ren.name AND  a.artist_name = ren.name AND a.price>30000;
