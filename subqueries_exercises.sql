USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees e
WHERE e.hire_date IN (
    SELECT e.hire_date
    FROM employees e
    WHERE e.emp_no = 101010
    );

# Find all the titles held by all employees with the first name Aamod.
SELECT t.title, COUNT(t.title)
FROM titles t
JOIN employees e on t.emp_no = e.emp_no
WHERE t.emp_no IN (
    SELECT e.emp_no
    WHERE e.first_name = 'Aamod'
    )
GROUP BY t.title;