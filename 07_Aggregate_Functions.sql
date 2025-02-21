-- -- -- Aggregate functions: 
-- -- -- These functions are used to do operations from the values of the column and a single value is returned. 
-- -- -- AVG()
-- -- -- COUNT()
-- -- -- FIRST()
-- -- -- LAST()
-- -- -- MAX()
-- -- -- MIN()
-- -- -- SUM()
-- -- -- -----------------------
-- use priyansh; 

-- create table class_student
-- (
-- 	id int unsigned,
--     name varchar(100),
--     marks int,
--     age int unsigned
-- );

-- insert into class_student 
-- (id, name, Marks, age)
-- values
-- (1, "Aditya", "89", "23"),
-- (2, "Ram", "96", "22"),
-- (3, "Ray", "90", "24"),
-- (4, "Rishu", "87", "23")

-- -- -- AVG() Function: It returns the average value after calculating from values in a numeric column. 
-- SELECT AVG(Marks) FROM class_student;
-- SELECT AVG(AGE) AS AvgAge FROM class_student; 

-- -- -- COUNT() Function: It is used to count the number of rows returned in a SELECT statement. It can’t be used in MS ACCESS. 
-- SELECT COUNT(Marks) FROM class_student;
-- SELECT COUNT(id) AS NumStudents FROM class_student;

-- -- -- FIRST() Function: The FIRST() function returns the first value of the selected column. 


-- -- -- LAST() Function: The LAST() function returns the last value of the selected column. It can be used only in MS ACCESS. 

-- -- -- MAX() Function: The MAX() function returns the maximum value of the selected column.
-- SELECT MAX(marks) FROM class_student;

-- -- -- MIN() Function: The MIN() function returns the minimum value of the selected column.
-- SELECT min(marks) FROM class_student;

-- -- -- SUM() Function: The SUM() function returns the sum of all the values of the selected column.
-- SELECT SUM(marks) FROM class_student;
