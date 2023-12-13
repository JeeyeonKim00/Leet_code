SELECT ROUND(SUM(tiv_2016),2) tiv_2016
FROM Insurance
WHERE tiv_2015 IN ( SELECT tiv_2015
                    FROM Insurance
                    GROUP BY tiv_2015
                    HAVING COUNT(*)>=2)
AND concat(lat,lon) IN (    
                    SELECT CONCAT(lat,lon) as lalo
                    FROM Insurance
                    GROUP BY lalo
                    HAVING COUNT(*)=1);