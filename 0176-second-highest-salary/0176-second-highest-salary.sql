# Write your MySQL query statement below
SELECT CASE WHEN min(salary) = max(salary) THEN null
            ELSE MIN(salary) 
        END AS SecondHighestSalary 
FROM 
    (SELECT DISTINCT(salary)
    FROM Employee 
    ORDER BY salary DESC
    LIMIT 2) A
