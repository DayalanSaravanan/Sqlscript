/* File: datadef.sql
 * Name: D.Saravanan
 * Date: 28/09/2020
 * Script of Data Definition Language commands
*/
	
# create and use database with name assignmet
create database assignment;
show databases;
use assignment;

# create table with name School
create table School(Roll_Id smallint unsigned auto_increment primary key,
	Last_Name varchar(15), 
	First_Name varchar(15),
	Age tinyint unsigned,
	Gender enum('Male', 'Female'),
	Date_Birth date);

show tables;
describe School;
select * from School;

# insert 5 records in that table
insert into School(Last_Name, First_Name, Age, Gender, Date_Birth)
	values('Wallace', 'Christopher', 12, 'Male', '2008-10-12'),
	('Scully', 'Steven', 10, 'Male', '2010-09-17'),
	('Welker', 'Kristen', 11, 'Female', '2009-07-01'),
	('Page', 'Susan', 12, 'Female', '2008-02-12'),
	('Cooper', 'Anderson', 13, 'Male', '2007-06-03');

select * from School;

# rename Date_Birth to Date_of_Birth
alter table School change Date_Birth Date_of_Birth date;

select * from School;

# add column Date_of_Admission into the table School
alter table School add column Date_of_Admission date;

select * from School;

# set and update column Date_of_Admission
update School set Date_of_Admission = '2019-07-25' where 1 = 1;

select * from School;

# truncate table School
truncate table School;

show tables;
select * from School;

# drop table School
drop table School;

show tables;
