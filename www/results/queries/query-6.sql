SELECT o.number, SUM(p.price * op.quantity)
FROM orders o
JOIN order_product op
ON o.id = op.order_id
JOIN products p
ON p.id = op.product_id
GROUP BY o.number

