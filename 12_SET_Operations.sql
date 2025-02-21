

-- use priyansh;

-- create table Prs(
--  id int unsigned,
--  name varchar(100)
-- );

-- insert into Prs
-- (id, name)
-- values
-- (1, 'Priyansh'),
-- (2, 'Shubham')

-- create table Sng(
--  id int unsigned,
--  name varchar(100)
-- );

-- insert into Sng
-- (id, name)
-- values
-- (2, 'Shubham'),
-- (3, 'Riya')

-- -- -- UNION Operations
-- -- -- UNION is used to combine the results of two or more SELECT statements. However it will eliminate duplicate rows from its resultset. In case of union, number of columns and datatype must be same in both the tables, on which UNION operation is being applied.
-- select * from prs
-- union
-- select * from sng;

-- -- -- UNION ALL Operations
-- -- -- This operation is similar to Union. But it also shows the duplicate rows.
-- select * from Prs
-- union all
-- select * from SNg;

-- -- -- Intersect Operations
-- -- -- Intersect operation is used to combine two SELECT statements, but it only retuns the records which are common from both SELECT statements. In case of Intersect the number of columns and datatype must be same.
-- -- MySQL does not support INTERSECT operator.
-- select * from Prs
-- intersect
-- select * from sng;

-- -- -- Intersect Operations
-- -- -- INTERSECT ALL takes common rows from multiple tables and keeps duplicates as well
-- select * from Prs
-- intersect all
-- select * from sng;

-- -- -- MINUS Operator
-- -- -- The Minus operation combines results of two SELECT statements and return only those in the final result, which belongs to the first set of the result.
-- select * from prs
-- minus
-- select *  from sng;