-- Drops the employee_db if it already exists --
DROP DATABASE IF EXISTS employee_db;

-- Create the database employee_db and specified it for use.
CREATE DATABASE employee_db;

USE employee_db; 

-- Create the table plans.
CREATE TABLE employee (
  id INT auto_increment PRIMARY KEY NOT NULL,
  first_name - VARCHAR(30),
  last_name - VARCHAR(30),
  role_id - INT,
  manager_id - INT NULL
);
CREATE TABLE department (
  id INT auto_increment PRIMARY KEY NOT NULL,
  department_name VARCHAR(30) NOT NULL
);
CREATE TABLE role (
  id INT auto_increment PRIMARY KEY NOT NULL,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL (9,2) NOT NULL,
  department_id -  INT NOT NULL
);

-- Insert a set of records.
INSERT INTO employees (employee) VALUES ('Employee Tracker');