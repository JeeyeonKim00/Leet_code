SELECT visited_on,
        (SELECT sum(amount)
        FROM customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on, interval 6 day) AND c.visited_on) as amount,
        (SELECT round(sum(amount)/7,2)
        FROM customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on, interval 6 day) AND c.visited_on) as average_amount
        
FROM customer c
WHERE visited_on >= (SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) 
                     FROM customer)
GROUP BY visited_on;