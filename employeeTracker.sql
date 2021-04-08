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
VALUES ("010", "James", "Brown", 01, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("110", "Lisa", "Simpson", 11, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("120", "Whitney", "Houston", 21, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("130", "Benjamin", "Button", 31, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("140", "Claire", "Huxtable", 41, 1);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("150", "Elton", "John", 51, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("160", "Janet", "Jackson", 61, 444);
INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES ("170", "Brenda", "Walsh", 71, 444);


INSERT INTO role (id, title, salary, department_id)
VALUES ("01", "Sales Manager", 150000, 300);
INSERT INTO role (id, title, salary, department_id)
VALUES ("02", "Sales Assistant", 40000, 300);
INSERT INTO role (id, title, salary, department_id)
VALUES ("03", "Sales Engineer", 65000, 300);

INSERT INTO role (id, title, salary, department_id)
VALUES ("11", "Marketing Manager", 150000, 301);
INSERT INTO role (id, title, salary, department_id)
VALUES ("12", "Marketing Coordinator", 40000, 301);
INSERT INTO role (id, title, salary, department_id)
VALUES ("13", "Marketing Analyst", 55000, 301);


INSERT INTO role (id, title, salary, department_id)
VALUES ("21", "Finance Manager", 150000, 302);
INSERT INTO role (id, title, salary, department_id)
VALUES ("22", "Junior Accountant", 52000, 302);
INSERT INTO role (id, title, salary, department_id)
VALUES ("23", "Senior Accountant", 70000, 302);

INSERT INTO role (id, title, salary, department_id)
VALUES ("31", "HR Manager", 150000, 303);
INSERT INTO role (id, title, salary, department_id)
VALUES ("32", "HR Coordinator", 50000, 303);
INSERT INTO role (id, title, salary, department_id)
VALUES ("33", "Recruiter", 40000, 303);


INSERT INTO role (id, title, salary, department_id)
VALUES ("41", "Director", 220000, 304);


INSERT INTO role (id, title, salary, department_id)
VALUES ("51", "R&D Manager", 150000, 305);
INSERT INTO role (id, title, salary, department_id)
VALUES ("52", "R&D Associate", 50000, 305);
INSERT INTO role (id, title, salary, department_id)
VALUES ("53", "R&D Engineer", 120000, 305);


INSERT INTO role (id, title, salary, department_id)
VALUES ("61", "Purchases Manager", 150000, 306);
INSERT INTO role (id, title, salary, department_id)
VALUES ("62", "Buyer", 55000, 306);
INSERT INTO role (id, title, salary, department_id)
VALUES ("63", "Procurement Officer", 60000, 306);


INSERT INTO role (id, title, salary, department_id)
VALUES ("71", "Operations Manager", 150000, 307);
INSERT INTO role (id, title, salary, department_id)
VALUES ("72", "Operations Management Trainee", 50000, 307);
INSERT INTO role (id, title, salary, department_id)
VALUES ("73", "Operations Coordinator", 72000, 307);
INSERT INTO role (id, title, salary, department_id)
VALUES ("74", "Project Manager", 68000, 307);


INSERT INTO department (id, name)
VALUES ("300", "Sales");
INSERT INTO department (id, name)
VALUES ("301", "Marketing");
INSERT INTO department (id, name)
VALUES ("302", "Finance/ Accounting");
INSERT INTO department (id, name)
VALUES ("303", "Human Resources");
INSERT INTO department (id, name)
VALUES ("304", "General Management");
INSERT INTO department (id, name)
VALUES ("305", "Research & Development");
INSERT INTO department (id, name)
VALUES ("306", "Purchases");
INSERT INTO department (id, name)
VALUES ("307", "Operations");



SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee_trackerdb.role;

-- show ALL books with authors--
-- INNER JOIN will only return all matching values from both tables--
-- SELECT title, firstName, lastName--
