--List the employee number, last name, first name, sex, and salary of each employee
Select e.emp_no,e.last_name,e.first_name, e.sex, s.salary, s.emp_no
From employees AS e
join salaries as s
on s.emp_no = e.emp_no
;
--List the first name, last name, and hire date for the employees who were hired in 1986
Select first_name,last_name,hire_date
From employees
where extract (year from hire_date) = 1986
;
--List the manager of each department along with their department number, department name, employee number, last name, and first name 
select dept_manager.dept_no, dept_manager.emp_no,departments.dept_name, employees.emp_no,employees.last_name,employees.first_name
from dept_manager
inner join departments
on dept_manager.dept_no = departments.dept_no
inner join employees
on dept_manager.emp_no = employees.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select e.emp_no,e.last_name,e.first_name, dp.dept_name
From employees AS e
left join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as dp
on de.dept_no =dp.dept_no;
--List each employee in the Sales department, including their employee number, last name, and first name
Select e.emp_no, e.last_name, e.first_name, dp.dept_name
From employees AS e
left join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as dp
on de.dept_no =dp.dept_no
where lower(dp.dept_name) = 'sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
Select e.emp_no, e.last_name, e.first_name, dp.dept_name
From employees AS e
left join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as dp
on de.dept_no =dp.dept_no
where lower(dp.dept_name) = 'sales' or lower(dp.dept_name) = 'Development'
;
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select e.last_name,
count(e.last_name) as Frequency 
from employees as e
group by last_name
order by frequency desc;