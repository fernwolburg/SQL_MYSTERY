-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary.
SELECT	employees.emp_no,
		employees.last_name,
		employees.first_name,
		employees.gender,
		salaries.salary
FROM    employees JOIN salaries
   		ON employees.emp_no = salaries.emp_no;
		
-- List employees who were hired in 1986
SELECT 	e.emp_no,
		e.hire_date
FROM	employees e
WHERE	e.hire_date LIKE '%86%';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates
SELECT 	d.dept_no,
		d.dept_name,
		e.emp_no,
		e.first_name,
		e.last_name,
		dm.from_date,
		dm.to_date
FROM	departments d
		JOIN dept_emp 
		ON d.dept_no = dept_emp.dept_no
 		JOIN employees e
		ON e.emp_no = dept_emp.emp_no
		JOIN dept_manager dm
		ON e.emp_no = dm.emp_no;
		
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT 	e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM	departments d
		JOIN dept_emp 
		ON d.dept_no = dept_emp.dept_no
 		JOIN employees e
		ON e.emp_no = dept_emp.emp_no
ORDER 	BY e.emp_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT 	e.emp_no,
		e.last_name,
		e.first_name
FROM	employees e
WHERE	e.first_name = 'Hercules' AND
		e.last_name LIKE 'B%';
		
-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
SELECT 	e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM	departments d
		JOIN dept_emp 
		ON d.dept_no = dept_emp.dept_no
 		JOIN employees e
		ON e.emp_no = dept_emp.emp_no
WHERE	d.dept_name = 'Sales'
ORDER	BY e.emp_no;

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT 	e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM	departments d
		JOIN dept_emp 
		ON d.dept_no = dept_emp.dept_no
 		JOIN employees e
		ON e.emp_no = dept_emp.emp_no
WHERE	d.dept_name IN ('Sales', 'Development')
ORDER	BY e.emp_no;

-- In descending order, list the frequency count of 
-- employee last names, i.e., how many employees share each last name
SELECT 	e.last_name,
		COUNT (e.last_name) AS frequency
FROM	employees e
GROUP	BY e.last_name
ORDER	BY frequency DESC;