SELECT 
AVG (price)
FROM
pizzas;

SELECT
pizza_id,
size
FROM
pizzas
WHERE
price > (SELECT 
AVG (price)
FROM
pizzas);


SELECT
*
FROM
pizzas
WHERE 
pizza_id IN ('cali_ckn_m', 'bbq_ckn_m');



SELECT
pizza_id,
price
FROM
pizzas
WHERE
pizza_id IN (
SELECT
DISTINCT
pizza_id
FROM 
order_details
WHERE 
pizza_id LIKE '%cheese%');


SELECT
DISTINCT
pizza_id
FROM 
order_details
WHERE 
pizza_id LIKE '%cheese%';


