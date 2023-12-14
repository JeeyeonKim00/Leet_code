# 영화에 최고점 준 사람 찾기.
(SELECT U.name AS results
FROM MovieRating MR
LEFT JOIN Users U 
ON MR.user_id = U.user_id
GROUP BY U.name
ORDER BY COUNT(MR.rating) DESC, U.name ASC
LIMIT 1)
UNION ALL
(
SELECT M.title 
FROM MovieRating MR2
LEFT JOIN Movies M
ON MR2.movie_id = M.movie_id
WHERE MR2.created_at LIKE '2020-02%'
GROUP BY  M.title
ORDER BY AVG(rating) DESC, M.title ASC
LIMIT 1);
