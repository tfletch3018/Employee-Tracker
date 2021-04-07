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