# Write your MySQL query statement below
SELECT person_name
FROM
(SELECT turn, person_name, SUM(weight) OVER(ORDER BY turn) tot_we
FROM Queue) A
WHERE A.tot_we <= 1000
ORDER BY A.tot_we DESC
LIMIT 1;