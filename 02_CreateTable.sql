create table students
(
	id int not null unique,
    name varchar(100) not null,
    email varchar(150) not null unique,
    age tinyint check (age >= 18),
    status boolean default 1
)
insert into students
(id, name, email, age)
values
(3, "Ram", "ram@gmail.com", 29),
(4, "Raju", "raju@gmail.com", 49),
(5, "Karan", "karan@gmail.com", 39)

select *from students where age = 20
select *from students where age > 20
select *from students where age < 20
select *from students where age != 20
select *from students where age < 50

-- where clause use to filter records
where age >= 18 and age <= 25 and city 
select * from students
where age >= 18 and age <= 25 and city = "Agra" and gender = "M"

insert into students 
values(6, "Ramesh", "ramesh@gmail.com", 19, "Agra", "M", 1)

select * from students
where city = "Agra" or city = "Jodhpur"

select * from students
where not city = "Agra" and not city = "Jodhpur"