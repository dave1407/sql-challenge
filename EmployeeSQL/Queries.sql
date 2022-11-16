-- 1. List the following details of each employee:
-- employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no
ORDER BY last_name;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE extract (year from hire_date) = 1986
ORDER BY last_name;

-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_manager ON
dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
ORDER BY dept_name;

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
ORDER BY last_name;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules"
-- and last names begin with "B."

SELECT  employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' and starts_with(last_name,'B')
ORDER BY last_name;

-- 6. List all employees in the Sales department,
-- including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name = 'Sales'
ORDER BY last_name;

-- 7. List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY last_name;

-- 8. List the frequency count of employee last names
-- (i.e., how many employees share each last name) in descending order.

SELECT employees.last_name, COUNT(employees.last_name) as frequency_count
FROM employees
GROUP BY employees.last_name
ORDER BY frequency_count DESC;

