USE employees;

# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Simmen.
SELECT * from employees.employees where first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * from employees.employees where first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name ASC;

# Change the order by clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * from employees.employees where first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name ASC;

# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT * from employees.employees where last_name LIKE 'E%' ORDER BY emp_no ASC;

# Now reverse the sort order for both queries.
SELECT * from employees.employees where first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name DESC;
SELECT * from employees.employees where last_name LIKE 'E%' ORDER BY emp_no DESC;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * from employees.employees where hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25' ORDER BY hire_date DESC, birth_date ASC;