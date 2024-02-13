/* SELECT Clause is used to get or edit the data fromt the data base */
-- USE sql_store;
-- SELECT * FROM customers 
-- WHERE customer_id = 6
/* Comment */
-- ORDER BY first_name

-- SELECT first_name, last_name, points FROM customers

USE sql_store;
-- SELECT * FROM customers
-- SELECT last_name, first_name,points, points +10  FROM customers

/* Another way to write upper query is: */
-- SELECT
	-- last_name,
    -- first_name,
    -- points,
--    points*10+2,
/* arithmatic operations will be done according to BODOMAS,
but if we want to change the order then just do like */
-- (points+10) * 2
/* let's give the appropriate name of the column on whoch upper operation will be applied*/
-- (points + 20) * 1 AS discount_offer
/* discount_offer or 'discount offer'(white space wants '' quotes) */

/* we can remove duplicates by DISTINCT keyword */
SELECT DISTINCT state
FROM customers