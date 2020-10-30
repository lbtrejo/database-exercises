USE employees;

SELECT CONCAT(e.emp_no, ' - ', e.first_name, ', ', e.last_name) AS 'full_name', e.birth_date AS 'DOB'
FROM employees e
LIMIT 10;