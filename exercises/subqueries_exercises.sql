use ymir_employees;


select first_name
from employees
where hire_date = '1990-10-22';

select *
from employees
where hire_date in (select e2.hire_date
                    from employees e2 where e2.emp_no = '101010');



select *
from employees
inner join titles t on employees.emp_no = t.emp_no
where first_name = 'Aamod';



select e.first_name,e.last_name
from departments d
         inner join dept_manager de on d.dept_no = de.dept_no
         inner join employees e on de.emp_no = e.emp_no
  where e.gender = 'F'
and de.to_date = '9999-01-01';

select e.first_name,e.last_name
from employees e
where e.emp_no = (
    select s.emp_no
    from salaries s
    order by s.salary desc
    limit 1
    );


select d.dept_name as 'Department name'

from departments d
         inner join dept_manager de on d.dept_no = de.dept_no
         inner join employees e on de.emp_no = e.emp_no
where e.gender = 'F'
  and de.to_date = '9999-01-01';