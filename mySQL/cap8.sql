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

