USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT * from employees.employees where first_name IN ('Irena', 'Vidya', 'Maya');

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT * from employees.employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * from employees.employees where (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * from employees.employees where last_name LIKE 'E%';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * from employees.employees where last_name LIKE 'E%' OR last_name LIKE '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * from employees.employees where last_name LIKE 'E%' AND last_name LIKE '%e';

# Find all employees hired in the 90s — 135,214 rows.
SELECT * from employees.employees where hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# Find all employees born on Christmas — 842 rows.
SELECT * from employees.employees where birth_date LIKE '%12-25';

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * from employees.employees where hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * from employees.employees where last_name LIKE '%q%';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * from employees.employees where last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';