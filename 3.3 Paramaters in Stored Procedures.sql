-- Paramaters in Stored Procedures

DROP PROCEDURE IF EXISTS orders_by_product;
DELIMITER $$
CREATE PROCEDURE orders_by_product(p_product_id INT)
BEGIN
	SELECT *
	FROM bakery.customer_orders
    WHERE product_id = p_product_id;
END $$

CALL orders_by_product(1001);

CALL orders_by_product();

CALL `bakery`.`orders_by_product`(<{p_product_id INT}>);




DROP PROCEDURE IF EXISTS orders_by_product2;
DELIMITER $$
CREATE PROCEDURE orders_by_product2(p_product_id INT, p_order_date DATE)
BEGIN
	SELECT *
	FROM bakery.customer_orders
    WHERE product_id = p_product_id
    AND order_date = p_order_date;
END $$

CALL orders_by_product2(1001,'2020-01-30');

CALL orders_by_product(1001);

















































































