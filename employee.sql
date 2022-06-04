-- In the employee.sql file, write out the code for the following problems:


-- List all employee first and last names only that live in Calgary.

SELECT (first_name,last_name)
FROM employee 
WHERE city IN ('Calgary')
-- Find the birthdate for the youngest employee.
SELECT (first_name, last_name, birth_date)
FROM employee 
ORDER BY birth_date DESC
LIMIT 1

SELECT MAX(birth_date) from employee;

-- Find the birthdate for the oldest employee.
SELECT (first_name, last_name, birth_date)
FROM employee 
ORDER BY birth_date ASC
LIMIT 1

SELECT MIN(birth_date) from employee;

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column).
-- You will need to query the employee table to find the id for Nancy Edwards
SELECT (first_name, last_name, reports_to)
FROM employee 
WHERE reports_to =2

-- Count how many people live in Lethbridge.

SELECT COUNT(city)
FROM employee
WHERE city = 'Lethbridge';


-- There's a couple problems that talk about referencing fields from other tables (namely Employee question 4, and Update question 5). For these problems, it's perfectly acceptable for you to hardcode ids into the query. E.G:

--  SELECT * FROM table WHERE favoriteFood = 5

-- Some of you who want to try and make it a little more challenging may try using a subquery (we mentioned it in lecture) instead! We'll talk about them next week, but if you want to give it a shot now, what that would look like is something along the lines of:

-- SELECT * FROM table1 WHERE favoriteFoodId IN (SELECT * FROM table2 WHERE foodColor = 'green')

-- Either approach (using the hardcoded ID or going for a subquery) works! And as always, if you have any questions about either, please send us a message or hop in the queue 🙂 