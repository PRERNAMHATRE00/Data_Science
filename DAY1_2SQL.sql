-- Create a new database SQL_DAY1_2 if it doesn't exist
CREATE DATABASE IF NOT EXISTS SQL_DAY1_2;

-- Switch to the newly created database SQL_DAY1_2
USE SQL_DAY1_2;

-- Create table Employee_1 (if it doesn't exist)
CREATE TABLE IF NOT EXISTS Employee_1 (
  emp_id varchar(20),
  emp_name varchar(20),
  emp_age int,
  emp_mobno bigint -- Use bigint for large numbers
);

-- Assume the database SQL_DAY1_2 exists and is in use

-- Insert data into Employee_1 table
INSERT INTO Employee_1 (emp_id, emp_name, emp_age, emp_mobno)
VALUES ('VT1', 'xyz', 25, 2415445544);

INSERT INTO Employee_1 (emp_id, emp_name, emp_age, emp_mobno)
VALUES ('VT2', 'pqr', 27, 2952658545);

-- Select data from Employee_1 table
SELECT * FROM Employee_1;

-- Use DML commands: INSERT, UPDATE, DELETE

-- 1. INSERT example into Employee_1
INSERT INTO Employee_1 (emp_id, emp_name, emp_age, emp_mobno)
VALUES ('VT3', 'abc', 30, 1234567890);

-- Select data after insertion
SELECT * FROM Employee_1;

-- 2. UPDATE example in Employee_1
UPDATE Employee_1
SET emp_age = 28
WHERE emp_id = 'VT2';

-- Select data after update
SELECT * FROM Employee_1;

-- 3. DELETE example from Employee_1
DELETE FROM Employee_1
WHERE emp_id = 'VT1';

-- Select data after deletion
SELECT * FROM Employee_1;
