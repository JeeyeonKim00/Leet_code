# Write your MySQL query statement below
SELECT email as Email
FROM (SELECT email, count(*) cnt
        FROM Person
        GROUP BY email) A
WHERE A.cnt >= 2;