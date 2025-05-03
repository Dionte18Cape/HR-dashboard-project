-- Total Employees by Department
SELECT d.department_name, COUNT(*) AS total_employees
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_employees DESC;



-- Average Salary by Department
SELECT d.department_name, ROUND(AVG(e.salary), 2) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_salary DESC;




--Employee Distribution by Country**
SELECT c.country_name, COUNT(*) AS num_employees
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
GROUP BY c.country_name
ORDER BY num_employees DESC;




--New Hires Over Time**
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year,
       COUNT(*) AS hires
FROM employees
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY hire_year;






--Projected Salary Cost Over Time (Static Projection Example)**
SELECT proj.year, 
       ROUND(SUM(e.salary * POWER(1.05, proj.year - 2025)), 2) AS projected_cost
FROM employees e,
     (SELECT 2025 AS year FROM dual
      UNION ALL SELECT 2026 FROM dual
      UNION ALL SELECT 2027 FROM dual
      UNION ALL SELECT 2028 FROM dual) proj
GROUP BY proj.year
ORDER BY proj.year;


