-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT em.emp_no, em.last_name, em.first_name, em.sex, sa.salary
FROM employee em
INNER JOIN salary sa
ON em.emp_no = sa.emp_no;

