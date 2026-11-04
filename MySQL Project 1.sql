CREATE DATABASE employee;

USE employee_db;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location VARCHAR(30)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;
DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;
INSERT INTO Departments
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO Location (location)
VALUES
('Chennai'),
('Madurai'),
('Coimbatore');

INSERT INTO Employees
(employee_id, employee_name, gender, age,
 designation, department_id, location_id, salary)
VALUES
(101, 'Arun', 'M', 25, 'Manager', 1, 1, 35000.00),
(102, 'Vinoth', 'F', 28, 'Developer', 2, 2, 45000.00),
(103, 'Daniel', 'M', 30, 'Accountant', 3, 3, 30000.00);

SELECT * FROM Departments;

SELECT * FROM Location;

SELECT * FROM Employees;