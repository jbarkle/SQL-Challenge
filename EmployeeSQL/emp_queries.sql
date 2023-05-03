-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT em.emp_no, em.last_name, em.first_name, em.sex, sa.salary
FROM employee em
INNER JOIN salary sa
ON em.emp_no = sa.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date
BETWEEN '1986-01-01' and '1986-01-31';

