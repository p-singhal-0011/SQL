-- use to create a new database
create database priyansh;

-- use to tell which database you have to be used 
use priyansh;

-- use to create a new table 
create table users
(
	id int unsigned,
    name varchar(100),
    email varchar(250),
    password varchar(100),
    contact varchar(15),
    address text,
    dob date,
    gender enum("M","F","O"),
    status boolean
)
-- use priyansh;
-- use to insert only one row 
insert into users 
(id, name, email, password, contact, address, dob, gender, status)
values
(1, "Kashish", "kannu@gmail.com", "1234", "4812786523", "Jodhpur, Rajasthan", "2003-02-01", "F", 1)

-- use to insert multiple rows
insert into users 
(id, name, email, password, contact, address, dob, gender, status)
values
(2, "John", "john@gmail.com", "1334", "4568526523", "Bulandshahr, UttarPradesh", "2004-01-21", "M", 1),
(3, "Jenny", "jenny@gmail.com", "4444", "9562426523", "Meerut, UttarPradesh", "2005-03-21", "F", 1),
(4, "Anjali", "anjali@gmail.com", "4321", "9874561233", "Haridwar, Uttarakhand", "2002-10-21", "F", 1)

-- use to insert all column values 
insert into users 
values
(5, "Harshita", "harshita@gmail.com", "1334", "7305927861", "Agra, UttarPradesh", "2003-11-11", "F", 1),
(6, "Juliet", "juliet@gmail.com", "2222", "8616529632", "Meerut, UttarPradesh", "2005-03-21", "M", 1),
(7, "Harshit", "harshit@gmail.com", "4321", "9874561233", "Agra, Uttarakhand", "2002-10-21", "M", 1)

use priyansh;
-- select some columns
select id, name, email from users;

-- use to represent column name from some another name without changing them intirely
select id, name as "Student name", contact as "Contact" from users;
-- select all columns
select * from users
-- where clause use to filter records
select *from users where age = 20
select *from users where age > 20
select *from users where age < 20
select *from users where age != 20
select *from users where age < 50
