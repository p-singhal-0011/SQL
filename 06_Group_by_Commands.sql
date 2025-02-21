-- use priyansh;

-- -- Group by
-- select count(id),name from class_student group by name;
-- select count(id),age from class_student group by age;
-- select count(id),id from class_student group by id;

-- -- order by
-- select count(id), name from class_student group by name order by count(id) desc;
-- select count(id), age from class_student group by age order by count(id) desc;

-- -- having by
-- select count(id), name from class_student group by name having count(id)>2;