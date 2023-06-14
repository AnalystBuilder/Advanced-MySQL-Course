-- Default Values as Paramaters

DROP PROCEDURE IF EXISTS orders_by_product;
DELIMITER $$
CREATE PROCEDURE orders_by_product(p_product_id INT)
BEGIN
	IF p_product_id IS NULL
    THEN SET p_product_id = 1001;
    END IF;
	SELECT *
	FROM bakery.customer_orders
    WHERE product_id = p_product_id;
END $$

DELIMITER ;

CALL orders_by_product(1003);

CALL orders_by_product(NULL);


DROP PROCEDURE IF EXISTS orders_by_product2;
DELIMITER $$
CREATE PROCEDURE orders_by_product2(p_product_id INT)
BEGIN
	IF p_product_id IS NULL
    THEN SELECT *
	     FROM bakery.customer_orders;
    ELSE
	SELECT *
	FROM bakery.customer_orders
    WHERE product_id = p_product_id;
    END IF;
END $$

DELIMITER ;

CALL orders_by_product2(1001);

CALL orders_by_product2(NULL);



DROP PROCEDURE IF EXISTS orders_by_product3;
DELIMITER $$
CREATE PROCEDURE orders_by_product3(p_product_id INT)
BEGIN
	SELECT *
	FROM bakery.customer_orders
    WHERE product_id = IFNULL(p_product_id,1001);
END $$

DELIMITER ;

CALL orders_by_product3(1006);

CALL orders_by_product3(NULL);

























































