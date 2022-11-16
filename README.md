# sql-challenge

This repository was made to analize the information of Pewlett Hackard employee's from 1980s and 1990s.

The DB was holds the information from the last 6 CSV files found that gather all the information.

PostreSQL was used to create the database. 

The Database ERD was made using Quick Database Connect:

You can find the model here: //Employee_SQL/QuickDBD_EmployeeDB_ERD.png

The Schema to create the tables was exported from Quick Database Connect:

You can find the schema here: //Employee_SQL/Schema.sql

The following analysis was ran in PostgreSQL: 

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

You can find the Queries list here: //Employee_SQL/Queries.sql

(To run these queries you will need to create the tables in your LocalHost DB.
Modify the Config file and add you LocalHost Username and Password. The port can be changed if needed, default is 5432)

You can find the config file here: //Employee_SQL/config.py


The data seemed a little odd so a visualization was made using Jupyter Notebook.

You would find the notebook here: //Employee_SQL/sql-challenge.ipynb

You cann see the most common salary ranges here: //Employee_SQL/Salary_ranges.png

You can see the average salary by title here: //Employee_SQL/Salary_by_title.png


