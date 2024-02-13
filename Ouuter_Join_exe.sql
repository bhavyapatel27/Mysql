/*
	Outter Join exe
*/

-- USE sql_store;

-- SELECT 
-- p.product_id,
-- p.name,
-- oi.quantity
-- FROM products p
-- LEFT JOIN order_items oi
-- ON p.product_id = oi.product_id

/*

*/

-- USE sql_store;

-- SELECT
   -- o.order_date,
	-- o.order_id,
    -- c.first_name AS customers,
    -- os.name AS status ,
    -- sh.name AS shipper
-- 	FROM orders o
--     LEFT JOIN shippers sh
-- 		ON o.shipper_id = sh.shipper_id
--     JOIN order_statuses os
-- 		ON o.status = os.order_status_id
-- 	JOIN customers c
-- 		ON c.customer_id = o.customer_id
	
/*
	USING Clause Exe
*/

-- USE sql_invoicing;

-- SELECT 
-- 		p.date,
--         p.amount,
--         c.name AS client,
--         pm.name AS payment_method
-- FROM payments p
-- JOIN clients c
-- 	USING(client_id)
-- JOIN payment_methods pm
-- 	ON p.payment_method = pm.payment_method_id
    /* AS the column name is different so we can't use USING k.w. at here */

USE sql_store;

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM products p
-- FROM products p, shippers sh
CROSS JOIN shippers sh
