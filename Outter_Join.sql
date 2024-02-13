/*
		2nd Type of join is:
        Outer Join
        
        Need Of outer_join = 'When we Join 2 tables based on id we found only those records who have id,
        But in table we have data who have not order id or may be customer id or NULL values,
        so we can't access that data through inner JOIN'
        
        There are 2 types of Joins
        (i) Left Outter Join &
        
        When we write
        SELECT *
        FROM [Table_name]
        Left JOIN [Table_name] 
			ON (Condition)
		wheather, the condition follows or not but we will get all data from the {FROM [Table_name]} 
        Which is LEFT side to the JOIN condition including null values.

        (ii) RIGHT Outter Join:
        
        ALL the recorders return from the RIGHT side table of the JOIN condition
        
        */
-- USE sql_store;
-- SELECT 
-- c.customer_id,
--    c.first_name,
  --  o.order_id
	-- FROM customers c
    -- LEFT JOIN orders o
/*
	Customers all data will going to return;
    if the condition is
*/    
-- RIGHT JOIN orders o

/*
	Then all data return from the orders o TABLE
*/
		-- ON c.customer_id = o.customer_id
/*
	Outer Joins Between Multiple Tables
*/

-- USE sql_store;
-- SELECT 
	-- c.customer_id,
    -- c.first_name,
    -- o.order_id,
    -- sh.name AS shipper
-- FROM customers c
-- LEFT JOIN orders o
-- 	ON c.customer_id = o.customer_id
-- LEFT JOIN shippers sh
-- ON o.shipper_id = sh.shipper_id
-- ORDER BY c.customer_id

/*
	For easy understanding join through LEFT JOIN,
    don't use both join like RIGHT & then LEFT it's get confusing for others to understand the code
*/

/*
	Self Outer Joins : nothing it;s just doing outer join in to the self join
    here we have done left JOIN on EMPLOYESS with self OUTER Join
*/

-- USE sql_hr;

-- SELECT
	-- e.employee_id,
    -- e.first_name,
    -- m.first_name AS manager

-- FROM employees e
-- LEFT JOIN employees m
-- 	ON e.reports_to = m.employee_id

/*
	Join Using Clause:
    
	Here we use 'USING' keywords to make the JOIN statement easy
    
*/

USE sql_store;
-- SELECT
	-- o.order_id,
    -- c.first_name,
    -- sh.name AS shipper
-- FROM orders o
-- JOIN customers c
	/* ON o.customer_id = c.customer_id */
--    USING(customer_id)
    /* we can use USING k.w if we joining same column both side like customer_id */
-- LEFT JOIN shippers sh
	/* ON o.shipper_id = sh.shipper_id */
--    USING(shipper_id)
    /* So we can use using k.w for the outer JOIN as well */
    
/*
	if the column name is different than the syntax to use the USING k.w is,
*/

	-- SELECT *
-- 		FROM order_items oi
--         JOIN order_item_notes oin
-- 			-- ON oi.order_id = oin.order_id AND
-- 				-- oi.product_id = oin.product_id
-- 				USING(order_id, product_id)

/*
	Natural joins:
    
    This Joins aare un recommended to use on a real life database
    becaus using this join user have no control on the data base
    
    LIKE it will directly compare 2 tables and give results after comparing 2 same name column
*/            

-- SELECT	
-- 	o.order_id,
--     c.first_name
-- FROM  orders o
-- NATURAL JOIN customers c

/*
	Cross JOINS:
    This Join is used for get the combination of 1st row from the 2nd row
    example: customer_name column and product_purchace column
    using cross join we can identify that customer have purchased which items kind of sorting
*/

SELECT
	c.first_name AS customer,
    p.name AS product
FROM customers c
-- FROM customer c, products p
/* This is called Implicit Syntax */
CROSS JOIN products p
/* This is called Explicit Syntax,
Preferrable syntax is Explicit syntax */
ORDER BY c.first_name