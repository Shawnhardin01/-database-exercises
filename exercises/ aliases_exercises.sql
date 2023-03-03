SELECT CONCAT( first_name,', ',last_name) as full_name
FROM employees LIMIT 10;

SELECT CONCAT(birth_date) as DOB
FROM employees;

SELECT CONCAT( first_name,', ',last_name,' -> ',birth_date) as full_name ,birth_date as DOB
FROM employees LIMIT 10;
