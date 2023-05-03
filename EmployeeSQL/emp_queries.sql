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

-- List the manager of each department along with their department number, department name, employee number, 
-- last name, and first name.

SELECT dep.dept_no, dep.dept_name, ma.emp_no, em.last_name, em.first_name
FROM department dep
INNER JOIN manager ma
ON dep.dept_no = ma.dept_no
INNER JOIN employee em
ON ma.emp_no = em.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, 
-- first name, and department name.

SELECT de.dept_no, de.emp_no, em.last_name, em.first_name, dept.dept_name
FROM dept_employee de
INNER JOIN employee em
ON de.emp_no = em.emp_no
INNER JOIN department dept
ON de.dept_no = dept.dept_no;

