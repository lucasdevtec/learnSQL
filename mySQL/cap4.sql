/*DB hexon*/
SELECT * FROM product;

SELECT product_id, description, price, price * 1.07 AS taxed_price
FROM product;

SELECT product_id, description, price AS untaxed_price, price * 1.07 AS taxed_price
FROM product;

SELECT product_id, description, price AS untaxed_price, ROUND(price * 1.07,2) AS taxed_price
FROM product;

SELECT name, city || ', ' || state AS location
FROM customer;

SELECT name, street_address || ', ' || city || '-' || state AS location
FROM customer;

