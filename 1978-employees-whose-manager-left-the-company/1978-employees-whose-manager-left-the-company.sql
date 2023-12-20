# salary < 30000
# manager X

SELECT emp.employee_id
FROM Employees emp
LEFT JOIN  Employees M ON emp.manager_id = M.employee_id
WHERE M.employee_id IS NULL
AND emp.manager_id IS NOT NULL
AND emp.salary < 30000
ORDER BY emp.employee_id;