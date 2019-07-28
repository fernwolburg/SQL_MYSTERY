-- #1 Create table "employees"
CREATE  TABLE employees(
	emp_no		VARCHAR(50)	PRIMARY KEY NOT NULL,
	birth_date	VARCHAR(50),
	firs_name	VARCHAR(50),
	last_name	VARCHAR(50),
	gender		VARCHAR(50),
	hire_date	VARCHAR(50)
);

-- #2 Create table "department"
CREATE  TABLE department(
	dept_no		VARCHAR(50)	PRIMARY KEY NOT NULL,
	dept_name	VARCHAR(50)
);

-- #3 Create table "dept_emp" and add the foreign keys from the previous tables
CREATE  TABLE dept_emp(
	dept_no		VARCHAR(50)	FOREIGN KEY REFERENCES department(dept_no),
	emp_no		VARCHAR(50)	FOREIGN KEY REFERENCES employees(emp_no),
	from_date	VARCHAR(50),
	to_date		VARCHAR(50)
);

-- #4 Create table "dept_manager" and add the foreign keys from the previous tables
CREATE  TABLE dept_manager(
	dept_no		VARCHAR(50)	FOREIGN KEY REFERENCES department(dept_no),
	emp_no		VARCHAR(50)	FOREIGN KEY REFERENCES employees(emp_no),
	from_date	VARCHAR(50),
	to_date		VARCHAR(50)
);

-- #5 Create table "salaries" and add the foreign keys from the previous tables
CREATE  TABLE salaries(
	emp_no		VARCHAR(50)	FOREIGN KEY REFERENCES employees(emp_no),
	salary		VARCHAR(50),
	from_date	VARCHAR(50),
	to_date		VARCHAR(50)
);

-- #6 Create table "titles" and add the foreign keys from the previous tables
CREATE  TABLE titles(
	emp_no		VARCHAR(50)	FOREIGN KEY REFERENCES employees(emp_no),
	title		VARCHAR(50),
	from_date	VARCHAR(50),
	to_date		VARCHAR(50)
);