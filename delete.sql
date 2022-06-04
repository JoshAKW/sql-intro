INSERT INTO animals ( name, type, age ) 
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);


-- In the delete.sql file, write out the code for the following problems:
-- Deleting is DANGEROUS!
-- Always do a select before a delete to make sure you get back exactly what you want and only what you want to delete!

-- Since we cannot delete anything from the pre-defined tables (foreign key restraints), let’s go make our own tables in SQL Tabs! (Technically, you can create tables in the Postgres Sandbox too, but let’s practice with SQL Tabs.)


-- # Open up SQL Tabs and connect to the Heroku DB you set up during the demo.


-- Create a table called animals that has 4 columns: id - serialized integer that’s the primary key, name - can be any data type that holds strings, type - also for strings, and age which will be a whole number.
CREATE TABLE animals ( 
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50), 
    type TEXT, 
    age INTEGER 
);


-- Next, run the commented code provided in delete.sql to insert some data into your table.
INSERT INTO animals ( name, type, age ) 
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);

-- Try selecting from animals to confirm that everything worked.
SELECT * FROM animals;

-- Delete all ‘lion’ entries from the table.
DELETE 
FROM animals
WHERE type = 'lion';

-- Delete all animals whose names start with “M”.

DELETE 
FROM animals
WHERE name LIKE 'M%';
-- Delete all entries whose age is less than 9.
DELETE 
FROM animals
WHERE age < 9;