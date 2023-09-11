-- create a table for titles
Create table titles(
emp_title VARCHAR(8)Primary key NOT NULL,
title VARCHAR(30)
);

-- create a table for employees
Create Table employees(
	emp_no int primary key NOT NULL,
	emp_title VARCHAR(25) NOT NULL,
	birth_date date Not NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex varchar(1) NOT NULL, 
	hire_date date NOT NULL,
FOREIGN KEY (emp_title) REFERENCES titles(emp_title)

);

-- create a table for departments
CREATE TABLE departments (
  dept_no varchar(8) Primary KEY NOT NULL,
 dept_name VARCHAR(30) NOT NULL
);

-- create a table for dept_manager
Create table dept_manager (
	dept_no VARCHAR(8) Not null,
	emp_no int  NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 primary key( emp_no,dept_no) 
);
-- create a table for dept_emp
Create table dept_emp (
	emp_no int  NOT NULL,
	dept_no VARCHAR(8) not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	primary key( emp_no,dept_no) 	
);

-- create a table for salaries
Create table salaries (
	emp_no int Not null,
	salary int NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

