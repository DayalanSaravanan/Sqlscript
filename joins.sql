use assignment;

create table Departments(Dept_Id varchar(5),
	Dept_Name set('Finance', 'IT', 'Marketing', 'Sales', 'Tax'),
	Location set('Atlanta', 'Boston', 'Chicago'),
	primary key(Dept_Id));
