-- -- -- Using LIKE, IN, BETWEEN, and wildcards to match multiple values in SQL
use priyansh;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- Like Operator

-- -- -- The LIKE operator is used to match text string patterns. In terms of syntax structure, it fits into a boolean expression just as an equals sign normally would
-- -- -- That LIKE is case insensitive.

-- select * from students
-- where name like 'a%';

-- select name from students
-- where name like 'a%';

-- select * from students
-- where name like 'K%';

-- select * from students
-- where name like '_a%';

-- -- -- What the % and _ wildcards stand for.

-- -- The _ Wildcard
-- -- The _ wildcard represents a single character.
-- -- It can be any character or number, but each _ represents one, and only one, character.
-- -- Return all students from a name that starts with 'J' followed by one wildcard character, then 'h' and then one wildcard characters:
-- select * from students
-- where name like 'J_h_';

-- -- The % Wildcard
-- -- The % wildcard represents any number of characters, even zero characters.
-- -- Return all customers from a city that contains the letter 'L':
-- select * from students
-- where name like 'J%';

-- -- Starts With
-- -- To return records that starts with a specific letter or phrase, add the % at the end of the letter or phrase.
-- -- Return all students that starts with 'J':
-- select * from students
-- where name like 'J%';
-- -- Tip: You can also combine any number of conditions using AND or OR operators.
-- -- Return all customers that starts with 'k' or starts with 'a':
-- select * from students
-- where name like 'k%' or name like 'a%';

-- -- Ends With
-- -- To return records that ends with a specific letter or phrase, add the % at the beginning of the letter or phrase.
-- -- Return all customers that ends with 'i':-- 
-- select * from students
-- where name like '%i';
-- -- Tip: You can also combine "starts with" and "ends with":
-- -- Return all customers that starts with "b" and ends with "s":
-- select * from students 
-- where name like 'a%i';
-- -- Return all customers that starts with 'a' and ends with 'i':
-- select * from students
-- where name like 'a%' and name like '%i';

-- -- Contains
-- -- To return records that contains a specific letter or phrase, add the % both before and after the letter or phrase.
-- -- Return all students that contains the phrase 'a'
-- select * from students
-- where name like '%a%';

-- -- Combine Wildcards
-- -- Any wildcard, like % and _ , can be used in combination with other wildcards.
-- -- Return all students that starts with "j" and are at least 3 characters in length:
-- select * from students
-- where name like 'j__%';
-- -- Return all students that have "e" in the second position:
-- select * from students
-- where name like '_e%';

-- -- Without Wildcard
-- -- If no wildcard is specified, the phrase has to have an exact match to return a result.
-- -- Return all students from age 19:
-- select * from students
-- where age like '19';

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- How the IN and NOT IN operators work.

-- -- The SQL IN Operator
-- -- The IN operator allows you to specify multiple values in a WHERE clause.
-- -- The IN operator is a shorthand for multiple OR conditions.
-- -- Return all students that are from 'Jodhpur, Rajasthan':
-- select * from students
-- where address in ('Jodhpur, Rajasthan');

-- -- NOT IN
-- -- By using the NOT keyword in front of the IN operator, you return all records that are NOT any of the values in the list.
-- -- Return all students that are NOT from 'Jodhpur, Rajasthan':
-- select * from students
-- where address not in ('Jodhpur, Rajasthan');


-- -- IN (SELECT)
-- -- You can also use IN with a subquery in the WHERE clause.
-- -- With a subquery you can return all records from the main query that are present in the result of the subquery.
-- -- Return all students that have an order in the Orders table:
-- SELECT * FROM Customers
-- WHERE CustomerID IN (SELECT CustomerID FROM Orders);


-- -- NOT IN (SELECT)
-- -- The result in the example above returned 74 records, that means that there are 17 customers that haven't placed any orders.
-- -- Let us check if that is correct, by using the NOT IN operator.
-- -- Return all customers that have NOT placed any orders in the Orders table:
-- SELECT * FROM Customers
-- WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- How to use BETWEEN

-- -- The SQL BETWEEN Operator
-- -- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
-- -- The BETWEEN operator is inclusive: begin and end values are included. 
-- -- Selects all students with a age between 10 and 20:
-- select * from  students
-- where age between 10 and 20;

-- -- NOT BETWEEN
-- -- To display the students outside the range of the previous example, use NOT BETWEEN:
-- -- Selects all students with a age not between 10 and 18:
-- select * from  students
-- where age not between 10 and 18;

-- -- BETWEEN with IN
-- -- The following SQL statement selects all students with a age between 10 and 20. In id must be either 1, 2 or 3:
-- select * from  students
-- where age between 10 and 18
-- and id in (1, 2, 3);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
