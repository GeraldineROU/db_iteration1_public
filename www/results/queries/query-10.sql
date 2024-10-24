SELECT c.first_name, c.last_name, COUNT(op.order_id)
FROM customers c
JOIN orders o
ON c.id = o.customer_id
JOIN order_product op
ON o.id = op.order_id
GROUP BY c.first_name, c.last_name 

