CREATE TABLE students (
  id int PRIMARY KEY  ,
  name varchar(20) NOT NULL,
  gender varchar(10) NOT NULL,
  phone number Not Null Unique
);
DESCRIBE students;
drop table students;
alter table students add deptName varchar(5);
alter table students modify deptName varchar(15);
alter table students modify deptName varchar(10) NOT NULL;

INSERT INTO students VALUES (1, 'ObiWan', 'M',09876677);
INSERT INTO students VALUES (2, 'Skywalker', 'M',2344344);
INSERT INTO students VALUES(3,'Ganesh','M',2434344);
INSERT INTO students VALUES(4,'Pandi','M',343443);
INSERT INTO students VALUES(5,'Ilakiya','F',344444);

update students set deptName='Devlepment'  WHERE ID between 1 and 5;
update students set;
SELECT * from students;
SELECT * FROM students WHERE gender = 'F';
select sysdate+30 from dual;
select to_Char(SYSTIMESTAMP,'HH:MI') from dual;
select to_char(SYSTIMESTAMP,'HH-MINUITS') from dual;
CREATE TABLE emp(
id int NOT NULL,
name varchar(20) NOT NULL,
phoneNumber numeric,
gender char(6),
PRIMARY KEY(id)
);

INSERT INTO emp VALUES (1,'Ganesh',8092332332,'Male');
INSERT INTO emp VALUES (2,'Pandi',987654323,'Male');
INSERT INTO emp VALUES (3,'Ilakiya',8765123464,'Female');

SELECT * from emp;
update emp set Name='Ganesh Padni', phoneNumber='0834989583' where id=1;
select * from students;
update emp set phoneNumber=4834364546 where name='Ganesh';
create table students_copy as select id,name,gender from students;
select * from students_copy;
SELECT * from emp;
select * from students where   name BETWEEN  'A%' and 'P%';
desc students
select * from students where name like 'G%' or name like 'O%' or name like 'P%'; 

SELECT emp.name AS Employe_name,students.name as student_name, emp.phoneNumber as Mobile, students.deptname as DeptName 
from emp join students on emp.name=students.name;

Select emp.name , students.name,students.deptName from emp join students on emp.id=students.id;
show tables;


create table Std(
id int,
name varchar(4000),
age number
);

alter table Std modify id number;
drop table std;

select to_Char(SYSTIMESTAMP,'HH:MI') as time from dual;
create table product(
product_id int NOT NULL,
product_name varchar(40),
description varchar(100),
company_name varchar(20) default 'chanisys'
);


drop table product;

describe product;

insert into product values(2,'philey','using for nothing','');
insert into product (product_id,product_name,description) values(1,'phileo','using for absultly nothing');
insert into product values(3,'gilu','nothing for use','chies');
TRUNCATE table product;
select * from product;
ALTER table product add Exp_date date;
alter table product modify delete Exp_date;
update product set company_name='chos' where product_id=2;
update product set Exp_date='19-NOV-20' where product_id BETWEEN 1 and 20;
delete from product where product_id=3;
commit;
rollback update11;
insert into product (product_id,Exp_date) values  (12,'22-nov-61');
alter table product ;
rename column summa to product;
rename product1 TO product;
select * from products;
delete from product where product_id=2;
savepoint update13;


create table Stud(
std_id int primary key,
std_name varchar(30),
std_dept varchar(10),
std_mail varchar(20),
std_phn number,
salary number
);
DESCRIBE stud;
alter table Stud add nationality varchar(20);
drop table Stud;
insert into Stud values(1,'Ganesh','Chem','ganesh@gamil.com',80989722,45000);
insert into Stud values(2,'Pandi','Chem','pandi@gamil.com',897657223,34500);
insert into Stud values(3,'Obiwan','IT','obiwan@gamil.com',85425672,5000);
insert into Stud values(4,'Skywalker','MECH','sky@gamil.com',65345678,39999);
insert into Stud values(5,'peter','CSE','peter@gamil.com',null,null);
select * from Stud;
update stud set nationality='India';

select * from stud;

create table admin(admin_id int GENERATED always as identity(start with 1 increment by 1) ,
name varchar2(30),mail varchar2(30),login_time TIMESTAMP default current_timestamp);
select * from admin;

select * from stud where std_phn is null;
select max(salary),min(salary),avg(salary),count(salary),sum(salary) from stud;

select std_dept, max(salary),min(salary),avg(salary),count(salary),sum(salary) from stud group by std_dept;

select std_name, std_dept,NVL(salary,'25000') from stud;

select std_name, std_dept,NVL2(salary,salary*5,'25000') from stud;

select round(sysdate - to_date('2021/7/04','yyyy/mm/dd')) as days from dual;

select std_name, Case std_dept when 'Chem' Then 30*salary
                                when 'IT' Then 20*salary
                                when 'MECH' then 10*salary 
                                else 1.5*salary End "Extra Salary"
                                from stud;
select std_name, coalesce(salary,salary*10) from stud;

Select * from stud;
select std_dept, max(salary),min(salary),avg(salary),count(salary),sum(salary) from stud group by std_dept ;

select max(salary),min(salary),avg(salary),count(salary),sum(salary) from stud group by std_dept having max(salary)>30000;

select initcap(std_name),lower(std_name),upper(std_name),length(std_name) as NumberOFLEtter from stud;

select lpad(std_name,10,'*'), from stud;

select std_id, std_name from Stud where salary=45000;

select sysdate from dual;

select round(Months_between(sysdate,'04-07-2021'),2) as  months from dual;

select To_char(sysdate,'DAY/DD/MM/MONTH/YEAR/YYYY') as Months from dual;

select NVL(null,'N/A') from dual;
select nvl(salary,20000) from stud;
select NVL2(salary,salary+2,21000) from stud ;
select nullif(23000,40000) from dual;

select to_char(sysdate+2,'yyyy-dd-mm') from dual;
select std_id || std_name from Stud ;
select to_char(10) from dual;

create table Library(
lapId int,
bookname varchar(20),
aname varchar(20)
);
rollback;
DESCRIBE library;
insert into Library values(1,'Harry Potter','JK Rowlings');
select * from library;


--------------------------------------------------------------------------------------------------------------------------------
create table PROGRAMMER
(
  PNAME  VARCHAR2(20),
  DOB    DATE,
  DOJ    DATE,
  SEX    VARCHAR2(1),
  PROF1  VARCHAR2(10),
  PROF2  VARCHAR2(10),
  SALARY NUMBER
);
select * from programmer;
insert into programmer values('ANAND','21-May-66','21-Apr-92','m','pascal','BASIC',3200);
insert into programmer values('ramesh',	'02-Jul-64','13-Nov-90','m','clipper','cobol',2800);
insert into programmer values('kamala','31-Jul-68','21-Apr-90','f','cobol','dbase',3000);
insert into programmer values('mary','24-Jul-70','01-Feb-91','f','c++','oracle',4500);
insert into programmer values('nelson','11-Sep-65','11-Oct-89','m','cobol','dbase',2500);
insert into programmer values('jayakumar','10-Nov-65','21-Apr-90','m','pascal','clipper',2800);
insert into programmer values('saku','31-Aug-65','21-Apr-92','m','assembly','c',3000);
insert into programmer values('rebecca','01-Jan-67','01-Dec-90','f','basic','cobol',2500);
insert into programmer values('revathi','02-Dec-69','02-Jan-92','f','pascal','assembly',3600);
insert into programmer values('vijaya','14-Dec-69','02-May-92','f','foxpro','c',3500);
insert into programmer values('savitha','19-Apr-70','20-Apr-93','f''c','assembly',3600);
insert into programmer values('ravi','11-Sep-67','11-Oct-91','m','oracle','c',4500);
insert into programmer values('nelson','11-Sep-65','11-Oct-89','m','cobol','c++',3000);
insert into programmer values('Smith', '28-Feb-65', '11-Oct-89', 'm', 'cobol','c++', 3000);

