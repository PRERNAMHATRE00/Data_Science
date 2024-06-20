-- Create a new database SQL_DAY1_1 if it doesn't exist
CREATE DATABASE IF NOT EXISTS SQL_DAY1_1;

-- Switch to the newly created database
USE SQL_DAY1_1;

-- Show tables in the current database (should be empty initially)
SHOW TABLES;

-- Switch back to the original database v_dbVCET
USE v_dbVCET;

-- Create table Employee_vcet if it doesn't exist
CREATE TABLE IF NOT EXISTS Employee_vcet (
  emp_id varchar(20),
  emp_name varchar(20),
  emp_age int,
  emp_mobno bigint,
  emp_address varchar(20)
);

-- Insert data into Employee_vcet table
INSERT INTO Employee_vcet VALUES ('VT1', 'xyz', 25, 2415445544, 'Address1');
INSERT INTO Employee_vcet VALUES ('VT2', 'pqr', 27, 2952658545, 'Address2');

-- Perform a select query to retrieve data from Employee_vcet table
SELECT * FROM Employee_vcet;

-- Create a temporary table #EMPData if it doesn't exist
CREATE TEMPORARY TABLE IF NOT EXISTS #EMPData (
  id int,
  name varchar(20)
);

-- Insert data into temporary table #EMPData
INSERT INTO #EMPData VALUES (1, 'asd'), (2, 'fgh');

-- Check if the database SQL_DAY1_1 exists again
SHOW DATABASES;

-- Switch back to SQL_DAY1_1 database
USE SQL_DAY1_1;

-- Alter table Employee_vcet to add another column if it doesn't exist
ALTER TABLE IF EXISTS v_dbVCET.Employee_vcet ADD COLUMN IF NOT EXISTS emp_salary decimal(10, 2);

-- Show the structure of the Employee_vcet table
DESCRIBE v_dbVCET.Employee_vcet;

-- Truncate the Employee_vcet table (delete all rows)
TRUNCATE TABLE v_dbVCET.Employee_vcet;

-- Show the Employee_vcet table to confirm it's empty
SELECT * FROM v_dbVCET.Employee_vcet;

-- Rename the Employee_vcet table to Employees if it doesn't exist
RENAME TABLE IF EXISTS v_dbVCET.Employee_vcet TO Employees;

-- Drop the #EMPData temporary table if it exists
DROP TEMPORARY TABLE IF EXISTS #EMPData;

-- Show all tables in the current database v_dbVCET (should be empty)
SHOW TABLES;
