# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_emp as de
              ON e.emp_no = de.emp_no
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY d.dept_name ASC;

# Find the name of all departments currently managed by women.
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
         JOIN dept_emp as de
              ON e.emp_no = de.emp_no
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F' ORDER BY d.dept_name ASC;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Title', d.dept_name as 'Department', COUNT(*)
FROM employees e
         JOIN titles t on e.emp_no = t.emp_no
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
         JOIN dept_manager dm on d.dept_no = dm.dept_no
WHERE d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01' AND dm.to_date = '9999-01-01' AND de.to_date = '9999-01-01' GROUP BY t.title;
