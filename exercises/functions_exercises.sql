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
-- ------------------------------------- --
SELECT CONCAT( first_name,'',last_name) as full_name
FROM employees
WHERE last_name LIKE 'e%'
  and last_name LIKE '%e'
    and first_name LIKE '%e'
    and first_name LIKE 'e%';
SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1990 AND 2000
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;


SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date,hire_date desc;

select datediff(now() ,hire_date) as num_hired_days
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date,hire_date desc;














