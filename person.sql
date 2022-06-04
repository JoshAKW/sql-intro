-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)

CREATE TABLE person(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(40) NOT NULL,
    age INTEGER,
    height INTEGER,
    city VARCHAR(40),
  	favorite_color VARCHAR(20)
);





-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Jack', 25, 74,'Palmer','Green'),
 ('Joseph', 32, 69,'Barrow','Red'),
 ('Greg', 52, 71,'Wasilla','Blue'),
 ('Stacey', 19, 82,'Sitcka','Purple'),
 ('Lynette', 45, 64,'Meridian','Gray')
 ('Jack', 25, 74,'Palmer','Green'),
 ('Madison', 18, 69,'Barrow','Red'),
 ('Grover', 15, 71,'Wasilla','Blue'),
 ('Stephanie', 25, 82,'Sitcka','Purple'),
 ('Linda', 32, 64,'Meridian','Gray');


-- Select all the people in the person table by height from tallest to shortest.
SELECT name, height
FROM person
ORDER BY height DESC;

SELECT * FROM person ORDER BY height DESC;

-- Select all the people in the person table by height from shortest to tallest.
SELECT name, height
FROM person
ORDER BY height ASC;

SELECT * FROM person ORDER BY height ASC;

-- Select all the people in the person table by age from oldest to youngest.
SELECT name, age
FROM person
ORDER BY age ASC;

-- Select all the people in the person table older than age 20.
SELECT * FROM person WHERE age > 20
ORDER BY age DESC;
-- Select all the people in the person table that are exactly 18.
SELECT * FROM person WHERE age = 18
ORDER BY age DESC;

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person WHERE age < 20 or age > 30
ORDER BY age DESC;

-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person WHERE age <> 27
ORDER BY age DESC;

-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person WHERE favorite_color <> UPPER('Red')   -- how to lowercase it?

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE favorite_color <> 'Red' AND favorite_color <> 'Blue'

-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green'

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person WHERE favorite_color IN ('Orange','Green','Blue')

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person WHERE favorite_color IN ('Yellow','Purple')