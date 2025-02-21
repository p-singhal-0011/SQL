-- there are some errors in it  
-- remember it






-- show databases;

-- use priyansh;

-- -- -- Not NULL command
-- -- If we specify a field in a table to be NOT NULL. Then the field will never accept null value. That is, you will be not allowed to insert a new row in the table without specifying any value to this field. 
-- create table abcd
-- (
-- 	id int not null,
--     name varchar(100) not null,
--     address varchar(20)
-- );

-- -- -- UNIQUE command
-- -- -- This constraint helps to uniquely identify each row in the table. i.e. for a particular column, all the rows should have unique values. We can have more than one UNIQUE columns in a table. 
-- create table abcde
-- (
-- 	id int not null unique,
--     name varchar(100) not null,
--     address varchar(20)
-- );

-- -- -- Primary Key
-- -- -- Primary Key is a field which uniquely identifies each row in the table. If a field in a table as primary key, then the field will not be able to contain NULL values as well as all the rows should have unique values for this field. So, in other words we can say that this is combination of NOT NULL and UNIQUE constraints. 
-- -- -- A table can have only one field as primary key. Below query will create a table named Student and specifies the field ID as primary key. 
-- create table abcdef
-- (
-- 	id int not null unique,
--     name varchar(100) not null,
--     address varchar(20),
--     primary key (id)
-- );

-- -- -- Foreign Key
-- -- -- Foreign Key is a field in a table which uniquely identifies each row of a another table. That is, this field points to primary key of another table. This usually creates a kind of link between the tables. 
-- CREATE TABLE Orders
-- (
-- O_ID int NOT NULL,
-- ORDER_NO int NOT NULL,
-- C_ID int,
-- PRIMARY KEY (O_ID),
-- FOREIGN KEY (C_ID) REFERENCES Customers(C_ID)
-- )

-- -- -- Check Command
-- -- -- Check Constraint is used to specify a predicate that every tuple must satisfy in a given relation. It limits the values that a column can hold in a relation.

T-- -- he predicate in check constraint can hold a sub query.
-- -- Check constraint defined on an attribute restricts the range of values for that attribute.
-- -- If the value being added to an attribute of a tuple violates the check constraint, the check constraint evaluates to false and the corresponding update is aborted.
-- -- Check constraint is generally specified with the CREATE TABLE command in SQL.

-- CREATE TABLE student(
--         StudentID INT NOT NULL,
--         Name VARCHAR(30) NOT NULL,
--         Age INT NOT NULL,
--         GENDER VARCHAR(9),
--         PRIMARY KEY(ID),
--         check(Age >= 17)
--         );
--  -- -- Note: The check constraint in the above SQL command restricts the GENDER to belong to only the categories specified. If a new tuple is added or an existing tuple in the relation is updated with a GENDER that doesn’t belong to any of the three categories mentioned, then the corresponding database update is aborted.
-- 
-- -- -- default command
-- This constraint is used to provide a default value for the fields. That is, if at the time of entering new records in the table if the user does not specify any value for these fields then the default value will be assigned to them. 
-- CREATE TABLE student(
--         StudentID INT NOT NULL,
--         Name VARCHAR(30) NOT NULL,
--         Age INT default 18,
--         GENDER VARCHAR(9),
--         PRIMARY KEY(ID)
--         );
