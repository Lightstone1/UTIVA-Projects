

SELECT
*	

FROM
	order_details;



SELECT
pizza_id,	
SUM (quantity) AS pizzaquantity
FROM
	order_details
WHERE
pizza_id LIKE ('s%')
GROUP BY
pizza_id
ORDER BY
pizzaquantity DESC;




--SECOND QUESTION

SELECT
AVG (price)
FROM
pizzas



SELECT
pizza_id
FROM
pizzas
WHERE
price > (SELECT
AVG (price)
FROM
pizzas);
