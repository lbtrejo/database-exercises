USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee Name' from employees.employees where last_name LIKE 'E%' AND last_name LIKE '%e';

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee Name', datediff(curdate(), employees.hire_date) AS 'Tenure' from employees.employees where hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25' ORDER BY hire_date DESC, birth_date ASC;