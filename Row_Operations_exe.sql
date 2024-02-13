/*
	Union Exe
*/
-- SELECT
-- c.customer_id,
-- c.first_name,
-- c.points,
-- 'BRONZE' AS 'STATUS'
-- FROM customers c
-- WHERE points < 2000
-- UNION
-- SELECT
-- c.customer_id,
-- c.first_name,
-- c.points,
-- 'SILVER' AS 'STATUS'
-- FROM customers c
-- WHERE points < 3000 AND points >= 2000
-- UNION
-- SELECT
-- c.customer_id,
-- c.first_name,
-- c.points,
-- 'GOLD' AS 'STATUS'
-- FROM customers c
-- WHERE points > 3000
-- ORDER BY first_name

/*
	INSERT 3 rows in product table
*/

-- INSERT INTO products(product_id, name, quantity_in_stock, unit_price)
-- VALUE(DEFAULT,'A',12,2),
-- (DEFAULT,'B',121,1),
-- (DEFAULT,'C',122,4.12)

-- USE sql_invoicing;
-- CREATE TABLE invoices_archieved AS
-- SELECT 
-- i.invoice_id,
-- i.number,
-- c.name,
-- i.client_id,
-- i.invoice_total,
-- i.payment_total,
-- i.invoice_date,
-- i.due_date,
-- i.payment_date
-- FROM invoices i
-- JOIN clients c
-- USING(client_id)
-- WHERE payment_date IS NOT NULL

/*
	Give 50 exctra points who borns before  1990
*/
-- USE sql_store;
-- UPDATE customers
-- SET points = points + 50
-- WHERE birth_date <'1990-01-01'
/*
	i'm here updating multiple lines so,
    MYSQL doen't allow me to update a multiple lines at a time,
    due to safe mode,
    
    So we need to disable this safe mode to update the multiple lines
*/

/*
	Let's use subquery to update the data
    
    Like every time we do nate have a client or order id to track the row
so at that moment to get the index we have to make a subquery to select the perticular row to update the data
*/


