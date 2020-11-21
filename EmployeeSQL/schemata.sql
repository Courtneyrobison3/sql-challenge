CREATE TABLE title(
	title_id varchar(50) PRIMARY KEY NOT NULL,
	title varchar(50) NOT NULL);
	
CREATE TABLE employees(
	emp_no int PRIMARY KEY NOT NULL,
	emp_title_id varchar(50) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	sex varchar(6) NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id));
	
CREATE TABLE departments(
	dept_no varchar(50) PRIMARY KEY NOT NULL,
	dept_name varchar(50) NOT NULL);
	
CREATE TABLE manager(
	dept_no varchar(50) NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEy (emp_no, dept_no)); 


CREATE TABLE dept_emp(
	dept_no varchar(50) NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no)
);

CREATE TABLE salary(
	emp_no int PRIMARY KEY NOT NULL,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
	
	
	

