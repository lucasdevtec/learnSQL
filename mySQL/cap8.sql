/*DB hexon*/

SELECT order_id,
customer.customer_id,
order_date,
ship_date,
name,
street_address,
city,
state,
zip
product_id,
order_qty
FROM customer INNER JOIN customer_order
ON customer.customer_id = customer_order.customer_id;

SELECT order_id,
customer.customer_id,
order_date,
ship_date,
name,
street_address,
city,
state,
zip
product_id,
order_qty
FROM customer LEFT JOIN customer_order
ON customer.customer_id = customer_order.customer_id;

SELECT name,
sum(
  CASE
  		WHEN order_id THEN 1
  		ELSE 0
  END
) AS total_orders
FROM customer LEFT JOIN customer_order
ON customer.customer_id = customer_order.customer_id
GROUP BY 1;

SELECT *,
sum(order_qty * price) AS total
FROM customer
INNER JOIN customer_order
ON customer.customer_id = customer_order.customer_id
INNER JOIN product
ON product.product_id = customer_order.product_id
GROUP BY customer.customer_id;

SELECT *,
sum(order_qty * price) AS total
FROM customer
INNER JOIN customer_order
ON customer.customer_id = customer_order.customer_id
INNER JOIN product
ON product.product_id = customer_order.product_id;

SELECT *,
sum(order_qty * price) AS total
FROM customer
LEFT JOIN customer_order
ON customer.customer_id = customer_order.customer_id
LEFT JOIN product
ON product.product_id = customer_order.product_id
GROUP BY customer.customer_id;

SELECT *,
coalesce(sum(order_qty * price), 0) AS total
FROM customer
LEFT JOIN customer_order
ON customer.customer_id = customer_order.customer_id
LEFT JOIN product
ON product.product_id = customer_order.product_id
GROUP BY customer.customer_id;