create table SOFTWARE
(
  PNAME  VARCHAR2(20),
  TITLE  VARCHAR2(30),
  DEV_IN VARCHAR2(10),
  SCOST  NUMBER,
  DCOST  NUMBER,
  SID    NUMBER
);

select systime from dual;
insert into software values('ANAND','PARACHUTES','BASIC',400,6000,43);
insert into software values('ANAND','VIDEO TITLING PACK','PASCAL',7500,16000,89);
insert into software values('RAMESH','INVENTORY CONTROL SYSTEM','COBOL',3000,3500,0);
insert into software values('KAMALA'	,'PAYROLL PACKAGE',	'DBASE',9000,20000,7);
insert into software values('MARY','FINACIAL ACC S/W','ORACLE',18000,85000,4);
insert into software values('MARY','CODE GENERATION','C',4500,20000,23);
insert into software values('JAYAKUMAR','READ ME' ,'C++',300,1200,84);
insert into software values('SAKU','BOMBS AWAY','ASSEMBLY',750,5000,11);
insert into software values('SAKU','VACCINES','C',1900,3400,21);

select * from software;

CREATE table Studies(
PNAME VARCHAR2(32) not null,
SPLACE VARCHAR2 (20),
COURSE VARCHAR2(20),
CCOST NUMERIC(10)
);
insert into studies VALUES('ANAND','SABARI','PGDCA',4500);
insert into studies VALUES('RAMESH','CSDI','DCA',7200);
insert into studies VALUES('JAYAKUMAR','BITS','MCA',42000);
insert into studies VALUES('KAMALA','PRAGATHI','DCP',5000);
insert into studies VALUES('MARY','SABARI','PGDCA',4500);
insert into studies VALUES('NELSON','PRAGATHI','DAP',6200);
insert into studies VALUES('SAKU','APPLE','HDCP',14000);
insert into studies VALUES('REBECCA','BRILLIAN','DCAP',11000);
insert into studies VALUES('SAVITHA','BDRS','DC',6000);
insert into studies VALUES('REVATHI','SABARI','DAP',5000);
insert into studies VALUES('VIJAYA','BDPS','DCA',48000);
insert into studies VALUES('RAVI','PRAGATHI','DCAP',5200);

describe studies;
select * from studies;
select  DISTINCT(COURSE)
    FROM studies where course='DCAP';
    union all
    select count(COURSE)  FROM studies where course='DCAP';
    
    
--------------------------------------------------------------------------------------------------------------------------------
    

Create table Region
(id int primary key,
name varchar(50)
);

Create table Countries
(id varchar(50) primary key,
name varchar(50),
region_id int,
foreign key(region_id) references region(id)
);

Create table location
(id varchar(50) primary key,
street_address varchar(50),
postal_code varchar(50),
city varchar(50),
state varchar(50),
country_id varchar(50),
foreign key(country_id) references countries(id)
);

Create table department
(id int primary key,
name varchar(50),
location_id varchar(50),
foreign key(location_id) references location(id)
);

Create table employee
(id int primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
phone_number varchar(50),
hire_datet date,
salary int,
date_of_birth date,
department_id int ,
foreign key(department_id) references department(id)
);

Create table manager
(employee_id int,
department_id int,
primary key(employee_id,department_id),
foreign key(employee_id) references employee(id),
foreign key(department_id) references department(id)
);

insert into Region values(1,'Europe');
insert into Region values(2,'Americas');
insert into Region values(3,'Asia');
insert into Region values(4,'Middle east and africa');

insert into Countries values('AR','ARgentina',2);
insert into Countries values('AU','Australia',3);
insert into Countries values('BE','Belgium',1);
insert into Countries values('BR','BRAZIL',2);
insert into Countries values('CA','Canada',2);
insert into Countries values('CH','Switzerland',1);
insert into Countries values('CN','China',3);
insert into Countries values('DE','Germany',1);
insert into Countries values('DK','Denmark',1);
insert into Countries values('EG','Egpty',4);
insert into Countries values('FR','France',1);
insert into Countries values('HK','Hongkong',3);
insert into Countries values('IL','Isreal',4);
insert into Countries values('IN','India',3);
insert into Countries values('IT','Italy',1);
insert into Countries values('JP','Japan',3);
insert into Countries values('KW','Kuwait',4);
insert into Countries values('Mx','Mexico',2);
insert into Countries values('NG','Nigeria',4);
insert into Countries values('NL','Netherlands',1);
insert into Countries values('SG','Singapore',3);
insert into Countries values('UK','United Kingdom',1);
insert into Countries values('US','United States of America',2);
insert into Countries values('ZM','ZAMBIA',4);
insert into Countries values('zw','Zimbabwe',4);

insert into Countries values('OX','Oxford',2);
insert into Countries values('EU','Europe',1);

SET FOREIGN_KEY_CHECKS=0;

insert into location values(1000, '1297 via cola di rie',989, 'Roma','Roma','IT');
insert into location values(1100,'93091 Calle della testa', 10934,'Venice','venice','IT');
insert into location values(1200,'2017 ShinJUKU-KU',1689,'Tokyo','Tokyo prefecture','JP');
insert into location values(1300,'9450 Kamya-Cho',6823,'Hiroshima','hiroshi','JP');
insert into location values(1400,'2014 Jabberwocky RD', 26192, 'South lake','Texas','US');
insert into location values(1500,'2011 Interiors BLVD',99236,'South san Francisco','California','US');
insert into location values(1600,'2007 Zagora ST',50090,'South bruncswick','New Jersey','US');
insert into location values(1700,'2004 Charade Rd',98199,'Seattle','washington','US');
insert into location values(1800,'147 Spadna Ave','MSV 2L7','Toronto','Ontario','CA');
insert into location values(1900,'6092-BoXwood ST','YSW 9T2','Whitehorse','Yukon','CA');
insert into location values(2000,'40-5-12 Laogianggen',190518,'Beijing','Beijing','CN');
insert into location values(2100, '1298 VILEPARLE ed',490231,'BOMBAY','Maharasthra','IN');
insert into location values(2200,'12-98 Victoria Street',2901,'Sydney','New South wales','AU');
insert into location values(2300,'198 Clementi North',540198,'Singapore','Singapore','SG');
insert into location values(2400,'B204 Arthur ST',2345,'London','LOndon','UK');

insert into location values(2500,'Magdalen Center','The Oxford','OX9 9ZB','Oxford','OX');

insert into location values(2600,'9702 Chester Road',9629850293,'Stretford','Manchester','UK');
insert into location values(2700,'Schwanthalerstr, 7301',80925,'Munich','Bavaria','DE');
insert into location values(2800,'RUA FREI Caneca 1360','01307-002','SAO Paulo','SAO Paulo','BR');
insert into location values(2900,'20 RUE DES Corps-Saints',1730,'Geneva','Geneve','CH');
insert into location values(3000,'MURTENSTRASSE 921',3095,'BERN','BE','CH');
insert into location values(3100,'PIETER BREUGHELSTRAAT B37','3029SK','UTRECHIT','UTRECHIT','NL');

