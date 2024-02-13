/*
	Multiple Join
    Inner Join exercose
*/

USE sql_invoicing;

SELECT 
	p.date,
    p.invoice_id,
    p.amount,
    c.name,
    pm.name
	FROM payments p
    JOIN clients c
		ON c.client_id = p.client_id
	JOIN payment_methods pm
		ON p.payment_method = pm.payment_method_id