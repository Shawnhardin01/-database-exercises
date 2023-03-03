use ymir_employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name
# FROM employees as e
#          JOIN dept_manager as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no;
#
#
# SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name,r.gender
# FROM employees as e
#          JOIN dept_manager as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
#          join employees as r
#               on r.gender = 'F';


select  r.title, COUNT(u.emp_no)
from employees as u
 inner join titles r on u.emp_no = r.title
group by r.title;

select d.dept_name as 'Department name'
,concat(e.first_name,' ',e.last_name) as 'Department Manager'
from departments d
inner join dept_manager de on d.dept_no = de.dept_no
inner join employees e on de.emp_no = e.emp_no
where de.to_date = '9999-01-01'
and e.gender = 'F';

select t.title,count(e.emp_no)
from titles as t
inner join employees e on t.emp_no = e.emp_no
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where t.to_date ='9999-01-01'
and de.to_date ='9999-01-01'
and d.dept_name = 'Customer Service'
group by t.title
order by count(e.emp_no) desc;

select d.dept_name as `Department Name `, concat(e.first_name,' ',e.last_name) as 'Department Manager'
, s.salary as `Salary`
from salaries s
inner join  employees e on s.emp_no = e.emp_no
inner join dept_manager de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where s.to_date ='9999-01-01'
and de.to_date ='9999-01-01';


