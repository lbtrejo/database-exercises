USE employees;

# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
SELECT DISTINCT title FROM titles;

# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
SELECT DISTINCT employees.last_name from employees.employees where last_name LIKE 'E%' AND last_name LIKE '%e' GROUP BY employees.last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT DISTINCT employees.first_name, employees.last_name from employees.employees where last_name LIKE 'E%' AND last_name LIKE '%e';

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT employees.last_name from employees.employees where last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY employees.last_name;

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT employees.last_name, COUNT(employees.last_name) AS 'Count' from employees.employees where last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY employees.last_name ORDER BY Count DESC;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
SELECT COUNT(*), gender from employees.employees where first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;