insert into location values(3200,'MARIANO ESCOBEDO 9991',11932,'Mexico city','Distrito federal','EU');
select * from location;
SET FOREIGN_KEY_CHECKS=1;

insert into department values(1,'Accounts',1000);
insert into department values(2,'HR',1600);
insert into department values(3,'Business Development',1800);
insert into department values(4,'IT Support',2400);
insert into department values(5,'IT',3200);

select * from employee;

Insert into employee values(1,'anu','sharma','anu@gmail.com',9864675634,'13-08-2015',20000,'12-01-1994',5);
Insert into employee values(2,'ananthi','sharma','ananthi@gmail.com',8608491910,'03-08-2015',22000,'21-03-1994',3);
Insert into employee values(3,'amarnath','pillai','amarnath@gmail.com',7894589654,'03-07-2004',38000,'12-01-1992',4);
Insert into employee values(4,'clinton','pritheev','clinton@gmail.com',7708480901,'01-06-2015',23000,'05-09-1994',2);
Insert into employee values(5,'collin','paul','collin@gmail.com',9842524655,'02-06-2014',30500,'26-12-1993',1);
Insert into employee values(6, 'haritha', 'mohan', 'haritha@gmail.com', '7710589123', '22-07-2014', '41000', '12-06-1993', 4);
Insert into employee values (7, 'shrihari', 'pillai', 'shrihari@gmail.com', '9842512456', '01-07-2015', '21000', '01-05-1994', 2);
Insert into employee values(8, 'jeeva', 'annath', 'jeeva@gmail.com', '8608491912', '02-06-2013','28000', '23-12-1991', 3);
Insert into employee values(9, 'jimesh', 'sharma', 'jimesh@gmail.com', '9634565231', '06-05-2012', '51000', '28-10-1992', 1);
Insert into employee values(10, 'giruba', 'dharan', 'giri@gmail.com', '9842524655', '02-06-2012','24000', '22-11-1990', 2);
Insert into employee values(11, 'karthiga', 'pillai', 'karthi@gmail.com', '8608491510', '04-08-2013', '32000', '26-08-1993', 4);
insert into employee values(12,'MADHU','SHARMA','MADHU@GMAIL.COM',9865478963,'03-06-2014',34000,'01-05-1995',2);
insert into employee values(13,'MADHAN','KUMAR','MADHAN@GMAIL.COM',8608491810,'02-06-2014',25500,'11-01-1993',3);
insert into employee values(14,'MALINI','KENNEDY','MALINI@GMAIL.COM',9965684384,'03-06-2015',27800,'02-01-1994',2);
insert into employee values(15,'PRAVEEN','SINGH','PRAVEEN@GMAIL.COM',9842578910,'02-09-2015',32800,'18-08-1993',4);
insert into employee values(16,'PRABHA','MURUGAN','PRAGHA@GMAIL.COM',9865478963,'03-06-2013',25000,'01-05-1994',2);
insert into employee values(17,'PRADEEP','SINGH','PRADEEP@GMAIL.COM',8604527865,'02-10-2004',76000,'23-12-1981',3);
insert into employee
values(18,'PERICHI','PILLAI','PERICHI@gmail.com',9842578910,'02-09-2015
',31780,'28-08-1993
',4);
insert into employee
values(19,'PUNITHA','SHARMA','PUNITHA@gmail.com',9865478963,'03-06-2008
',44148,'01-05-1984
',2);
insert into employee
values(20,'SIVA','PILLAI','SIVA@gmail.com',9845612458,'02-06-2013
',19348,'23-12-1991
',3);
insert into employee
values(21,'THANA','RATHINAM','PRAGHA@gmail.com',9865478963,'03-06-2013
',14148,'01-05-1994
',2);
insert into employee
values(22,'YOGESH','SINGH','PRADEEP@gmail.com',8604527865,'02-06-2013
',20348,'23-12-1991
',3);
insert into employee
values(23,'VIDYA','SINGH','PERICHI@gmail.com',9842578910,'02-09-2014
',21780,'16-08-1993
',4);
select * from em

Insert into manager(department_id,employee_id) values (4,1);
Insert into manager(department_id,employee_id) values(2,19);
Insert into manager(department_id,employee_id) values(2,4);
Insert into manager(department_id,employee_id) values(3,17);
Insert into manager(department_id,employee_id) values(3,8);
Insert into manager(department_id,employee_id) values(4,15);
Insert into manager(department_id,employee_id) values(5,1);

select * from Region;
select * from countries;
select * from location;


select * from department;
select * from employee;
select * from manager;

--1.Write a query to display the id, entire street address and the first word of the street address of all entries in the location table. Give an alias to the first word as 'first_word'. Display the records sorted in ascending order based on first_word.(Q10) 
select id, street_address , SUBSTR(street_address,1, INSTR(street_address, ' ')-1) as first_word  from location ;

--2.Write a query to display the names of all states belonging to the country Canada. Display the records sorted in ascending order based on state name.(Q 2). 
select * from location where country_id=(select id from countries where name='Canada') order by street_address desc;

--3.Write a query to display the first name of the managers of Accounts department. Display the records sorted in ascending order based on manager name.(Q7).
select  first_name from employee where department_id=(select id from department where name='Accounts') order by first_name asc; 

--4.Write a query to display the country name and the number of departments in each country.Display the records sorted in ascending order based on country name.Give an alias to the number of departments as department_count. Display only the country names that have atleast one department located in it.(Q19).
  select location.id,count(department.name) as Counts
  from location join department on location.id=department.location_id group by location.id, department.name;
  
select  c.name,count(*) as dep_count from countries c,location l,department d where c.id = l.country_id and l.id = d.location_id
group by c.name having count(*) >= 1 order by c.name;

--5.Write a query to find the first name and department name of employees who work in city London. Display the records sorted in ascending order based on first name.(Q14).
select select region.name,count(department.name) as NumberOF_Dept  from region join countries  on region.id=countries.region_id 
join location on countries.id=location.country_id join department on location.id=department.location_id group by department.location_id,region.name order  by region.name;
 first_name , name from employee join department on employee.department_id=department.id
join location on department.location_id=(select id from location where city='London') order by first_name;

select initcap(e.first_name) , d.name 
from employee e, department d, location l
where (e.department_id=d.id) and (d.location_id=l.id) and l.city='London'
order by e.first_name;




--6.Write a query to display the names of departments that have multiple managers. Display the records sorted in ascending order based on department name.(Q16). 
select department.name from department join manager on department.id=manager.department_id group by department.name having count(department.id)>1;

--7.Write a query to display the department name and the number of managers in the department. Display the records sorted in ascending order based on department name. Give an alias to the number of managers as manager_count.(Q15).
select department.name ,count(manager.department_id) as Number_of_Mangers from department join manager on department.id=manager.department_id group by manager.department_id,department.name ;

--8.Write a query to find the addresses (department name, location id as id , street_address, city, state_province, country_name) of all the departments. Display the records sorted in ascending order based on department name.(Q13)
select department.name , location.id, location.street_address, location.city, location.state,location.city from location join department on location.id=department.location_id;

--9.Write a query to display the names of all countries belonging to region Europe. Display the records sorted in ascending order based on country name.(Q1) 
select * from countries where region_id=(select id from region where name='Europe') order by name asc;

--10.Write a query to display the id,entire street address and the last word of the street address of all entries in the location table. Give an alias to the last word as 'last_word'. Display the records sorted in ascending order based on last_word.(Q9)
select id, street_address , SUBSTR(street_address, INSTR(street_address, ' ',-1)+1) as last_word  from location ;

--11.Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Display the records sorted in ascending order based on first name.(Q11).
select first_name,TO_CHAR(salary, '$99,990.99999') as Salary From employee;

--12..Write a query to display the addresses (location id, street_address, city, state_province, country_name) of all the entries in the location table.Display the records sorted in ascending order based on location id. [Use Inner Join](Q3)
select location.id, location.street_address, location.city, location.state, countries.name from location  inner join countries on location.country_id= countries.id ;

--13.Write a query to display the first name and the last 5 characters of phone numbers of all employees. Display the records sorted in ascending order based on first name. Give an alias to the last 5 characters of phone number as phone_number(Q8).
select first_name,substr(phone_number,6) as phone_nmuber from employee;

--14.Write a query to display the first name of the managers of HR department. Display the records sorted in ascending order based on manager name(Q6)
select  first_name from employee where id in (select employee_id from manager where department_id =(select DISTINCT id from department where name='HR') ) order by first_name asc; 
select employee_id from manager where department_id=2;
select  id from department where name='HR';
commit;
--15.Write a query to display the first name of all employees who are managers. Display the records sorted in ascending order based on first name.(Q5)
select first_name from employee , manager where employee.id=manager.employee_id order by first_name asc;

--16.Write a query to display the first name of all employees who are managers. Display the records sorted in ascending order based on first name.(Q17) 
select first_name from employee , manager where employee.id=manager.employee_id order by first_name asc;

--17.Write a query to display the region name and the number of departments in each region. Display the records sorted in ascending order based on region name. Give an alias to the number of departments as department_count. Display only the region names that have atleast one department located in it.(Q18)
select  region.name,count(department.name) as NumberOF_Dept  from region join countries  on region.id=countries.region_id 
join location on countries.id=location.country_id join department on location.id=department.location_id group by department.location_id,region.name order  by region.name;


select r.name ,count(*) as department_count
from region r,countries c,location l,department d
where (r.id=c.region_id) and (c.id=l.country_id) and (l.id=d.location_id)
group by r.name
having count(*)>=1
order by r.name;


--18.Write a query to display the location_id, street_address, city, state_province, country_name, region_name of all the entries in the location table.Display the records sorted by location_id. [Use Left Join](Q12)
select location.id, location.street_address, location.city, location.state, region.name from location  inner join countries on countries.id=location.country_id join region on region.id=countries.region_id ;
--19.Write a query to display the department name and the first name of managers of all departments. Display the records sorted in ascending order based on department name and then by manager name.[Use inner join or join](Q4)

select first_name, name  from employee left  join manager on employee.id=manager.employee_id right join department on manager.department_id=department.id order by first_name asc;

---------------------------------------------------------------------------------------------------------------------------------
select * from programmer;
select * from software;
select * from studies;

select max(salary) as secondMax from programmer where salary<(select max(salary) from programmer);

--1.Display the names and ages of all the programmers
select Pname, round(months_between(sysdate,dob)/12) as Age from programmer;

create view programmer_age as select Pname, round(months_between(sysdate,dob)/12) as Age from programmer;
select upper(pname) as Name,Age from programmer_age ;

--2.What is the highest number of copies sold by a package?
select * from programmer;

--3.Display the names and date of birth of all programmers born in january

select pname,To_char(dob,'MONTH'),To_char(dob,'MM') from programmer;
select Pname, DOB from programmer where To_char(dob,'mm')=1;

--4.Display the lowest course fee
select min(ccost) from studies;

--5.How many programmers have done the pgdca course?
select count(course) as Name from programmer inner join studies on lower(programmer.pname)=lower(studies.pname) 
group by course,programmer.pname having course='PGDCA';

select count(*) from programmer p,studies s where lower(s.pname) = lower(p.pname) and course='PGDCA';
--6.Display the details of software developed by ramesh.
select * from software where pname='RAMESH';

--7.How many programmers studied  in SABARI?
select count(*) as Name from programmer inner join studies on lower(programmer.pname)=lower(studies.pname) 
group by splace,programmer.pname having Splace='SABARI';

select count(*) from programmer p,studies s where lower(s.pname) = lower(p.pname) and Splace='SABARI';
--8.What is the price of the costliest software developed in BASIC?
select max(DCOST) from software where dev_in='BASIC';

--9.How many programmers studied in PRAGATHI?
select count(*) from programmer p,studies s where lower(s.pname) = lower(p.pname) and Splace='PRAGATHI';

--10.How many programmers paid 5000 to 10000 for their course
select count(programmer.pname) as Name from programmer inner join studies on lower(programmer.pname)=lower(studies.pname) 
group by ccost,programmer.pname having ccost between 5000 and 10000;

select count(*) from programmer p,studies s where lower(s.pname) = lower(p.pname) and ccost between 5000 and 10000;
--11.Display the details of programmers  knowing C.
select * from programmer where prof1='c' or prof2='c';

--12.Display the number of male and female programmers.
select count(*) as Count,sex from programmer group by sex;

--13.Display the programmers name and their packages.
select pname,salary from programmer;

--14.What is the average Salary?

select round(avg(salary),3) as Average_Salary from programmer;

--15.How many female programmers are there?
select count(*) from programmer group by sex having sex='f';

--16.What are the languages known by male programmers?
select pname,prof1,prof2 from programmer group by pname,sex,prof1,prof2 having sex='m';

--17.Who are the programmers who celebrate their b'days during the current month?
select Pname, DOB from programmer where To_char(dob,'mm')=To_char(sysdate,'mm');

--18.How old is the oldest male programmer?
select  max(round(months_between(sysdate,dob)/12)) as Age from programmer group by sex having sex='m' ;

--19.What is the average age of the female programmer?
select  avg(round(months_between(sysdate,dob)/12)) as Age from programmer group by sex having sex='f' ;

--20.How many programmers don't know pascal and c?
select * from programmer where not prof1='pascal' and not prof1='c' and not prof2='c' and not prof2='pascal';
--------------------------------------------------------------------------------------------------------------------------------


create table customers(
customer_id  NUMBER GENERATED ALWAYS AS IDENTITY START WITH 1 primary key,
name varchar(20) not null,
address varchar(50) not null,
website varchar(120)  not null,
credit_limit number
);
 drop table customers;
 drop SEQUENCE customer_id  ;
 
 CREATE SEQUENCE customer_id  
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 1000;


insert into customers(name ,address,website,credit_limit ) values('Oliver','Star City','arrow.com',30000);
insert into customers (name ,address,website,credit_limit ) values('Barry','Central City','flash.com',20000);
insert into customers (name ,address,website,credit_limit ) values('Kara','National City','supergirl.com',15000);
insert into customers (name ,address,website,credit_limit ) values('Sara','Star City','arrow.com',24000);
insert into customers (name ,address,website,credit_limit ) values('Bruce','Gotham City','batman.com',2000000);
insert into customers (name ,address,website,credit_limit ) values('Clark','Metropolis','superman.com',10000);
insert into customers (name ,address,website,credit_limit ) values('Luck','Tatooine','starwars.com',40000);
insert into customers (name ,address,website,credit_limit ) values('Anakin','Tatooine','starwars.com',20000);
insert into customers (name ,address,website,credit_limit ) values('Peter','New Jersey','spidey.om',14000);
drop table customers;
update customers set name='Luck' where customer_id=8;
select * from customers;

create table orders(
order_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 1  primary key,
customer_id number(20) not null,
status varchar(30) not null,
salesman_id number(30) not null,
order_date date not null,
foreign key(customer_id) references customers(customer_id),
foreign key(salesman_id) references employees(employee_id)
);

drop table orders;
insert into orders(customer_id,status,salesman_id,order_date) values(2,'Shipped',1005,'21-08-2021');
insert into orders (customer_id,status,salesman_id,order_date)  values(1,'Packed',1004,'7-11-2020');
insert into orders (customer_id,status,salesman_id,order_date)  values(3,'Delivered',1002,'11-3-2019');
insert into orders (customer_id,status,salesman_id,order_date)  values(6,'Packed',1005,'28-12-2020');
insert into orders (customer_id,status,salesman_id,order_date)  values(4,'Shipped',1002,'19-05-2018');
insert into orders (customer_id,status,salesman_id,order_date)  values(5,'Delivered',1006,'2-02-2020');
insert into orders (customer_id,status,salesman_id,order_date)  values(2,'Delivered',1002,'13-06-2020');
insert into orders (customer_id,status,salesman_id,order_date)  values(9,'Shipped',1001,'12-04-2021');
insert into orders (customer_id,status,salesman_id,order_date)  values(8,'Packed',1002,'13-7-2020');


create table order_items(
item_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 1   primary key,
order_id number(30) not null,
product_id number(30) not null,
quanity number(10) not null,
unit_price number(10) not null,
foreign key(order_id) references orders(order_id),
foreign key(product_id) references products(product_id)
);

insert into order_items(order_id,product_id,quanity,unit_price) values(2,101,2,17000);
insert into order_items (order_id,product_id,quanity,unit_price) values(4,102,4,5000);
insert into order_items (order_id,product_id,quanity,unit_price) values(5,103,1,9000);
insert into order_items (order_id,product_id,quanity,unit_price) values(6,104,4,18000);
insert into order_items (order_id,product_id,quanity,unit_price) values(7,105,3,6000);
insert into order_items (order_id,product_id,quanity,unit_price) values(8,106,5,2000);
insert into order_items (order_id,product_id,quanity,unit_price) values(9,107,4,7000);
insert into order_items (order_id,product_id,quanity,unit_price) values(10,108,2,3000);
insert into order_items (order_id,product_id,quanity,unit_price) values(11,102,6,2000);

create table products(
product_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 101  primary key,
product_name varchar(50) not null,
description varchar(300) not null,
standard_cost number(10) not null,
list_price number(15) not null,
category_id number(15) not null,
foreign key(category_id) references product_categories (category_id)
);

insert into products(product_name,description,standard_cost,list_price,category_id) values('Mobile','a small portable radio telephone',1500,6500,100);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Laptob','a small, portable personal computer (PC) with a screen and alphanumeric keyboard.',21000,56500,100);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Earphone','a small piece of equipment which you wear over or inside your ears so that you can listen to music, the radio, or your phone without anyone else hearing',3100,10000,100);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Mobile Case','designed to attach to, support, or otherwise hold a smartphone,',300,500,104);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Bag','a bag is a kind of soft container.',500,1500,101);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Charger','a charger is the accessory you plug into your phone or laptop when the battery power is low',100,2500,100);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Guitar','a flat-bodied stringed instrument with a long fretted neck and usually six strings played with a pick or with the fingers',6500,18500,102);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Violin','The violin is a string instrument which has four strings and is played with a bow.',5500,14500,102);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Water Bottle','A water bottle is a container that is used to hold water, liquids or other beverages for consumption.',250,750,103);
insert into products (product_name,description,standard_cost,list_price,category_id) values('Pen','A pen is a common writing instrument that applies ink to a surface, usually paper, for writing or drawing',50,150,103);

create table contacts(
contact_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 1 primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
email varchar(50) not null,
phone number(10) not null unique,
customer_id number(30) not null,
foreign key(customer_id) references customers(customer_id)
);

insert into contacts(first_name,last_name,email,phone,customer_id) values('Oliver','Queen','Oliver@gmail.com',9836433993,1);
insert into contacts (first_name,last_name,email,phone,customer_id) values('Barry','Allen','Barry@gmail.com',8342833949,2);
insert into contacts (first_name,last_name,email,phone,customer_id) values('Kara','Denvers','karazoral@gmail.com',8336463359,3);
insert into contacts (first_name,last_name,email,phone,customer_id) values('Sara','Lence','saralance@gmail.com',7364833394,4);
insert into contacts (first_name,last_name,email,phone,customer_id) values('Bruce','Wayne','bruce@gmail.com',8366473597,5);
insert into contacts (first_name,last_name,email,phone,customer_id) values('Clark','Kent','clark@gmail.com',736433991,6);
insert into contacts (first_name,last_name,email,phone,customer_id) values('Anakin','Skywalker','skywalker@gamil.com',987654445,7);
insert into contacts (first_name,last_name,email,phone,customer_id) values('Luck','Skywalker','luckskywalker@gamil.com',986544876,8);
insert into contacts (first_name,last_name,email,phone,customer_id) values('Peter','Parker','spider@gamil.com',865578836,9);

create table employees(
employee_id NUMBER GENERATED ALWAYS AS IDENTITY START WITH 1000  primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(40) not null,
phone number(10) not null,
hire date not null,
manager_id number(10) not null,
job_title varchar(10) not null
);

delete employees where employee_id=0002;

insert into employees(first_name,last_name,email,phone,hire,manager_id,job_title ) values('tony','stark','iron@gamil.com',982764082,'11-02-2010',22,'HR');
insert into employees (first_name,last_name,email,phone,hire,manager_id,job_title ) values('Steve','Rogers','cap@gamil.com',6974837642,'12-06-2011',12,'Delivery');
insert into employees (first_name,last_name,email,phone,hire,manager_id,job_title ) values('Bruce','Banner','hulk@gamil.com',755264082,'02-2-2008',8,'Admin');
insert into employees (first_name,last_name,email,phone,hire,manager_id,job_title ) values('Thor','Odinson','thor@gamil.com',845264082,'1-07-2012',18,'Delivery');
insert into employees (first_name,last_name,email,phone,hire,manager_id,job_title ) values('Nick','Fury','nick@gamil.com',9658264082,'14-11-2008',12,'Delivery');
insert into employees (first_name,last_name,email,phone,hire,manager_id,job_title ) values('Clint','Barton','hawkeye@gamil.com',7834264082,'15-04-2014',17,'Delivery');
insert into employees (first_name,last_name,email,phone,hire,manager_id,job_title ) values('Natasha','Romanoff','blackwidow@gamil.com',9688264082,'23-05-2016',22,'HR');

CREATE TABLE product_categories (
    category_id NUMBER  GENERATED BY DEFAULT AS IDENTITY START WITH 100 PRIMARY KEY,
    category_name VARCHAR2( 255 ) NOT NULL
  );


insert into product_categories(category_name) values('Electrician');
insert into product_categories(category_name) values('Backpacks');
insert into product_categories(category_name) values('musical Instruments');
insert into product_categories(category_name) values('School Equipment');

insert into product_categories(category_name) values('Mobile Covers');

select * from product_categories;
select * from contacts;
select * from products;
select * from customers;
select * from employees;
select * from orders;
select * from order_items;

desc customers;
desc products;
desc employees;
drop table customers;
drop table orders;
drop table employees;
drop table contacts;
drop table products;
drop table order_items;

select initcap(co.first_name||' '||co.last_name )as Name from customers c inner join contacts co on c.customer_id=co.customer_id;

select * from customers c left join orders o on c.customer_id=o.customer_id;

select c.name as CoustomerName,initcap(e.first_name||' '||e.last_name) as Employee_name from customers c right join orders o 
on c.customer_id=o.customer_id right join employees e on o.salesman_id=e.employee_id;
--------------------------------------------------------------------------------------------------------------------------------
--Find Second Highest Standard_cost in Product Name and The Number Of order the product

select * from products;
select * from order_items;

select  upper(p.product_name) as "Product Name", ord.quanity  as NumberOFQuantity ,
count(ord.quanity) as NumberOForder  from products p  join order_items ord on
p.product_id=ord.product_id  where
p.standard_cost=(select max(standard_cost) from products where standard_cost < ( select max(standard_cost) from products) )
group by p.product_name,p.standard_cost,ord.quanity;

select max(standard_cost) from products where standard_cost < ( select max(standard_cost) from products); 
select products.product_name,max(standard_cost) from products where standard_cost;
--------------------------------------------------------------------------------------------------------------------------------
--Find Prodcut Name Third Highist Sale Product Name and Nuvmber Quamity and Number OF orders 
select  upper(p.product_name) as "Product Name", ord.quanity  as NumberOFQuantity ,
count(ord.quanity) as NumberOForder  from products p  join order_items ord on
p.product_id=ord.product_id where ord.quanity =(select max(ord.quanity) from order_items ord where ord.quanity < 
( select max(ord.quanity) from order_items ord where ord.quanity<(select max(ord.quanity) from order_items ord)) )
group by p.product_name,p.standard_cost,ord.quanity  
;
-----------------------------------------------




select * from customers c , orders o where to_char(o.order_date,'yyyy')=to_char(sysdate,'yyyy');
select sum(quanity*unit_price) as sum from orders o join order_items ord on o.order_id=ord.order_id where to_char(o.order_date,'dd')=to_char(sysdate,'dd');

select product_id,sum(quanity) "Max Sales" from order_items group by product_id;

select a.order_date,
sum(b.quanity*b.unit_price) "Sales Amount" 
 from orders a, order_items b 
where a.order_id=b.order_id 
and to_char(a.order_date,'MM')='12'
group by a.order_date;

select c.name,p.product_name,o.order_date from customers c join orders o on c.customer_id=o.customer_id join order_items ord
on o.order_id =ord.order_id join products p on p.product_id=ord.product_id where to_char(o.order_date,'mm/yyyy') ='07/2020';

select c.name,p.product_name,count(*) as NumberOFCutsomer, sum(ord.quanity) as NumberOFQuanity 
from customers c join orders o on c.customer_id=o.customer_id join order_items ord
on o.order_id =ord.order_id join products p on p.product_id=ord.product_id
group by c.name,ord.quanity,p.product_name;

select c.name, p.product_name from customers c join orders o on c.customer_id=o.customer_id join order_items ord
on o.order_id =ord.order_id join products p on p.product_id=ord.product_id group by  p.product_name,c.name , ord.quanity
having ord.quanity=(select  max(ord.quanity) from order_items ord);

select  max(ord.quanity) from order_items ord;

select c.name,p.product_name,o.order_date,max(ord.unit_price) as HighestAmount from customers c, orders o, order_items ord,products p 
where c.customer_id=o.customer_id and o.order_id= ord.order_id and ord.product_id=p.product_id group by p.product_name, 
o.order_date,c.name having max(ord.unit_price)=7000;

select initcap(e1.first_name||' '||e2.last_name) as Full_Name, e2.hire as Hire_date from employees e1 
join employees e2 on e1.employee_id=e2.employee_id;

select  upper(p.product_name) as Product_name, count(ord.quanity) as NumberOFOrder from products p  join order_items ord on
p.product_id=ord.product_id group by p.product_name,p.standard_cost having 
p.standard_cost=(select max(standard_cost) from order_items  );

select c.customer_id ,c.name, count(*) as NumebrOfOrder  from customers c join Orders o on c.customer_id=o.customer_id join order_items ord on o.order_id=ord.order_id
group by c.customer_id ,c.name,ord.quanity having ord.quanity=(select max(ord.quanity) from order_items ord) ;
select * from employees;

select max(ord.unit_price) as SecondMax from order_items ord where ord.unit_price<(select max(ord.unit_price) from order_items ord);


select c.name,count(*) as NumberOfOrders from customers  c, orders o, order_items ord where c.customer_id=o.customer_id and 
o.order_id= ord.order_id
group by c.name,o.customer_id having count(o.customer_id) >=2;


SET SERVEROUTPUT ON

BEGIN
DBMS_output.put_line('HEllo Peter');
END;
/

--CHAR
--VARCHAR2
--LONG
--LONG RAW
--NUMBER
--BINARY_INTEGER
--PLS_INTEGER
--BOOLEAN

select * from customers ;
desc customers;
update customers set name='barry' where customer_id=2;
alter table customers modify (name varchar2(40));

SET SERVEROUTPUT on

DECLARE
   id INTEGER := 2;
   Cutomer_name customers.name%type;
BEGIN
   SELECT Name INTO Cutomer_name FROM customers
   WHERE Customer_id= id;
   DBMS_OUTPUT.PUT_LINE('Cutomer name is ' || Cutomer_name);
EXCEPTION WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('No such Cutomer: ' );
END;
/
.
select * from employees;
update employees set first_name='Tony', last_name='Stark' where employee_id=1;
select first_name from empolyees where employee_id =100;
select * from employees;
set Serverout on

DECLARE
V_grade		CHAR(1) := UPPER ('&p_grade');
V_appraisal	VARCHAR2(20);

BEGIN
v_appraisal	:=
   CASE 	    v_grade
	WHEN  'A' THEN	'Excellent'
	WHEN  'B' THEN	'Very Good'
	WHEN  'C' THEN	'Good'
	ELSE   'No such Grade'
   END;
DBMS_OUTPUT.PUT_LINE (' Grade : ' || v_grade || ' Appraisal ' || V_appraisal);
END;
/

select * from employees;

DECLARE
   emp_rec   employees%ROWTYPE;
BEGIN
-- We know EMP_REC can hold a row from the EMP table.
 SELECT * INTO emp_rec FROM employees WHERE employee_id = 1002;


IF (emp_rec.employee_id = 1002) AND (to_char(emp_rec.hire,'mmyyyy')='062011') THEN emp_rec.job_title:='HR';
  END IF;   
END;
/

select round(months_between(to_char(sysdate,'ddmmyyyy'),'23061997')/12,2) as age from dual;


select * from stud;
stud.delete(1,4);
 

set serverout on

Declare

   Cutomer_name customers.name%type;
Begin
--FOR i IN emp_tab.FIRST .. emp_tab.LAST LOOP
FOR i  in  customers.FIRST .. customers.LAST LOOP


begin

SELECT Name INTO Cutomer_name FROM customers  WHERE Customer_id= i;
   DBMS_OUTPUT.PUT_LINE('Cutomer name @ Id ' ||i ||' is '|| Cutomer_name);
EXCEPTION WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('No such Cutomer:@ Id '||i );
end;
END LOOP;
End;
/
------------------------------------------------------------
DECLARE 
   CURSOR c_customers is 
      select name from customers; 

   TYPE c_list IS TABLE of customers.Name%type INDEX BY binary_integer; 
   name_list c_list; 
   counter integer :=0; 
   BEGIN 
   FOR n IN c_customers LOOP 
      counter := counter +1; 
      name_list(counter) := n.name; 
      dbms_output.put_line('Customer('||counter||'):'||name_list(counter)); 
   END LOOP; 
END; 
/ 
-----

Declare
A number := 0;
b number:=&num;
customer_address customers.address%type;
begin
FOR  i  in  1..b LOOP
a := a + i ;

begin
SELECT address INTO customer_address FROM customers  WHERE Customer_id= i;
   DBMS_OUTPUT.PUT_LINE('Cutomer Address @ Id ' ||i ||' is '|| customer_address);
EXCEPTION WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('No such Cutomer: '||i );

end;
END LOOP;
End;
/

Declare
num number := 0;
Begin
While num < 10 LOOP
num := num + 1 ;
begin
num:= case num
when 1 then num*2
when 2 then num*3
when 3 then num*4
end;
Dbms_output.put_line(num);
end;
END LOOP;
End;
/


set serveroutput on
DECLARE
marks		int := &mark;
grade	VARCHAR2(20);

BEGIN
grade :=
   CASE marks
	WHEN  100 THEN	'S'
	WHEN 90  THEN	'A'
	WHEN 80  THEN	'B'
    when 70  THEN   'C'
    When 60-50  THEN   'D'
	ELSE   'Fail'
   END ;

DBMS_OUTPUT.PUT_LINE (' Mark : ' || marks || ' Grade : ' || grade);
END;
/
-----------------
CREATE OR REPLACE FUNCTION mypi
        RETURN NUMBER IS
    BEGIN
         NULL;
         RETURN 3.14;
    END mypi;
    /
    
    
    BEGIN
         DBMS_OUTPUT.PUT_LINE('value of pi is ' || mypi);
    END;
    /
---------------------
DECLARE
   TYPE emp_table_type is table of
             employees%ROWTYPE INDEX BY BINARY_INTEGER;
   my_emp_table emp_table_type;
   v_count        NUMBER(3):= 104;
BEGIN
  FOR i IN 100..v_count
   LOOP
         SELECT * INTO my_emp_table(i) FROM employees
          WHERE employee_id = i;
  END LOOP;
  FOR i IN my_emp_table.FIRST .. my_emp_table.LAST
  LOOP
     DBMS_OUTPUT.PUT_LINE ( my_emp_table(i).last_name  );
  END LOOP;
END;
----------------
DECLARE
v_sal_increase emp.sal%TYPE :=800;
BEGIN
UPDATE  emp
SET	sal =  sal + v_sal_increase
WHERE    job = 'ANALYST';
END;
/
---------------
BEGIN
INSERT INTO employees(empno,ename,sal)?
VALUES
(1,'Sella',100000);
END;
/
---------

DECLARE
V_deptno	emp.deptno%TYPE;
V_ename	emp.ename%TYPE;
BEGIN
SELECT	 deptno,ename 
INTO 	 v_deptno,v_ename
FROM	 emp
WHERE  	 empno =7844;
DBMS_OUTPUT.PUT_LINE( 'Employee Name ='|| v_ename );
END;
/

select * from customers;
---
Set serverout on

Declare
A number := 0;
begin
FOR i in 1..10 LOOP
a := a + i ;

Dbms_output.put_line(to_char(i) ||' – ' || to_char(a) );
END LOOP;
End;
/
--------------
DECLARE
v_test1 NUMBER := 1;
v_test2 VARCHAR2(20) := ‘ACN’;
BEGIN
CASE
WHEN v_test1 = 1 THEN
dbms_output.put_line (‘Value in v_test1 is ‘||to_char(v_test1)?
);
WHEN v_test2 = ‘ACN’ THEN
dbms_output.put_line(‘Value in v_test2 is ‘|| v_test2 );
ELSE
null;
END CASE;
END;
/
-----

Declare
A number := 1;
begin
FOR i in 1..20 LOOP
if mod(a,2)!=0 then 
dbms_output.put_line ( a); 
end if; 
a := a + 1 ;
END LOOP;
End;
/

----------

CREATE  or replace PACKAGE programmer_salary AS 
   PROCEDURE find_salary(proName programmer.pname%TYPE); 
END programmer_salary; 
/

CREATE OR REPLACE PACKAGE BODY programmer_salary AS  
   
   PROCEDURE find_salary(proName programmer.pname%TYPE) IS 
   pro_sal programmer.salary%TYPE; 
   BEGIN 
      SELECT salary INTO pro_sal 
      FROM programmer 
      WHERE upper(pname) = upper(proName) ; 
      dbms_output.put_line(proName||'  Salary: '|| pro_sal); 
   END find_salary; 
END programmer_salary ; 
/

set serveroutput on
DECLARE 
   names programmer.pname%type := upper('&name'); 
BEGIN 
   programmer_salary.find_salary(names); 
END; 
/




create  procedure insertEmployee    
(id IN emp.id%type,    
name IN emp.name%type,
Phonenumber in emp.phonenumber%type,
gender in emp.gender%type
)    
is    
begin    
insert into emp values(id,name,phonenumber,gender);    
dbms_output.put_line('record inserted successfully'); 
end;    
/
 

------------
DECLARE
    l_ename emp.ENAME%TYPE;
    l_emp_id emp.emp_id%TYPE := &employee_id;
BEGIN
    -- get the employee name by id
    SELECT ename INTO l_ename
    FROM emp
    WHERE emp_id = l_emp_id;
    -- show the employee name   
    dbms_output.put_line('Employee name is ' || l_ename);
END;
/
---------------
select * from customers;
set serveroutput on

DECLARE
    customer_Name customers.name%TYPE;
    customerID customers.customer_id%TYPE := &customer_id;
BEGIN
    
    SELECT Name INTO customer_Name  FROM customers
    WHERE customer_id = customerID;

    
    dbms_output.put_line('Customer Name is ' || customer_Name);
EXCEPTION 
        WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('Customer ' || customerID ||  ' does not exist');
        WHEN TOO_MANY_ROWS THEN
            dbms_output.put_line('The database returns more than one customers'); 
END;
/
-----
set serveroutput on
select * from customers;
DECLARE
    customer_Name customers.name%TYPE:='Oliver';
    customerAddress customers.customer_id%TYPE ;
BEGIN
    
    SELECT Address INTO customerAddress  FROM customers
    WHERE name = customer_Name;

    
    dbms_output.put_line('Customer Name is ' || customer_Name);
    
EXCEPTION 
        
        WHEN TOO_MANY_ROWS THEN
            dbms_output.put_line('The database returns more than one customers'); 
END;
/
----------------------------
select * from emp;
Declare
v_deptno Emp.deptno%type;
v_empno Emp.empno%type;
v_ename  Emp.ename%type;
v_sal        Emp.sal%type;

CURSOR Emp_cursor IS
SELECT Empno, ename , Salary FROM emp
WHERE deptno = v_deptno;
BEGIN
        V_deptno := &deptno;
        OPEN Emp_cursor;
LOOP
FETCH emp_cursor INTO v_empno, v_ename,v_sal;
EXIT WHEN emp_cursor%ROWCOUNT > 5 OR emp_cursor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(v_empno ||’-’|| v_ename ||’-’||v_sal);

END LOOP;
CLOSE emp_cursor;
END;
(QL%ROWCOUNT ||' row deleted.');
End;
/
--------------------------
select * from programmer;
desc programmer;

set serveroutput on

DECLARE  
   total_rows number(3); 
   bonus number(10):=&amount;
BEGIN 
If sql%isopen then 
dbms_output.put_line('Cursor Open');
end if;
   UPDATE programmer
   SET salary = salary + bonus ;

   IF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' programmer salary updated '); 
   ELSIF sql%notfound THEN 
      dbms_output.put_line('no programmer salary updated'); 
 
   END IF;  
END; 
/  

update programmer set salary=salary+100;

set SERVEROUTPUT ON
-------------------
CREATE OR REPLACE PROCEDURE print_contact(
    in_customer_id NUMBER 
)
IS
  r_contact contacts%ROWTYPE;
  
BEGIN
  -- get contact based on customer id
  SELECT *
  INTO r_contact
  FROM contacts
  WHERE customer_id = in_customer_id;

  -- print out contact's information
  dbms_output.put_line('Name:'|| r_contact.first_name || ' ' ||
  r_contact.last_name || '   Email:' || r_contact.email  );


END;
/

EXEC print_contact(2);
/
----------------------
select * from emp;
drop procedure insertEmployee;

create  procedure insertEmployee    
(id IN emp.id%type,    
name IN emp.name%type,
Phonenumber in emp.phonenumber%type,
gender in emp.gender%type
)    
is    
begin    
insert into emp values(id,name,phonenumber,gender);    
dbms_output.put_line('record inserted successfully'); 
end;    
/    

set serveroutput on
EXEC insertEmployee(23,'Roagers',9349847,'Male');
/
select * from emp;
-------------------------------------------
select * from customers;
set serveroutput on

DECLARE 
   custId customers.customer_id%type; 
   c_name customers.name%type; 
   c_addr customers.address%type; 
   CURSOR customer_Cursor is 
      SELECT customer_id, name, address FROM customers; 
BEGIN 
dbms_output.put_line('CustomerID' || '  ' || 'CustomerName'|| '   ' || 'Customer Address');
   OPEN customer_Cursor; 
   LOOP 
   FETCH customer_Cursor into custId, c_name, c_addr; 
      EXIT WHEN customer_Cursor%notfound; 
      dbms_output.put_line(custId || '           ' || c_name || '           ' || c_addr); 
   END LOOP; 
   dbms_output.put_line(customer_Cursor%rowcount ||'Record Fetched');
   if customer_Cursor%isOpen
then 
dbms_output.put_line('cursor is open');
CLOSE customer_Cursor; 
end if;
   
END; 
/
---------------------------
select * from orders;

select get_total_sales(to_char(order_date,'yyyy')) as total_sales from orders;

CREATE OR REPLACE FUNCTION get_total_sales(
    in_year PLS_INTEGER
) 
RETURN NUMBER
IS
    l_total_sales NUMBER := 0;
BEGIN
    -- get total sales
    SELECT SUM(unit_price * quanity)
    INTO l_total_sales
    FROM order_items
    INNER JOIN orders USING (order_id)
    WHERE status = 'Shipped'
    GROUP BY EXTRACT(YEAR FROM order_date)
    HAVING EXTRACT(YEAR FROM order_date) = in_year;
    
    RETURN l_total_sales;
END;
/
----------------------
DECLARE 
l_sales_2021 NUMBER := 0; 
BEGIN 
l_sales_2021 := get_total_sales (2021); 
DBMS_OUTPUT.PUT_LINE('Sales 2021: ' || l_sales_2021); 
END;
/
Boolean expression
BEGIN
    IF get_total_sales (2021) > 1000 THEN
        DBMS_OUTPUT.PUT_LINE('Sales 2021 is above target');
    END IF;
END;
/
SQL statement
SELECT get_total_sales(2021) FROM dual;
----------------------------------
exec  findMax(100,101);

set serveroutput on
DECLARE  
   a number;  
   b number;  
   c number;  
FUNCTION findMax(x IN number, y IN number)   
RETURN number  
IS  
    z number;  
BEGIN  
   IF x > y THEN  
      z:= x;  
   ELSE  
      Z:= y;  
   END IF;  
  
   RETURN z;  
END;
/

BEGIN  
   a:= &aNumber;  
   b:= &bNumber;  
  
   c := findMax(a, b);  
   dbms_output.put_line(' Maximum of ('||a||'  and  ' ||b||'): ' || c);  
END;  
/  

-------------------------------------------
set serverout on
DECLARE  
   num number;  
   factorial number;    

FUNCTION fact(x number)  
RETURN number   
IS  
   f number;  
BEGIN  
   IF x=0 THEN  
      f := 1;  
   ELSE  
      f := x * fact(x-1);  
   END IF;  
RETURN f;  
END;  
  
BEGIN  
   num:= &number;  
   factorial := fact(num);  
   dbms_output.put_line(' Factorial '|| num || ' is ' || factorial);  
END;  
/  
-------------------------------------

CREATE OR REPLACE FUNCTION totalusers 
RETURN number IS 
   total number(10); 
BEGIN 
   SELECT count(*) into total 
   FROM users; 
    
   RETURN total; 
END; 
/ 

DECLARE 
   counts number(10) := totalusers(); 
BEGIN  
   dbms_output.put_line('Total number of Users:'|| counts); 
END; 
/
select totalusers from users;
----------------------



CREATE OR REPLACE PACKAGE order_mgmt
AS
  gc_shipped_status  CONSTANT VARCHAR(10) := 'Shipped';
  gc_pending_status CONSTANT VARCHAR(10) := 'Pending';
  gc_canceled_status CONSTANT VARCHAR(10) := 'Canceled';

  -- cursor that returns the order detail
  CURSOR g_cur_order(p_order_id NUMBER)
  IS
    SELECT
      customer_id,
      status,
      salesman_id,
      order_date,
      item_id,
      product_name,
      quantity,
      unit_price
    FROM
      order_items
    INNER JOIN orders USING (order_id)
    INNER JOIN products USING (product_id)
    WHERE
      order_id = p_order_id;

  -- get net value of a order
  FUNCTION get_net_value(
      p_order_id NUMBER)
    RETURN NUMBER;

  -- Get net value by customer
  FUNCTION get_net_value_by_customer(
      p_customer_id NUMBER,
      p_year        NUMBER)
    RETURN NUMBER;

END order_mgmt;
/
------------------------------------
select * from programmer;

drop PACKAGE programmer_salary ;

CREATE  or replace PACKAGE programmer_salary AS 
   PROCEDURE find_salary(proName programmer.pname%TYPE); 
END programmer_salary; 
/

drop table programmer;
CREATE OR REPLACE PACKAGE BODY programmer_salary AS  
   
   PROCEDURE find_salary(proName programmer.pname%TYPE) IS 
   pro_sal programmer.salary%TYPE; 
   BEGIN 
      SELECT salary INTO pro_sal 
      FROM programmer 
      WHERE upper(pname) = upper(proName) ; 
      dbms_output.put_line(proName||'  Salary: '|| pro_sal); 
   END find_salary; 
END programmer_salary ; 
/

set serveroutput on
DECLARE 
   names programmer.pname%type := upper('&name'); 
BEGIN 
   programmer_salary.find_salary(names); 
END; 
/
select * from seat_details;
select lower(user),upper(user),initcap(user),substr(user,2,3),reverse(user), from dual;