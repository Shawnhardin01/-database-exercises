use ymir_employees;
SELECT emp_no, first_name,last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC , first_name DESC ;

SELECT emp_no, first_name,last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name , first_name ;


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
   or last_name LIKE '%e'
ORDER BY emp_no ASC ;

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE 'e%'
  and last_name LIKE '%e'
ORDER BY emp_no DESC ;


SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE '%q%'
  and last_name NOT LIKE '%qu%';

