
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

-- Insert data into Employee_1 table
INSERT INTO Employee_1 (emp_id, emp_name, emp_age, emp_mobno)
VALUES ('VT1', 'xyz', 25, 915445544);

INSERT INTO Employee_1 (emp_id, emp_name, emp_age, emp_mobno)
VALUES ('VT2', 'pqr', 27, 952658545);



-- Select all rows from Employee_1
SELECT * FROM Employee_1;



-- Select with a condition
SELECT * FROM Employee_1 WHERE emp_id = 'VT2';
SELECT * FROM Employee_1;