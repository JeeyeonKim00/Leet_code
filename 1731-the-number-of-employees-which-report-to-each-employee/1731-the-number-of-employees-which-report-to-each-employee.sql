# Write your MySQL query statement below
SELECT M.employee_id ,M.name ,Count(E.employee_id) as reports_count, ROUND(AVG(E.age),0) as average_age
FROM Employees M
JOIN Employees E ON M.employee_id = E.reports_to
GROUP BY M.employee_id
ORDER BY M.employee_id