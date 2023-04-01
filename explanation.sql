SELECT
	pizza_id,
	quantity
FROM 
	order_details;
	
	
SELECT pizza_id FROM order_details; -- this is a single line commenting


--ALIASING
--WITHOUT ALIAS

SELECT 
	pizza_name,
	category,
	ingredients
FROM 
pizza_types;


--WITH ALIAS 

SELECT 
	pizza_name AS pizzaNAME,
	category AS pizzaCategory,
	ingredients AS pizzaIngredients
FROM
	pizza_types;
	
	
-- DISTINCT

SELECT
	DISTINCT
	category
FROM
	pizza_types;
	
	
--WITHOUT DISTINCT
SELECT
	category
FROM
	pizza_types;



-- ORDER BY 
--ASCENDING
SELECT
	*
FROM
	pizzas
ORDER BY
price ASC;



-- ORDER BY 
--DESCENDING
SELECT
	*
FROM
	pizzas
ORDER BY
price DESC;


SELECT
	order_id,
	order_date,
	order_time
FROM
	orders
ORDER BY
	order_date DESC,
	order_time ASC;

SELECT * FROM order_details;

-- WHERE CLAUSE

SELECT 
	*
FROM
	order_details
WHERE
	pizza_id='mexicana_l';
	
SELECT 
	*
FROM
	order_details
WHERE
	order_id = 1765;
SELECT 



	