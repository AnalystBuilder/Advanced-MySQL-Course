-- Triggers

SELECT *
FROM bakery.client_invoices;

SELECT *
FROM bakery.client_payments;

DELIMITER $$
CREATE TRIGGER update_invoices_with_payments
	AFTER INSERT ON bakery.client_payments
    FOR EACH ROW
BEGIN
	UPDATE bakery.client_invoices
    SET total_paid = total_paid + NEW.amount_paid
    WHERE invoice_id = NEW.invoice_id;
END $$
DELIMITER ;


INSERT INTO bakery.client_payments
VALUES(11, 1001, 3, '2023-02-27', 1003.87);



DELIMITER $$
CREATE TRIGGER update_invoices_when_deleted
	AFTER DELETE ON bakery.client_payments
    FOR EACH ROW
BEGIN
	UPDATE bakery.client_invoices
    SET total_paid = total_paid - OLD.amount_paid
    WHERE invoice_id = OLD.invoice_id;
END $$
DELIMITER ;

SELECT *
FROM bakery.client_invoices;

SELECT *
FROM bakery.client_payments;


DELETE FROM client_payments
WHERE payment_id = 11;












































