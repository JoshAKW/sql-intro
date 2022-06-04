-- In the orders.sql file, write out the code for the following problems:


-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL,
    person_id SERIAL PRIMARY KEY,
    product_name VARCHAR(40) NOT NULL,
    product_price FLOAT,
    quantity INTEGER 
);

-- Add 5 orders to the orders table.  
-- A. Make orders for at least two different people.
-- B. person_id should be different for different people.

INSERT INTO orders (product_name, product_price, quantity)
VALUES ('Steak',7.99,1),
 ('Chicken Nuggets',3.99,10),
 ('Mashed Potatoes',4.99,1),
 ('Turkey Sandwhich',6.99,1),
 ('Fries',2.99,1);



-- Select all the records from the orders table.
SELECT * FROM orders

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * qunatity) FROM orders WHERE person_id = 1;