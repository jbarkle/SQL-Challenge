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

SELECT dep.dept_no, dep.dept_name, ma.emp_no, em.last_name, em.first_name, ti.title
FROM department dep
INNER JOIN manager ma
ON dep.dept_no = ma.dept_no
INNER JOIN employee em
ON ma.emp_no = em.emp_no
INNER JOIN title ti
ON em.emp_title_id = ti.title_id;

-- List the department number for each employee along with that employee’s employee number, last name, 
-- first name, and department name.

SELECT de.dept_no, de.emp_no, em.last_name, em.first_name, dept.dept_name
FROM dept_employee de
INNER JOIN employee em
ON de.emp_no = em.emp_no
INNER JOIN department dept
ON de.dept_no = dept.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name 
-- begins with the letter B.

SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.

SELECT de.emp_no, em.last_name, em.first_name, dept.dept_name
FROM dept_employee de
INNER JOIN employee em
ON de.emp_no = em.emp_no
INNER JOIN department dept
ON de.dept_no = dept.dept_no
WHERE dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.

SELECT de.emp_no, em.last_name, em.first_name, dept.dept_name
FROM dept_employee de
INNER JOIN employee em
ON de.emp_no = em.emp_no
INNER JOIN department dept
ON de.dept_no = dept.dept_no
WHERE dept_name IN ('Sales','Development');

-- List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).

SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name
ORDER BY COUNT DESC;