SELECT job_id,
       SUM(salary) AS total_salary,
       MAX(salary) AS maximum_salary,
       MIN(salary) AS minimum_salary,
       AVG(salary) AS average_salary
FROM employees
WHERE department_id = 90
GROUP BY job_id;
