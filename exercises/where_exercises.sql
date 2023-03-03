use ymir_employees;
SELECT emp_no, last_name_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE 'e%';

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT emp_no, first_name,gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya')
   and gender = "M"
   OR first_name = 'Maya'
   OR first_name = 'Vidya';

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE 'e%'
or last_name LIKE '%e';

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE 'e%'
   and last_name LIKE '%e';

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE '%q%'
and last_name NOT LIKE '%qu%';





