---1. List employee number, last name, first name, sex, salary:
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees 
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

---2. List first name, last name, hire date for employees hired in 1986:
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

---3. List manager of each department with: department number, department name, manager's employee number, last name, first name:
SELECT dept_manager.dept_no, 
	dept_manager.emp_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name
FROM dept_manager
	INNER JOIN departments ON
	dept_manager.dept_no = departments.dept_no
	INNER JOIN employees
	ON dept_manager.emp_no = employees.emp_no;
	
---4. List department of each employee with employee number, last name, first name, department name:
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
From employees AS e
	LEFT JOIN dept_emp ON
	e.emp_no = dept_emp.emp_no
	INNER JOIN departments AS d ON
	dept_emp.dept_no = d.dept_no;
	
---5. List first name, last name, sex for employees with first name "Hercules" last name begins with "B":
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

---6. List all employees in Sales department with employee number, last name, first name, department name:
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	LEFT JOIN dept_emp ON
	e.emp_no = dept_emp.emp_no
	INNER JOIN departments AS d ON
	dept_emp.dept_no = d.dept_no
	WHERE dept_name = 'Sales';

---7. List all employees in Sales and Development departments, including their employee number, last name, first name, and department name:
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	LEFT JOIN dept_emp ON
	e.emp_no = dept_emp.emp_no
	INNER JOIN departments AS d ON
	dept_emp.dept_no = d.dept_no
	WHERE dept_name = 'Development'
	OR dept_name = 'Sales';

---8. List frequency count of employees last names in descending order:
SELECT last_name, COUNT(last_name) "employee last name"
FROM employees
GROUP BY last_name
ORDER BY "employee last name" DESC;

---Find information for ID #499942:	
SELECT * FROM employees
	WHERE emp_no = 499942;