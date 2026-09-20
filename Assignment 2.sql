USE employee;
SHOW TABLES;
DESC departments;
DESC employees;
DESC location;
SELECT employee_name AS Employee_Name,
       designation AS Employee_Designation
FROM employees;
SELECT *
FROM employees
WHERE hire_date < '2016-01-01';
SELECT *
FROM employees
WHERE designation IS NULL;
UPDATE employees
SET designation = 'Data Scientist'
WHERE designation IS NULL;
SELECT *
FROM employees
ORDER BY department_id ASC;
SELECT *
FROM employees
ORDER BY hire_date ASC
LIMIT 5;
SELECT department_id,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY department_id;
SELECT department_id,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY department_id
HAVING COUNT(*) < 3;
SELECT e.employee_name,
       e.designation,
       d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
SELECT d.department_id,
       d.department_name,
       COUNT(e.employee_id) AS Employee_Count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id,
         d.department_name;
         SELECT l.location_id,
       l.location_name,
       e.employee_name
FROM employees e
RIGHT JOIN location l
ON e.location_id = l.location_id;