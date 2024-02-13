/*
	UNIONS
    USING Union we can combine records of multiple queries
*/

-- SELECT 
-- 	order_id,
--     order_date,
--     'Active' AS status
-- FROM orders
-- WHERE order_date >= '2019-01-01'
-- UNION
-- SELECT 
-- 	order_id,
--     order_date,
--     'Deactive' AS status
-- FROM orders
-- WHERE order_date < '2019-01-01'

/*
	We can only combine same no. of columns from the both table else it gives error
*/

/*
	Inserting a single row
*/

-- INSERT INTO customers(customer_id,first_name,last_name,birth_date,phone,address,city,state,points)
-- VALUES(DEFAULT,'Bhavya','Patel','2003-07-12',NULL,'INDIA','PATAN','GU','2000')

/*
	Inserting Multiple rows
*/

-- INSERT INTO shippers (name)
-- VALUES('SHIPPER1'),
-- 		('SHIPPER2'),
--         ('SHIPPER3')

/*
	Inserting Hierarchical rows:
    Inserting data into multiple tables
*/

-- INSERT INTO orders (customer_id, order_date, status)
-- /* we can skip it if all the fields are required to have a data then we can directly give a values,
-- But if selected itemswe want to fill then it's necessary to fill the field*/
-- VALUES('1','2023-12-1',1);

-- -- SELECT last_insert_id()
-- /* Here, we can use this inbuilt func. to know the last id for to append data in child table */


-- /* Inserting multiple data in child class based on parent class */
-- INSERT INTO order_items
-- VALUES
-- 	(last_insert_id(), 1, 1, 2.95),
--     (last_insert_id(), 2, 1, 3.95)

/*
	Creating a copy of the table
*/

-- CREATE TABLE orders_2 AS
-- SELECT * FROM orders

/*
	New table is created which is a whole copy of table order
    
    NOTE: Copied table have disabled primary key and Auto Increment
*/

/*
	Now we have truncat the cable which is basically delete the all rows from the table,
*/

/*
	Now if we want to copy a filtered data or some data from the parent to child table then,
*/
-- INSERT INTO orders_2
-- SELECT * FROM orders
-- WHERE order_date < '2019-01-01'

/*
	Update a single row
*/

-- UPDATE invoices
-- SET payment_total	= 10, payment_date = '2003-12-07'
-- WHERE invoice_id = 1
/*
	We can also give a mathamatical expression to the SET
*/
-- UPDATE invoices
-- SET payment_total	= invoice_total * 0.5 , payment_date = '2003-12-07'
-- WHERE invoice_id = 1

/*
	Updating Multiple Rows
*/

