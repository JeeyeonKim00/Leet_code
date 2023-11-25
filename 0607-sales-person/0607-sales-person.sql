SELECT S.name as name
FROM SalesPerson S
LEFT JOIN (SELECT O.sales_id, O.order_id
            FROM Orders O
            LEFT JOIN Company C ON O.com_id = C.com_id
            WHERE C.name = "RED") A
ON S.sales_id = A.sales_id
WHERE A.order_id IS NULL;