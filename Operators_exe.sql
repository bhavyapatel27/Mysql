/*
	Form the order_items table, get the items
	for order numnber 6
    where the total price is > 30
*/
-- SELECT *
-- FROM order_items
-- WHERE order_id = 6 AND (unit_price * quantity > 30)

/*
	Return products with,
    Quantity in stock equal to 49, 38, 72
*/

-- FROM products
-- WHERE quantity_in_stock IN (49, 38, 72)

/*
	Return Customers born
    between 1/1/1990 and 1/1/2000
*/

-- FROM customers
-- WHERE birth_date BETWEEN '1990-01-01' AND '2020-01-01'

/*
	Get the customer whose,
    Adress contain TRAIL or AVENUE
    Phone numbers end with 9
*/

-- from customers
-- WHERE address LIKE '%trail%' OR address LIKE '%avenue%'
-- WHERE Phone like '%9'	

/*

	Get the customers whose,
    first names are ELKA or AMBUR
    last names end with EY or ON
    last names start with MY or contains SE
    last names contains B followed bt R or U

*/

-- WHERE first_name REGEXP 'ELKA' OR first_name REGEXP 'AMBUR'
-- WHERE first_name REGEXP 'ELKA|AMBUR'
-- WHERE last_name REGEXP 'EY$' OR last_name REGEXP 'ON$'
-- WHERE last_name REGEXP 'ey$|on$'
-- WHERE last_name REGEXP '^MY' OR last_name REGEXP 'SE'
-- WHERE last_name REGEXP '^my|se'
-- WHERE last_name REGEXP 'B[R]' OR last_name REGEXP 'B[U]'
-- WHERE last_name REGEXP 'b[ru]'
-- WHERE last_name REGEXP 'br|bu'

/*
Get the orders that are not shipped
*/

-- from orders
-- WHERE shipper_id IS NULL

/*
	Order By
*/
-- SELECT *,
-- quantity * unit_price AS total_price
-- FROM order_items
-- WHERE order_id = '2'
-- ORDER BY total_price DESC

/*
	LIMIT Operator 
    
    get top 3 loyal customers (loyality max = Highest points)
*/

SELECT * FROM customers
ORDER BY Points DESC LIMIT 3