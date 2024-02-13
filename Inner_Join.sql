-- USE sql_store;
-- SELECT * FROM orders
-- SELECT * FROM customers
/*
	Both have customer_id
    So let's join both table based on customer id
*/

-- SELECT * 
-- FROM orders
-- JOIN customers
-- ON orders.customer_id = customers.customer_id


-- SELECT order_id, orders.customer_id, first_name, last_name
-- FROM orders
-- JOIN customers
-- ON orders.customer_id = customers.customer_id

/*
	we can replace the order word by o and customers word by c
*/

-- SELECT order_id, o.customer_id, first_name, last_name
-- 	FROM orders o
--    JOIN customers c
--    ON o.customer_id = c.customer_id

-- SELECT order_id, oi.product_id, quantity, oi.unit_price
-- FROM order_items oi
-- JOIN products p
--    ON oi.product_id = p.product_id
/*
		joining accross data base
        (Joining tables from the 2 different data bases)
*/
-- use sql_inventory;

-- SELECT *
-- FROM sql_store.order_items oi
-- JOIN sql_inventory.products p
-- 	ON oi.product_id = p.product_id

/*
	Self Joins
*/
-- USE sql_hr;

-- 	SELECT 
--    e.employee_id,
--    e.first_name,
--    m.first_name AS manager
-- FROM employees e
-- JOIN employees m
-- 	ON e.reports_to = m.employee_id

/*
	Joining Multiple Tables
*/

USE sql_store;

-- SELECT
-- 	o.order_id,
--    o.order_date,
--    c.first_name,
--    c.last_name,
--    os.name AS status
-- FROM orders o
--    JOIN customers c
-- ON o.customer_id = c.customer_id
-- JOIN order_statuses os
-- ON o.status = os.order_status_id
        
/*
	Compund Join
    composite_id = it's contains more than 1 column
    Using multiple conditions like AND, OR we are joining multiple table is known as 'Compound Join'
*/

SELECT  *
	FROM order_items oi
    JOIN order_item_notes oin
		ON oi.order_id = oin.order_id
        AND oi.product_id = oin.product_id
        
/*
	Implicit Join
    
    There are 2 types of Joins = INNER Joins and OUTER Joins
    
    in Inner Joins we have 2 Types:
    (i) Explicit Join &
    (ii) Implicit Join
    
    Explicit Join = Using JOIN and ON Keyword	
    SELECT *
		FROM orders o
        JOIN customers c
			ON o.customer_id = c.customer_id
    
    Implicit Join = Without using JOIN and ON k.w we use here WHERE k.w To join the both the tables
    
		SELECT *
			FROM orders o, customers c
            WHERE o.customer-id = c.customer_id
    
    NOTE: Suggested Method to Join the table is Explicit Join
*/

