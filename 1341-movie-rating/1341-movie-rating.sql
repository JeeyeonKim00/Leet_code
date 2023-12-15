(SELECT U.name AS results
FROM Users U
LEFT JOIN MovieRating MR USING (user_id)
GROUP BY U.user_id
ORDER BY COUNT(MR.movie_id) DESC, U.name ASC
LIMIT 1)
UNION ALL
(
SELECT M.title 
FROM Movies M
LEFT JOIN MovieRating MR2 USING (movie_id)
WHERE MR2.created_at LIKE '2020-02%'
GROUP BY  M.title
ORDER BY AVG(rating) DESC, M.title ASC
LIMIT 1);
