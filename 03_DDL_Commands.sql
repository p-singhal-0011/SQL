-- Data Definition Language
-- -- use to show database
-- show databases


-- -- -- create command
-- -- use to create a new database
-- create database priyansh;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- use to tell which database you have to be used 
-- use priyansh;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- create table students
-- (
-- 	id int unsigned,
--     name varchar(100),
--     email varchar(250),
--     address text,
--     age int,
--     dob date
-- );

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- use to insert only one row 
-- insert into students 
-- (id, name, email, address, age, dob)
-- values
-- (1, "Kashish", "kannu@gmail.com", "Jodhpur, Rajasthan", "19", "2003-02-01")

-- use to insert multiple rows
-- insert into students 
-- (id, name, email, address, age, dob)
-- values
-- (2, "John", "john@gmail.com", "Bulandshahr, UttarPradesh", "18", "2004-01-21"),
-- (3, "Jenny", "jenny@gmail.com", "Meerut, UttarPradesh", "20", "2005-03-21"),
-- (4, "Anjali", "anjali@gmail.com", "Haridwar, Uttarakhand", "19", "2002-10-21")

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- alter command
-- -- use to add a column to an existing table.
-- alter table students add fathers_name varchar(100);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- drop command
-- -- use to delete a column in existing table or even to delete an existing table.
-- alter table students drop fathers_name ;
-- drop table xyz ;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- truncate command
-- create table xyz
-- (
-- 	id int unsigned,
--     name varchar(100),
--     email varchar(250),
--     address text,
--     age int,
--     dob date
-- );
-- insert into xyz 
-- (id, name, email, address, age, dob)
-- values
-- (1, "Kashish", "kannu@gmail.com", "Jodhpur, Rajasthan", "19", "2003-02-01"),
-- (2, "John", "john@gmail.com", "Bulandshahr, UttarPradesh", "18", "2004-01-21"),
-- (3, "Jenny", "jenny@gmail.com", "Meerut, UttarPradesh", "20", "2005-03-21"),
-- (4, "Anjali", "anjali@gmail.com", "Haridwar, Uttarakhand", "19", "2002-10-21")

-- -- used to remove all rows from the table, but the structure of the table still exists
-- -- to remove an existing table.
-- truncate table xyz;


-- -- -- rename command
-- rename table xyz to abc