Create database payroll_service;
go
use payroll_service
go
create Table Employee_Payroll(
ID INT identity(1,1) not null Primary key,
First_Name varchar(50),
Last_Name varchar(50),
Salary bigint,
StartDate Datetime
);
select * from Employee_Payroll;
insert into Employee_Payroll(First_Name,Last_Name,Salary,StartDate) values 
            ('Akshata','Panchal',15000,'2022-04-19'),
			('Aditya','Shinde',18000,'2022-04-19'),
			('Vishal','Gangane',20000,'2022-04-19'),
			('Vaishnavi','Sabale',17000,'2022-04-19'),
			('Supriya','Kadam',22000,'2022-04-19');
