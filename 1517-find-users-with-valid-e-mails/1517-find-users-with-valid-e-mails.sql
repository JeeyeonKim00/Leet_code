# Write your MySQL query statement below
SELECT *
FROM Users
WHERE mail REGEXP '^[a-z][a-zA-Z0-9_.-]*@leetcode\\.com$'
