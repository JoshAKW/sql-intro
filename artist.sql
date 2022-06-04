-- In the artist.sql file, write out the code for the following problems:


-- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name)
VALUES ('Two Steps From Hell'),
       ('Michelle Mclaughlin'),
        ('Beach Boys');

-- Select 10 artists in reverse alphabetical order.

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;


-- Select 5 artists in alphabetical order.

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- Select all artists that start with the word ‘Black’.
SELECT name
FROM artist
WHERE name ILIKE 'black%';

-- Select all artists that contain the word ‘Black’.
SELECT name
FROM artist
WHERE name ILIKE '%black%';