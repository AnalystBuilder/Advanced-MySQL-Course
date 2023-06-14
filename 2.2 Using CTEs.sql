-- Using Common Table Expressions (CTEs)

SELECT *
FROM bakery.customer_orders;


SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
FROM bakery.customer_orders
WHERE tip != 0
GROUP BY product_id;


WITH CTE_Example AS
(
SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
FROM bakery.customer_orders
WHERE tip != 0
GROUP BY product_id
)




SELECT *
FROM CTE_Example
WHERE `SUM(tip)` > 3;

SELECT *
FROM CTE_Example
WHERE `SUM(tip)` > 3;


WITH CTE_Example(product_id, sum_order_total,sum_tip,count_tip) AS
(
SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
FROM bakery.customer_orders
WHERE tip != 0
GROUP BY product_id
)

SELECT product_id, ROUND(sum_tip/count_tip,2)
FROM CTE_Example;

SELECT product_id, ROUND(`SUM(tip)`/`COUNT(tip)`,2)
FROM (SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
FROM bakery.customer_orders
WHERE tip != 0
GROUP BY product_id) Subquery_Example
GROUP BY product_id;



WITH CTE_Example(product_id, sum_order_total,sum_tip,count_tip) AS
(
SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
FROM bakery.customer_orders
WHERE tip != 0
GROUP BY product_id
),
CTE_Example2 AS (
SELECT product_id, SUM(order_total), SUM(tip), COUNT(tip)
FROM bakery.customer_orders
GROUP BY product_id
)
SELECT *
FROM CTE_Example cte1
RIGHT JOIN CTE_Example2 cte2
	ON cte1.product_id = cte2.product_id;






















































