-- Session vs Local Variable in Stored Procedures

DROP PROCEDURE IF EXISTS percentage_of_orders;
DELIMITER $$
CREATE PROCEDURE percentage_of_orders(p_product_id INT, OUT sum_totals DECIMAL(9,2))
BEGIN
	DECLARE all_totals DECIMAL(9,2);
    DECLARE percentage_total DECIMAL(9,2);
    
	SELECT SUM(order_total)
    INTO sum_totals
	FROM bakery.customer_orders
    WHERE product_id = p_product_id;
    
    SELECT SUM(order_total)
    INTO all_totals
	FROM bakery.customer_orders;
    
    SET percentage_total = (sum_totals / all_totals * 100);
    
    SELECT sum_totals;
    SELECT all_totals;
    SELECT percentage_total;
END $$

DELIMITER ;

set @sum_totals = 0;
call bakery.percentage_of_orders(1001, @sum_totals);

-- Session Variable
select @sum_totals;

-- Local Variable
SELECT @all_totals;
SELECT @percentage_total;

















































































