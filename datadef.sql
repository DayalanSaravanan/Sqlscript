/* File: datadef.sql
 * Name: D.Saravanan
 * Date: 28/09/2020
 * Script of Data Definition Language commands
*/
	
# create and use database with name assignmet
create database assignment;
show databases;
use assignment;

# create table with name school
create table school(Roll_Id smallint unsigned auto_increment primary key,
	Last_Name varchar(15), 
	First_Name varchar(15),
	Age tinyint unsigned,
	Gender enum('Male', 'Female'),
	Date_Birth date);

show tables;
describe school;
select * from school;

# insert 5 records in that table
insert into school(Last_Name, First_Name, Age, Gender, Date_Birth) values('Wallace', 'Christopher', 12, 'Male', '2008-10-12');
insert into school(Last_Name, First_Name, Age, Gender, Date_Birth) values('Scully', 'Steven', 10, 'Male', '2010-09-17');
insert into school(Last_Name, First_Name, Age, Gender, Date_Birth) values('Welker', 'Kristen', 11, 'Female', '2009-07-01');
insert into school(Last_Name, First_Name, Age, Gender, Date_Birth) values('Page', 'Susan', 12, 'Female', '2008-02-12');
insert into school(Last_Name, First_Name, Age, Gender, Date_Birth) values('Cooper', 'Anderson', 13, 'Male', '2007-06-03');

select * from school;

# rename Date_Birth to Date_of_Birth
alter table school change Date_Birth Date_of_Birth;

select * from school;

# add column Date_of_Admission into the table school
alter table school add column Date_of_Admission date;

select * from school;

# set and update column Date_of_Admission
update school set Date_of_Admission = '2019-07-25' where 1 = 1;

select * from school;

# truncate table school
truncate table school;

select * from school;

# drop table school
drop table school;

show tables;
