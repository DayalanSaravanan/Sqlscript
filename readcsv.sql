/* File: readcsv.sql
 * Name: D.Saravanan
 * Date: 11/10/2020
 * Script to import data from csv file
*/

load data infile '/var/lib/mysql-files/iris.csv'
	into table Iris
	fields terminated by ','
	enclosed by '"'
	lines terminated by '\n'
	ignore 1 rows;
