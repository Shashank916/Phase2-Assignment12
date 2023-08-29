create database JoinMVCDb
use JoinMVCDb

create table Depts
(DId int primary key,
DName nvarchar(50) not null unique)

insert into Depts values (1,'App-Development'),
(2,'Web-Development'),
(3,'HR'),
(4,'Account'),
(5,'Agile-Scrum')
select * from Depts order by DId

create table Emps
(Id int primary  key,
Fname nvarchar(50),
Lname nvarchar(50),
Designation nvarchar(50),
Salary float,
DId int foreign key references Depts)

insert into Emps values (1,'Ajay', 'Kumar','Developer',87000.92,2)
insert into Emps values (2,'Vijay', 'Vats','Developer',+90000.50,1)
insert into Emps values (3,'Kishi', 'Garg','Manager',68000.45,1)
insert into Emps values (9,'Kunal', 'Kiran','Manager',74000.69,2)

insert into Emps(Id,Fname,Lname,Salary) values (5,'Raj', 'Kumar',98000.00)
insert into Emps values (10,'Deep', 'Goyal','HRD',50000.20,2)
insert into Emps(Id,Fname,Lname,Designation,Salary) values (13,'Naina', 'Viz','Tester',69000.69)
insert into Emps values (15,'Arsh', 'K.','Developer',72000.72,3)

select * from Emps
select * from Depts