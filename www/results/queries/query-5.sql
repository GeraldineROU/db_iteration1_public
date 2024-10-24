# SELECT p.name, op.quantity, p.price
# FROM products p, orders o, order_product op
# WHERE o.id=1 and op.order_id = o.id and op.product_id = p.id

SELECT p.name, op.quantity, p.price
FROM products p
JOIN order_product op
ON p.id = op.product_id
WHERE op.order_id = 1





