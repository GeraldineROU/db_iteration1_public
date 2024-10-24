select o.number, SUM(p.price * op.quantity)
FROM customers c
JOIN orders o
ON c.id = o.customer_id
JOIN order_product op
ON o.id = op.order_id
JOIN products p
ON op.product_id = p.id
WHERE customer_id = 2
GROUP BY o.number