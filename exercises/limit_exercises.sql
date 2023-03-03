SELECT DISTINCT title FROM titles;
SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'z%'
ORDER BY last_name desc
LIMIT 10;

SELECT emp_no,salary
FROM salaries
ORDER BY salary desc
LIMIT 5;

SELECT emp_no
FROM salaries
ORDER BY salary desc
LIMIT 5 offset 45;




