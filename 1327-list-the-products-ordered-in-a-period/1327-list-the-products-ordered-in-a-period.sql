SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE EXTRACT(YEAR_MONTH FROM o.order_date) = 202002
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;