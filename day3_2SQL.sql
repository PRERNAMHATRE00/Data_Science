-- Create the customer table
CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address_id INT
);

-- Create the payment table with foreign key constraint
CREATE TABLE IF NOT EXISTS payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    amount INT,
    mode VARCHAR(20),
    date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Insert data into customer table (ensure customer_id values are unique)
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES
(1, 'MARY', 'JONAS', 5),
(3, 'LINDA', 'SMITH', 7),
(4, 'MADAN', 'MOHAN', 8),
(2, 'BARY', 'WILLIAMS', 6)
ON DUPLICATE KEY UPDATE
    first_name = VALUES(first_name),
    last_name = VALUES(last_name),
    address_id = VALUES(address_id);

-- Insert data into payment table (correcting customer_id references to avoid foreign key constraint errors)
INSERT INTO payment (amount, mode, date, customer_id) VALUES
(60, 'CASH', '2024-04-03', 1),
(30, 'CREDIT CARD', '2024-04-03', 2);

-- Perform various types of joins between customer and payment tables

-- 1. Inner Join
SELECT *
FROM customer AS c
INNER JOIN payment AS p ON c.customer_id = p.customer_id;

-- 2. Left Join
SELECT *
FROM customer AS c
LEFT JOIN payment AS p ON c.customer_id = p.customer_id;

-- 3. Right Join
SELECT *
FROM customer AS c
RIGHT JOIN payment AS p ON c.customer_id = p.customer_id;

-- 4. Full Outer Join (using UNION to combine results from Left and Right Join)
SELECT *
FROM customer AS c
LEFT JOIN payment AS p ON c.customer_id = p.customer_id
UNION
SELECT *
FROM customer AS c
RIGHT JOIN payment AS p ON c.customer_id = p.customer_id;
