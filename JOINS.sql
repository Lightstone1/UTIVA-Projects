--INNER JOIN--

SELECT
ord.*,
cli.first_name,
cli."location"
FROM
order_table AS ord
INNER JOIN
client_table AS cli  
ON
cli.client_id = ord.client_id;


-- LEFT JOIN--
--How to Insert Values--
INSERT INTO order_table (order_day, order_id, product_id, client_id) VALUES ('Sunday', 1011, 107, 105), ('Sunday', 1012, 108, 106)

SELECT * FROM order_table;

-- LEFT JOIN, adding three tables--

SELECT
O.*,
c.client_id,
c.first_name,
c.last_name,
c."location",
p.product_name
FROM
order_table AS o
LEFT JOIN
client_table AS c
ON
c.client_id = o.client_id

LEFT JOIN
product_table AS p
ON 
o.product_id = p.product_id;


SELECT * FROM product_table;

INSERT INTO product_table (product_id, product_name, cost_price, selling_price) VALUES (107, 'pencils', 100, 120), (108, 'rulers', 50, 70), (109, 'paint brushes', 50, 190), (110, 'stencil set', 1000, 1200);




-- RIGHT JOIN

SELECT
o.order_day,
o.order_id,
o.product_id,
p.product_id,
p.product_name,
p.cost_price,
p.selling_price,
 (p.selling_price - p.cost_price) AS profit
FROM
order_table AS o
RIGHT JOIN
product_table AS p
ON
p.product_id = o.product_id;


INSERT INTO order_table (order_day, order_id, product_id, client_id) VALUES ('Sunday', 1013, 113,102);


-- FULL JOIN

SELECT
o.*,
p.*
FROM
order_table AS o
FULL JOIN
product_table AS p
ON 
p.product_id = o.product_id;

