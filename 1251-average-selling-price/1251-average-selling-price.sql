# Write your MySQL query statement below
# SELECT US.product_id, IFNULL(ROUND(SUM(US.units*P.price)/ SUM(US.units),2),0) average_price
# FROM UnitsSold US
# RIGHT JOIN Prices P ON P.product_id = US.product_id
# AND US.purchase_date BETWEEN P.start_date AND P.end_date
# GROUP BY US.product_id;

SELECT a.product_id,IFNULL(ROUND(SUM(b.units*a.price)/SUM(b.units),2),0) as average_price
FROM Prices as a
LEFT JOIN UnitsSold as b
ON a.product_id=b.product_id AND (b.purchase_date BETWEEN a.start_date AND a.end_date)
GROUP BY product_id;