-- Create the database
CREATE DATABASE IF NOT EXISTS sql1_3;
USE sql1_3;

-- Create the emp table
CREATE TABLE IF NOT EXISTS emp (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

-- Insert sample data into emp table
INSERT INTO emp (Name, Salary) VALUES
('John Doe', 50000),
('Jane Smith', 60000),
('Michael Johnson', 75000),
('Emily Davis', 45000);

-- Display the entire emp table
SELECT * FROM emp;

-- Perform aggregate functions one by one

-- 1. COUNT()
SELECT COUNT(*) AS TotalEmployees
FROM emp;
SELECT * FROM emp;
-- 2. SUM()
SELECT SUM(Salary) AS TotalSalary
FROM emp;
SELECT * FROM emp;
-- 3. AVG()
SELECT AVG(Salary) AS AverageSalary
FROM emp;
SELECT * FROM emp;
-- 4. MIN()
SELECT MIN(Salary) AS MinimumSalary
FROM emp;
SELECT * FROM emp;
-- 5. MAX()
SELECT MAX(Salary) AS MaximumSalary
FROM emp;
SELECT * FROM emp;