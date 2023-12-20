# # Write your MySQL query statement below

SELECT a.contest_id, round(a.cnt /(SELECT DISTINCT(count(*)) FROM Users)*100,2)  as percentage
FROM (
    SELECT R.contest_id, count(*) cnt
    FROM Users U
    LEFT JOIN Register R USING (user_id) 
    GROUP BY R.contest_id) a
WHERE a.contest_id IS NOT NULL
ORDER BY percentage DESC, a.contest_id;
