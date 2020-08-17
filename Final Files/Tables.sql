Create Table Titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(20) NOT NULL,
	Primary Key (title_id)
);

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title VARCHAR(5)   NOT NULL,
    birth_date VARCHAR(8)   NOT NULL,
    first_name VARCHAR(20)   NOT NULL,
    last_name VARCHAR(20)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date DATE   NOT NULL,
    Primary Key (emp_no),
	Foreign Key (emp_title) References Titles(title_id)
);

CREATE TABLE Departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_Manager (
	dept_no VARCHAR(4)  NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN Key (dept_no) REFERENCES Departments(dept_no),
	FOREIGN Key (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4)   NOT NULL,
	FOREIGN Key (dept_no) REFERENCES Departments(dept_no), 
    FOREIGN Key (emp_no) REFERENCES Employees(emp_no) 
);

CREATE TABLE Salaries (
    emp_no INT  NOT NULL,
    salary INT  NOT NULL,
    Foreign Key (emp_no) References Employees(emp_no)
);





