
--1
SELECT emp.emp_no,emp.last_name,emp.first_name,emp.gender 
FROM employees as emp
LEFT JOIN salaries as sal
ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

--2
SELECT emp.first_name,emp.last_name,
FROM employees as emp
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3
SELECT dm.dept_no, dept.dept_name, dm.emp_no, emp.last_name, emp.first_name, dm.from_date, dm.to_date
FROM dept_manager AS dm
INNER JOIN departments as dept
ON (dm.dept_no = dept.dept_no)
INNER JOIN employees as emp
ON (dm.emp_no = emp.emp_no);

--4
SELECT emp.emp_no, emp.last_name, emp.first_name, d.dept_name
FROM employees AS emp
INNER JOIN dept_emp as de
ON (emp.emp_no = de.emp_no)
INNER JOIN departments as d
ON (d.dept_no = de.dept_no);

--5
SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6
SELECT emp.emp_no,emp.last_name,emp.first_name,d.dept_name
FROM employees AS emp
INNER JOIN dept_emp as de
ON (emp.emp_no = de.emp_no)
INNER JOIN departments as d
ON (d.dept_no = de.dept_no)
WHERE d.dept_name='Sales'
ORDER BY emp.emp_no;

--7
SELECT emp.emp_no,emp.last_name,emp.first_name,d.dept_name
FROM employees AS emp
INNER JOIN dept_emp as de
ON (emp.emp_no = de.emp_no)
INNER JOIN departments as d
ON (d.dept_no = de.dept_no)
WHERE d.dept_name='Sales'
OR d.dept_name='Development'
ORDER BY emp.emp_no;

--8
SELECT last_name, COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;



