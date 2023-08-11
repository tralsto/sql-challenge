CREATE TABLE Departments(
dept_no VARCHAR(4) NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT * FROM Departments;

CREATE TABLE Titles (
title_id VARCHAR(5) NOT NULL,
title VARCHAR NOT NULL,
PRIMARY KEY (title_id)
);

SELECT * FROM Titles;

CREATE TABLE Employees(
emp_no INTEGER NOT NULL,
emp_title_id VARCHAR(5) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY(emp_title_id) REFERENCES Titles(title_id)
);

SELECT * FROM Employees;

CREATE TABLE Department_Employee(
emp_no INTEGER NOT NULL,
dept_no VARCHAR(4) NOT NULL,
FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Department_Employee;

CREATE TABLE Department_Manager(
dept_no VARCHAR(4) NOT NULL,
emp_no INTEGER NOT NULL,
FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Department_Manager;

CREATE TABLE Salaries(
emp_no INTEGER NOT NULL,
salary INTEGER NOT NULL,
FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries;
