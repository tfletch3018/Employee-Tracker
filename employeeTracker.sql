DROP DATABASE IF EXISTS employee_trackerDB;
CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

CREATE TABLE department(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NULL, 
    PRIMARY KEY (id)
);
CREATE TABLE role(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(30) NULL,
salary DECIMAL(18, 2),
department_id INTEGER(10),
PRIMARY KEY (id)
);

CREATE TABLE employee(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30) NULL,
last_name VARCHAR(30) NULL,
role_id INTEGER(10),
manager_id INTEGER(10),
PRIMARY KEY (id)
);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("11", "Brenda", "Walsh", 21, 1);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("12", "Whitney", "Houston", 21, 1);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("13", "Benjamin", "Button", 35, 2);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("14", "Claire", "Huxtable", 35, 2);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("15", "James", "Brown", 35, 2);

INSERT INTO role (id, title, salary, department_id)
VALUES ("44", "Manager", 80000, 300);
INSERT INTO role (id, title, salary, department_id)
VALUES ("55", "Junior Executive", 45000, 301);
INSERT INTO role (id, title, salary, department_id)
VALUES ("77", "Accountant", 85000, 302);
INSERT INTO role (id, title, salary, department_id)
VALUES ("88", "Staffing Coordinator", 32000, 303);

INSERT INTO department (id, name)
VALUES ("300", "Sales");
INSERT INTO department (id, name)
VALUES ("301", "Marketing");
INSERT INTO department (id, name)
VALUES ("302", "Accounting");
INSERT INTO department (id, name)
VALUES ("303", "Human Resources");

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee_trackerdb.role;

-- show ALL books with authors--
-- INNER JOIN will only return all matching values from both tables--
-- SELECT title, firstName, lastName--
