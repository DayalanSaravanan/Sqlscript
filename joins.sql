/* File: joins.sql
 * Name: D.Saravanan
 * Date: 28/09/2020
 * Script to apply inner/left/right/cross joins, group by, having clause
*/

use assignment;

create table Departments(Dept_Id varchar(5),
	Dept_Name set('Finance', 'IT', 'Marketing', 'Sales', 'Tax'),
	Location set('Atlanta', 'Boston', 'Chicago'),
	primary key(Dept_Id));

create table Employees(Emp_Id smallint unsigned auto_increment,
	Last_Name varchar(15) not null,
	First_Name varchar(15) not null,
	Gender set('Male', 'Female'),
	Dept_Id varchar(5) not null,
	Year_Join year,
	Salary integer unsigned not null,
	primary key(Emp_Id),
	foreign key(Dept_Id) references Departments(Dept_Id));

show tables;

describe Departments;

insert into Departments values
	('FIN34', 'Finance', 'Chicago'),
	('ITN47', 'IT', 'Atlanta'),
	('MKN39', 'Marketing', 'Boston'),
	('SLN52', 'Sales', 'Boston'),
	('TXN41', 'Tax', 'Chicago');

describe Employees;

insert into Employees(Last_Name, First_Name, Gender, Dept_Id, Year_Join, Salary) values
	('Brown', 'William', 'Male', 'FIN34', 2008, 83000),
	('Kenneth', 'Andrew', 'Male', 'SLN52', 2010, 62500),
	('Ralph', 'Larry', 'Male', 'ITN47', 2011, 95000),
	('Bryan', 'Kayla', 'Female', 'MKN39', 2013, 59300),
	('Gerald', 'Ethan', 'Male', 'TXN41', 2013, 71000),
	('Nathan', 'Ashley', 'Female', 'SLN52', 2014, 62500),
	('Gregory', 'Linda', 'Female', 'ITN47', 2015, 95000),
	('Richard', 'Henry', 'Male', 'MKN39', 2016, 59300),
	('Eugene', 'Ann', 'Female', 'TXN41', 2017, 71000);

select * from Departments;

select * from Employees;

# inner join
select Emp_Id, First_Name, Dept_Name, Year_Join, Salary, Location
	from Employees inner join Departments
	on Employees.Dept_Id = Departments.Dept_Id;

# left join
select Emp_Id, First_Name, Dept_Name, Year_Join, Salary, Location
	from Employees left join Departments
	on Employees.Dept_Id = Departments.Dept_Id;

# right join
select Emp_Id, First_Name, Dept_Name, Year_Join, Salary, Location
	from Employees right join Departments
	on Employees.Dept_Id = Departments.Dept_Id;

# cross join
select Emp_Id, First_Name, Dept_Name, Year_Join, Salary, Location
	from Employees cross join Departments;

# group by
select max(Emp_Id) as Max_Emp_Id, max(Salary) as Max_Salary from Employees group by Dept_Id;
select max(Emp_Id) as Max_Emp_Id, Dept_Id from Employees group by Dept_Id;
select Gender, count(Emp_Id) as Count from Employees group by Gender;
select Location, count(Dept_Name) as Count from Departments group by Location;
select Dept_Id, sum(Salary) as Sum_Pay from Employees where Salary>80000 group by Dept_Id;

# having clause
select max(Emp_Id) as Max_Emp_Id, max(Salary) as Max_Salary from Employees where Gender='Female' group by Dept_Id having max(Emp_Id) > 3005;
select Emp_Id, First_Name, Year_Join from Employees group by Emp_Id having Year_Join > 2014;
select Emp_Id, First_Name, Year_Join from Employees group by Emp_Id having Year_Join > 2014 order by First_Name asc;
select Emp_Id, First_Name, Dept_Id, Year_Join from Employees group by Emp_Id having Dept_Id = 'ITN47';
select Dept_Id, Dept_Name, Location from Departments where Dept_Id != 'MKN39' having Location != 'Boston' order by Location asc;
