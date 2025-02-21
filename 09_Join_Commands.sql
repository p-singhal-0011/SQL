-- To implement Joins (inner, outer, natural, equi join) and related examples
use priyansh; 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- create table products
-- (
-- 	product_id int unsigned,
--     product_name varchar(100),
--     category_id int unsigned,
--     price int unsigned
-- );

-- create table Categories
-- (
-- 	categories_id int unsigned,
--     categories_name varchar(100),
--     description text
-- );

-- insert into products 
-- (product_id, product_name, category_id, price)
-- values
-- (1, "Chais", 1, 18),
-- (2, "Chang", 1, 19),
-- (3, "Aniseed Syrup", 1, 10)

-- insert into Categories 
-- (categories_id, categories_name, description)
-- values
-- (1, "Beverages", "Soft drinks, coffees, teas, beers, and ales"),
-- (2, "Condiments", "Sweet and savory sauces, relishes, spreads, and seasonings"),
-- (3, "Confections ", "Desserts, candies, and sweet breads")

-- update products 
-- set category_id=2
-- where price="10";

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
-- Let's look at a selection from the "Orders" table:

-- select product_id, product_name, categories_name
-- from Categories
-- inner join products on products.category_id = Categories.categories_id;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- INNER JOIN

-- The INNER JOIN keyword selects records that have matching values in both tables.
-- Let's look at a selection of the Products table:

-- select product_id, product_name, categories_name
-- from Categories
-- inner join products on products.category_id = Categories.categories_id;

-- Note: The INNER JOIN keyword returns only rows with a match in both tables. Which means that if you have a product with no CategoryID, or with a CategoryID that is not present in the Categories table, that record would not be returned in the result.
-- Naming the Columns
-- It is a good practice to include the table name when specifying columns in the SQL statement.
-- JOIN and INNER JOIN will return the same result.
-- INNER is the default join type for JOIN, so when you write JOIN the parser actually writes INNER JOIN.

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- LEFT JOIN Keyword
-- The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.
-- select product_id, product_name, categories_name
-- from Categories
-- left join products 
-- on products.category_id = Categories.categories_id
-- order by product_id;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- RIGHT JOIN Keyword
-- The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.
-- select product_id, product_name, categories_name
-- from Categories
-- right join products 
-- on products.category_id = Categories.categories_id
-- order by product_id;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- FULL OUTER JOIN Keyword
-- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
-- Tip: FULL OUTER JOIN and FULL JOIN are the same.

-- select product_id, product_name, categories_name
-- from Categories
-- right join products 
-- on products.category_id = Categories.categories_id
-- Union 
-- select product_id, product_name, categories_name
-- from Categories
-- left join products 
-- on products.category_id = Categories.categories_id
-- order by product_id;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- Natural Join
-- select product_name, product_id, categories.categories_name, categories.categories_id 
-- from products natural join categories;


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- Equi Join

-- select product_name, product_id, categories.categories_name, categories.categories_id 
-- from products, categories
-- where products.category_id  = categories.categories_id;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 