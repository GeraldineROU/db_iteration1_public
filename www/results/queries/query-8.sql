SELECT o.number, SUM(p.price * op.quantity) as total_price
FROM orders o
JOIN order_product op
ON o.id = op.order_id
JOIN products p
ON op.product_id = p.id
GROUP BY o.number
HAVING total_price BETWEEN 100 AND 550

