use priyansh;

create view DetailsView as
select name, address
from students
where age>18;