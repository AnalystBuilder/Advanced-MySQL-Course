-- Output Paramaters

DROP PROCEDURE IF EXISTS sum_of_orders;
DELIMITER $$
CREATE PROCEDURE sum_of_orders(p_product_id INT, OUT sum_totals DECIMAL(9,2))
BEGIN
	SELECT SUM(order_total)
    INTO sum_totals
	FROM bakery.customer_orders
    WHERE product_id = p_product_id;
END $$

DELIMITER ;

set @sum_totals = 0;
call bakery.sum_of_orders(1001, @sum_totals);
select @sum_totals;


SELECT ROUND(@sum_totals/SUM(order_total) * 100,2) AS Percentage_or_orders
FROM bakery.customer_orders;















































