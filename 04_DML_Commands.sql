-- use priyansh;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- select commmand // DQL
-- -- select clause
-- used to get data out of the database
-- select *from abc;
-- -- where clause
-- -- also works within the conditions
-- select *from abc where due_fees <= 20000;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- insert command
-- -- use to insert only one row
-- insert into abc 
-- (id, name, email, address, age, dob)
-- values
-- (1, "raju", "raju@gmail.com", "Jodhpur, Rajasthan", "19", "2003-02-01")

-- -- use to insert multiple rows
-- insert into abc 
-- (id, name, email, address, age, dob)
-- values
-- (2, "Johny", "johny@gmail.com", "Meerut, UttarPradesh", "18", "2004-01-21"),
-- (3, "Joy", "joy@gmail.com", "Bulandshahr, UttarPradesh", "20", "2005-03-21"),
-- (4, "Akku", "akku@gmail.com", "Haridwar, Uttarakhand", "19", "2002-10-21")

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- update command
-- -- used to alter/change existing table records. Within a table, it modifies data from one or more records. This command is used to alter the data which is already present in a table.
-- update abc 
-- set address="Allahabad, UttarPradesh"
-- where age="1";

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- -- -- delete command
-- -- deletes all archives from a table. This command is used to erase some or all of the previous table’s records. If we do not specify the ‘WHERE’ condition then all the rows would be erased or deleted.
-- delete from abc where name = 'raju';
-- update abc 
-- set id = "2"
-- where id="3";
-- update abc 
-- set id = "3"
-- where id="4";