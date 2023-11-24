# Write your MySQL query statement below
SELECT player_id, first_login
FROM (
SELECT player_id, event_date as first_login, 
        ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date ASC) as rn
FROM Activity) A
WHERE rn = 1;