-- Activity 2: SQL Aggregation Parallel
-- Queries to Write (6 points each)
-- 1. Headcount per department, sorted from largest to smallest.
SELECT department, COUNT(employee_id) number_employee
FROM employees
GROUP BY department
ORDER BY number_employee DESC

/* IT      | 13
Sales   | 12
Finance | 10 */


-- 2. Total salary per city, sorted descending.
SELECT city, SUM(salary) total_salary
FROM employees
GROUP BY city
ORDER by total_salary DESC
/* 
Manila          | 1175790
Cebu City       | 577870
Davao City      | 360600 */

-- 3. Average salary per position, rounded to 0 decimals, sorted descending.
SELECT position, ROUND(AVG(salary), 0)
FROM employees
GROUP BY position
ORDER BY salary DESC

/* IT Manager | 85000
HR Manager | 82000
Finance    | 78800 */

-- 4. Headcount per (department, city) combination.
SELECT Department, city, COUNT(employee_id) headcount
FROM employees
GROUP BY department, city
ORDER BY department, city

/* Finance | Cebu City  | 4
Finance     | Davao City | 1
Finance     | Manila     | 5
 */
-- 5. Headcount per hire year. Hint: use `substr(hire_date, 1, 4) AS hire_year`.
SELECT substr(hire_date, 1, 4) hire_year, COUNT(employee_id) Headcount
FROM employees
GROUP BY hire_year
ORDER BY hire_year DESC;

/* Result
2024 | 11
2023 | 10
2022 | 9  */