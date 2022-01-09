create database payroll_service1

use payroll_service1

-- UC2
create table employee_payroll(
Id int primary key identity,
name varchar(50),
phone varchar(15),
address varchar(100),
department varchar(20),
gender varchar(1),
basic_pay money,
deduction money,
taxable_pay money,
tax money,
netpay money,
startDate date
);

--UC3

insert into employee_payroll (name, basic_pay, startDate) values
('Bill', 1000000.00,'2018-01-03'),
('Terissa', 2000000.00,'2019-11-13'),
('Charlie', 3000000.00,'2020-05-21');

--UC4

select * from employee_payroll

--UC5

select basic_pay from employee_payroll where name = 'Bill';

select * from employee_payroll
WHERE startDate BETWEEN CAST('2018-01-01' as date) AND getdate();

--UC6

--alter table employee_payroll add gender char(1) after department;

update employee_payroll set gender = 'F' where name = 'Terissa';
update employee_payroll set gender = 'M' where name = 'Bill'or name = 'Charlie';

--UC7

select avg (basic_pay) from employee_payroll where gender = 'M' group by gender;

select avg (basic_pay) from employee_payroll group by gender;

select gender, avg (basic_pay) from employee_payroll group by gender;

select gender, count (name) from employee_payroll group by gender;

select gender, sum (basic_pay) from employee_payroll group by gender;

--UC8

--alter table employee_payroll add phone varchar(15) after name;
--alter table employee_payroll add address varchar(100) after phone;
--alter table employee_payroll add department varchar(20) after address;

