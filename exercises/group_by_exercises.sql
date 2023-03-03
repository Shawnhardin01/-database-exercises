SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  and last_name LIKE '%e'
GROUP BY last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
  and last_name LIKE '%e'
GROUP BY last_name,first_name;

SELECT  last_name , COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
  and last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(gender)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
group by gender;
