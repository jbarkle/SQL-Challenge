# SQL-Challenge

### Brief description of the project:

> It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

## Data Modeling

- Used QuickDBD to sketch an Entity Relationship Diagram of the tables in the provided CSV files

## Data Engineering

- Created a table schema for each of the six CSV files, including:

    - specified the data types, primary keys, foreign keys, and other constraints 
    - create composite keys where necessary
    - imported each CSV file into its corresponding SQL table

## Data Analysis

- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for the employees who were hired in 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)