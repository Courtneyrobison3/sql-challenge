--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sa.salary
FROM employees as emp
LEFT JOIN salary as sa
ON (emp.emp_no = sa.emp_no);

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees as emp
WHERE hire_date > '1986-01-01' and hire_date < '1987-01-01';

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name
SELECT man.dept_no, d.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM employees as emp
LEFT JOIN manager as man
ON (emp.emp_no = man.emp_no)
RIGHT JOIN departments as d
ON (man.dept_no = d.dept_no);

--List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM employees as emp
LEFT JOIN dept_emp 
ON (emp.emp_no = dept_emp.emp_no)
RIGHT JOIN departments as d
ON (dept_emp.dept_no = d.dept_no);

--List first name, last name, and sex for employees whose first name is "Hercules" and 
--last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE '%B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
	FROM employees as emp
		LEFT JOIN dept_emp 
			ON emp.emp_no = dept_emp.emp_no
		LEFT JOIN departments as d
			ON dept_emp.dept_no = d.dept_no
			
--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.			
WITH emp_cte as (
	SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
	FROM employees as emp
		LEFT JOIN dept_emp 
			ON emp.emp_no = dept_emp.emp_no
		LEFT JOIN departments as d
			ON dept_emp.dept_no = d.dept_no
)
SELECT * 
FROM emp_cte
WHERE dept_name = 'Development' OR dept_name = 'Sales'

--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

SELECT last_name, COUNT(last_name) as Count
FROM employees
GROUP BY Last_name
ORDER BY Count DESC;
































