COPY employees(emp_no,birth_date,first_name,last_name,gender,hire_date) 
FROM '/home/galinux/sql/sqlhw/data/employees.csv' DELIMITER ',' CSV HEADER

COPY departments(dept_no,dept_name)
FROM '/home/galinux/sql/sqlhw/data/departments.csv' DELIMITER ',' CSV HEADER

COPY dept_manager(dept_no,emp_no,from_date,to_date)
FROM '/home/galinux/sql/sqlhw/data/dept_manager.csv' DELIMITER ',' CSV HEADER

COPY dept_emp(emp_no,dept_no,from_date,to_date)
FROM '/home/galinux/sql/sqlhw/data/dept_emp.csv' DELIMITER ',' CSV HEADER

COPY titles(emp_no,title,from_date,to_date)
FROM '/home/galinux/sql/sqlhw/data/titles.csv' DELIMITER ',' CSV HEADER

COPY salaries(emp_no,salary,from_date,to_date)
FROM '/home/galinux/sql/sqlhw/data/salaries.csv' DELIMITER ',' CSV HEADER;
