# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(experience_years),2) average_years
FROM Project P
LEFT JOIN Employee E USING (employee_id)
GROUP BY project_id
