-- Stored Procedures



SELECT *
FROM bakery.customer_orders
WHERE order_total > 20;



CREATE PROCEDURE large_order_totals()
SELECT *
FROM bakery.customer_orders
WHERE order_total > 20;


CALL large_order_totals();


DELIMITER $$
CREATE PROCEDURE large_order_totals2()
BEGIN
	SELECT *
	FROM bakery.customer_orders
	WHERE order_total > 20;
	SELECT *
	FROM bakery.customer_orders
	WHERE order_total > 5;
END $$

DELIMITER ;

CALL large_order_totals2();

CALL large_order_totals3();





































































