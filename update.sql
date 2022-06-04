-- In the update.sql file, write out the code for the following problems:

-- These questions reference both the customer table and track table.


-- Find all customers with fax numbers and set those numbers to null.
UPDATE customer
SET fax = null
WHERE fax IS NOT null -- why doesn't <> work?


-- Find all customers with no company (null) and set their company to “Self”.
UPDATE customer
SET company = 'Self'
WHERE fax IS null


-- Find the customer Julia Barnett and change her last name to Thompson.
UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett'

-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl' 

-- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.

UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = ( SELECT genre_id FROM genre WHERE name = 'Metal' )
AND composer IS null;




-- There's a couple problems that talk about referencing fields from other tables (namely Employee question 4, and Update question 5). For these problems, it's perfectly acceptable for you to hardcode ids into the query. E.G:

--  SELECT * FROM table WHERE favoriteFood = 5

-- Some of you who want to try and make it a little more challenging may try using a subquery (we mentioned it in lecture) instead! We'll talk about them next week, but if you want to give it a shot now, what that would look like is something along the lines of:

-- SELECT * FROM table1 WHERE favoriteFoodId IN (SELECT * FROM table2 WHERE foodColor = 'green')

-- Either approach (using the hardcoded ID or going for a subquery) works! And as always, if you have any questions about either, please send us a message or hop in the queue 🙂 