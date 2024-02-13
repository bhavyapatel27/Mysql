/* AND, OR, NOT Operator */


-- SELECT *
-- FROM orders
-- WHERE order_date >= '2019/01/01' AND order_date <= '2019/12/31'

-- SELECT *
-- FROM customers
-- WHERE birth_date >'1990-01-01' AND points > 1000
-- WHERE birth_date > '1990-01-01' OR 
-- 	  (points > 1000 AND state = 'VA')
/* Order or priority of the logic operator is  "AND > OR" */

/* The IN Operator */

-- WHERE state = 'VA' OR state = 'GA' OR state = 'FL'
/* 
"OR and IN Operators are working as a same operator"
*/

-- WHERE state IN('VA', 'GA', 'FL')

/*
	The BETWEEN Operator
*/

-- WHERE points >= 1000 AND points <= 3000
-- WHERE points BETWEEN 1000 AND 3000

/*
	The LIKE Operator
*/

-- WHERE last_name LIKE 'b%'
/* b % means any no of char after b or last_name starts with b */

-- WHERE last_name LIKE '%b%' 
/* %b% = lastname must include b at any position just it atleast have 1 b char in lastname */

 -- WHERE last_name LIKE '_y'
 /* 2nd char mustbe Y */
 
 -- WHERE last_name LIKE 'b____y'
 /* 1st char must be B and 5th char must be y
	% for any number of character
    _ for single character
 */
 
 
/*
	REGEXP Operator
*/

-- WHERE last_name LIKE '%field%'
/*We can write a same above line with regexp operator*/

-- WHERE last_name REGEXP 'field'
/*
Signs in the regxep:

^ = beginning = starting of the string
$ = end = ending of the string
|  = logical OR = operator simply = bhavya | Patel = any word from the both word in the string
[] = [gim]e befor e there was any word from the gim
	 e[fmq] e followed byb f or m or q
[-] = to represent a range
 
/*
	ISNULL Operator
*/
-- WHERE phone IS NULL

/*
	Order By Clause
*/
-- SELECT first_name, last_name
-- FROM customers
-- ORDER BY 1,2

/*
	Limit Clause
    
    LIMIT Clause always comes at the end
    Order for the queries should be,
    SELECT
    WHERE
    ORDER BY
    LIMIT
*/

SELECT * FROM customers
-- LIMIT 3
-- LIMIT 6,3
/* skip first 6 rows and give after 3 rows*/

