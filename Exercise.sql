create table Trainer_Info(
Trainer_Id char(20) primary key,
Salutation char(7) ,
Trainer_Name char(30),
Trainer_Location char(30),
Trainer_Track char(15),
Trainer_Qualifiation char(100),
Trainer_Experiance Number(11),
Trainer_Email char(100),
Trainer_Password char(20)
);


create table Batch_Info(
Batch_Id char(20) primary key,
Batch_Owner char(30),
Batch_BU_Name char(30)
);

create table Module_Info(
Module_Id char(20) primary key,
Module_Name char(7),
Module_Duration numeric(11)
);
drop table Module_Info;

create table Associate_Info(
Associate_Id Char(20) primary key,
Salutation Char(7),
Associate_Name char(30),
Associate_Location char(30),
Associate_Track char(15),
Associate_Qualification char(200),
Associate_Email char(100),
Associate_Password char(20)
);

drop table associate_info;

create table Questions(
Question_Id char(20) primary key,
Module_Id char(20),
Question_Text char(900),
FOREIGN KEY (Module_Id)
REFERENCES Module_Info(Module_Id)
);

create table Associate_Status(
Associate_Id char(20),
Module_id char(20),
Start_date char(20),
End_date char(20),
AFeedbackGiven char(20),
TFeedbackGiven char(20),
FOREIGN KEY (Module_Id)
REFERENCES Module_Info(Module_Id),
FOREIGN KEY (Associate_Id)
REFERENCES Associate_Info(Associate_Id)
);
drop table  Associate_Status;

create table Trainer_Feedback(
Trainer_Id char(20),
Question_Id char(20),
Batch_Id char(20),
Module_Id char(20),
Trainer_Rating numeric(11),
FOREIGN KEY (Trainer_Id)
REFERENCES Trainer_Info(Trainer_Id),
FOREIGN KEY (Question_Id)
REFERENCES Questions(Question_Id),
FOREIGN KEY (Batch_Id)
REFERENCES Batch_Info(Batch_Id),
FOREIGN KEY (Module_Id)
REFERENCES Module_Info(Module_Id)
);

create table Associate_Feedback(
Associate_Id char(20),
Question_Id char(20),
Module_Id char(20),
Associate_Rating numeric(11),
FOREIGN KEY (Associate_Id)
REFERENCES Associate_Info(Associate_Id),
FOREIGN KEY (Question_Id)
REFERENCES Questions(Question_Id),
FOREIGN KEY (Module_Id)
REFERENCES Module_Info(Module_Id)
);
drop table Associate_Feedback;


create table Login_Details(
User_Id char(20),
User_Password char(20)
);

Alter table Associate_status add  Batch_Id char(20) CONSTRAINT b_Id 
REFERENCES Batch_Info(Batch_Id);
alter table Associate_status add Trainer_Id char(20) CONSTRAINT T_Id REFERENCES Trainer_Info(Trainer_Id);

alter table Associate_Status modify Start_Date date;
alter table Associate_Status modify End_Date date;
alter table module_info modify module_name char(30);
--Trainer_Info
insert into Trainer_Info (Trainer_Id,Salutation,Trainer_Name,Trainer_Location,Trainer_Track,
Trainer_Qualifiation,Trainer_Experiance,Trainer_Email,Trainer_Password) 
values('F001','Mr.','PANKAJ GHOSH','Pune','Java','Bachelor of Technology',12,'Pankaj.Ghosh@alliance.com','fac1@123');

Insert Into trainer_info values('F002','Mr.','SANJAY RADHAKRISHNAN','Bangalore','DotNet','Bachelor of Technology',12,'Sanjay.Radhakrishnan@alliance.com','fac2@123');
Insert Into trainer_info values('F003','Mr.','VIJAY MATHUR','Chennai','Mainframe','Bachelor of Technology',10,'Vijay.Mathur@alliance.com','fac3@123');
Insert Into trainer_info values('F004','Mrs.','NANDINI NAIR','Kolkata','Java','Master of Computer Application',9,'Nandini.nair@alliance.com','fac4@123');
Insert Into trainer_info values('F005','Miss.','ANITHA PAREKH','Hyderabad','Testing','Master Of Computer Application',6,'Anitha.Parekj@alliance.com','fac5@123');
Insert Into trainer_info values('F006','Mr.','MANOJ AGRAWAL','Mumbai','Mainframe','Bachelor of Technology',9,'Manoj.Agrawal@alliance.com','fac6@123');
Insert Into trainer_info values('F007','Ms.','MEENA KULKARANI','Coimbatore','Testing','Bachelor of Technology',5,'Meena.Kulkarni@alliance.com','fac7@123');
Insert Into trainer_info values('F009','Mr.','SAGAR MENON','Mumbai','Java','Master Of Science In Information Technology',12,'Sagar.Menon@alliance','fac8@123');

select * from trainer_info;

Insert Into batch_info values('B001','MRS.SWATI ROY','MSP');
Insert Into batch_info values('B002','MRS.ARURNA K','HEALTHCARE');
Insert Into batch_info values('B003','MR.RAJESH KRISHNAN','LIFE SCIENCES');
Insert Into batch_info values('B004','MR.SACHIN SHETTY','BFS');
Insert Into batch_info values('B005','MR.RAMESH PATEL','COMMUNICATION');
Insert Into batch_info values('B006','MRS.SUSAN CHERIAN','RETAIL & HOSPITALITY');
Insert Into batch_info values('B007','MRS.SAMPADA JAIN','MSP');
Insert Into batch_info values('B008','MRS.KAVITA REGE','BP0');
Insert Into batch_info values('B009','MR.RAVI SEJPAL','MSP');

select * from batch_info;
--Module_info
Insert Into module_info values('O10SQL','Oracle 10g',16);
Insert Into module_info values('O10PLSQL','Oracle 10g PL/SQL',16);
Insert Into module_info values('J2SE','Core Java 1.6',288);
Insert Into module_info values('J2EE','Advanced Java EE 1.6',80);
Insert Into module_info values('JAVAFX','JavaFX 2.1',80);
Insert Into module_info values('DOTNT$','.NEt Framework 4.0',50);
Insert Into module_info values('SQL2008','MS SQL Server 2008',120);
Insert Into module_info values('MSBI08','MS BI Studio 2008',158);
Insert Into module_info values('SHRPNT','MS Share Ponit',80);
Insert Into module_info values('ANDRD4','Android 4.0',200);
Insert Into module_info values('EM001','Instructor',0);
Insert Into module_info values('EM002','Course Material',0);
Insert Into module_info values('EM003','Learning Effectivenss',0);
Insert Into module_info values('EM004','Environment',0);
Insert Into module_info values('EM005','Job Impact',0);
Insert Into module_info values('TM001','Attendees',0);
Insert Into module_info values('TM002','Course Material',0);
Insert Into module_info values('TM003','Environment',0);

select * from module_info;


--Associate_Info
insert into Associate_Info values ('A001','Miss.','GAYATHRI NARAYANAN','Gurgaon','Java','Bachelor of Technology','Gayathri.Narayanan@hp.com','tne1@123');
insert into Associate_Info values ('A002','Mrs.','RADHIKA MOHAN','Kerala','Java','Bachelor of Engineering In Information Technology','Radhika.Mohan@cognizant.com','tne2@123');
insert into Associate_Info values ('A003','Mr.','KISHORE SRINIVAS','Chennai','Java','Bachelor of Engineering In Computers','Kishore.Srinivas@ibm.com','tne3@123');
insert into Associate_Info values ('A004','Mr.','ANAND RANGANATHAN','Mumbai','DotNet','Master of Computer Applications','Anand.Ranganathan@finolex.com','tne4@123');
insert into Associate_Info values ('A005','Miss.','LEELA MENON','Kerala','Mainframe','Bachelor of Engineering In Information Technology','Leela.Menon@microsoft.com','tne5@123');
insert into Associate_Info values ('A006','Mrs.','ARTI KRISHNAN','Pune','Testing','Master of Computer Applications','Arti.Krishnan@cognizant.com','tne6@123');
insert into Associate_Info values ('A007','Mr.','PRABHAKAR SHUNMUGHAM','Mumbai','Java','Bachelor of Technology','Prabhakar.Shunmugham@honda.com','tne7@123');

select * from associate_info;

--Questions
insert into Questions   values('Q001','EM001','Instructor knowledgeable and able to handle all your queries');
insert into Questions   values('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages');
insert into Questions   values('Q003','EM002','The course materials presentation, handson,  etc. refered during the training are relevant and useful');
insert into Questions   values('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic');
insert into Questions   values('Q005','EM002','The reference materials suggested for each module are adequate');
insert into Questions   values('Q006','EM003','Knowledge and skills presented in this training are applicatible at your work');
insert into Questions   values('Q007','EM003','This training increases my proficiency level' );
insert into Questions   values('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning');
insert into Questions   values('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training');
insert into Questions   values('Q010','EM005','This training will improve your job performance');
insert into Questions   values('Q011','EM005','This training align with the business priorities and goals');
insert into Questions   values('Q012','TM001','Participants were receptive and had attitude towards learning');
insert into Questions   values('Q013','TM001','All participats gained the knowledge and the practical skills after this training');
insert into Questions   values('Q014','TM002','The course materials presentation, handson,  etc. available for the session covers the entire objectives of the course');
insert into Questions   values('Q015','TM002','Complexity of the course is adequate for the particpate level');
insert into Questions   values('Q016','TM002','Case study and practical demos helpful in understanding of the topic');
insert into Questions   values('Q017','TM003','The physical environment e.g. classroom space, air-conditioning was conducive to learning');
insert into Questions   values('Q018','TM003','The software/hardware environment provided was adequate  for the purpose of the training');
select * from questions;
--Associate_status
insert into Associate_Status values('A001','O10SQL','B001','F001','15-dec-00','25-dec-00');
insert into Associate_Status values('A002','O10SQL','B001','F001','15-12-00','25-12-00');
insert into Associate_Status values('A003','O10SQL','B001','F001','12-15-00','12-25-00');
insert into Associate_Status values('A001','O10PLSQL','B002','F002','1-2-2001','12-2-00');
insert into Associate_Status values('A002','O10PLSQL','B002','F002','1-2-2001','12-2-2001');
insert into Associate_Status values('A003','O10PLSQL','B002','F002','1-2-2001','12-2-2001');
insert into Associate_Status values('A001','J2SE','B003','F003','20-8-2002','25-10-2002');
insert into Associate_Status values('A002','J2SE','B003','F003','20-8-2002','25-10-2002');
insert into Associate_Status values('A001','J2EE','B004','F004','1-12-2005','25-12-2005');
insert into Associate_Status values('A002','J2EE','B004','F004','1-12-2005','25-12-2005');
insert into Associate_Status values('A003','J2EE','B004','F004','1-12-2005','25-12-2005');
insert into Associate_Status values('A004','J2EE','B004','F004','1-12-2005','25-12-2005');
insert into Associate_Status values('A005','JAVAFX','B005','F006','4-12-2005','20-12-2005');
insert into Associate_Status values('A006','JAVAFX','B005','F006','4-12-2005','20-12-2005');
insert into Associate_Status values('A006','SQL2008','B006','F007','21-6-2007','28-6-2007');
insert into Associate_Status values('A007','SQL2008','B006','F007','21-6-2007','28-6-2007');
insert into Associate_Status values('A002','MSBI08','B007','F006','26-6-2009','29-6-2009');
insert into Associate_Status values('A003','MSBI08','B007','F006','26-6-2009','29-6-2009');
insert into Associate_Status values('A004','MSBI08','B007','F006','26-6-2009','29-6-2009');
insert into Associate_Status values('A002','ANDRD4','B008','F005','5-6-2010','28-6-2010');
insert into Associate_Status values('A005','ANDRD4','B008','F005','5-6-2010','28-6-2010');
insert into Associate_Status values('A003','ANDRD4','B009','F005','1-8-2011','20-8-2011');
insert into Associate_Status values('A006','ANDRD4','B009','F005','1-8-2011','20-8-2011');
select * from associate_status;



UPDATE trainer_info set Trainer_Password='nn4@123' where Trainer_Password='fac4@123';

DELETE associate_status WHERE associate_id='A003' and module_id='J2EE';

drop table Login_Details;


--------------------------------------------------------------------------------------------------------------------------------
Create table LMS_MEMBERS
(
MEMBER_ID Varchar(10),
MEMBER_NAME Varchar(30) NOT NULL,
CITY Varchar(20),
DATE_REGISTER Date NOT NULL,
DATE_EXPIRE Date ,
MEMBERSHIP_STATUS Varchar(15)NOT NULL,
Constraint LMS_cts1 PRIMARY KEY(MEMBER_ID)
);

select * from lms_members;
desc lms_members;

Insert into LMS_MEMBERS Values('LM001', 'AMIT', 'CHENNAI', '12-02-2012', '11-02-2013','Temporary');
Insert into LMS_MEMBERS Values('LM002', 'ABDHUL', 'DELHI', '10-04-2012', '09-04-2013','Temporary');
Insert into LMS_MEMBERS Values('LM003', 'GAYAN', 'CHENNAI', '13-05-2012','12-05-2013','Permanent');
Insert into LMS_MEMBERS Values('LM004', 'RADHA', 'CHENNAI', '22-04-2012', '21-04-2013','Temporary');
Insert into LMS_MEMBERS Values('LM005', 'GURU', 'BANGALORE', '30-03-2012', '16-05-2013','Temporary');
Insert into LMS_MEMBERS Values('LM006', 'MOHAN', 'CHENNAI', '12-04-2012', '16-05-2013','Temporary');

Create table LMS_SUPPLIERS_DETAILS
(
SUPPLIER_ID Varchar(3),
SUPPLIER_NAME Varchar(30) NOT NULL,
ADDRESS Varchar(50),
CONTACT number(10) NOT NULL,
EMAIL Varchar(15) NOT NULL,
Constraint LMS_cts2 PRIMARY KEY(SUPPLIER_ID)
);

Insert into LMS_SUPPLIERS_DETAILS
Values ('S01','SINGAPORE SHOPPEE', 'CHENNAI',
9894123555,'sing@gmail.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S02','JK Stores', 'MUMBAI', 9940123450 ,'jks@yahoo.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S03','ROSE BOOK STORE', 'TRIVANDRUM',
9444411222,'rose@gmail.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S04','KAVARI STORE', 'DELHI', 8630001452,'kavi@redif.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S05','EINSTEN BOOK GALLARY', 'US',
9542000001,'eingal@aol.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S06','AKBAR STORE', 'MUMBAI',7855623100 ,'akbakst@aol.com');

Create table LMS_FINE_DETAILS
(
FINE_RANGE Varchar(3),
FINE_AMOUNT decimal(10,2) NOT NULL,
Constraint LMS_cts3 PRIMARY KEY(FINE_RANGE)
);

Insert into LMS_FINE_DETAILS Values('R0', 0);
Insert into LMS_FINE_DETAILS Values('R1', 20);
insert into LMS_FINE_DETAILS Values('R2', 50);
Insert into LMS_FINE_DETAILS Values('R3', 75);
Insert into LMS_FINE_DETAILS Values('R4', 100);
Insert into LMS_FINE_DETAILS Values('R5', 150);
Insert into LMS_FINE_DETAILS Values('R6', 200);

Create table LMS_BOOK_DETAILS
(
BOOK_CODE Varchar(10),
BOOK_TITLE Varchar(50) NOT NULL,
CATEGORY Varchar(15) NOT NULL,
AUTHOR Varchar(30) NOT NULL,
PUBLICATION Varchar(30),
PUBLISH_DATE Date,
BOOK_EDITION number(3),
PRICE decimal(8,2) NOT NULL,
RACK_NUM Varchar(3),
DATE_ARRIVAL Date NOT NULL,
SUPPLIER_ID Varchar(3) NOT NULL,
Constraint LMS_cts4 PRIMARY KEY(BOOK_CODE),
 Constraint LMS_cts41 FOREIGN KEY(SUPPLIER_ID) References
LMS_SUPPLIERS_DETAILS(SUPPLIER_ID)
); 

Insert into LMS_BOOK_DETAILS
Values('BL000001', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel',
'Prentice Hall', '12-10-1999', 6, 600.00, 'A1', '10-05-2011', 'S01');
Insert into LMS_BOOK_DETAILS
Values('BL000002', 'Java: The Complete Reference ', 'JAVA', 'Herbert
Schildt', 'Tata Mcgraw Hill ', '10-10-2011', 5, 750.00, 'A1', '10-05-2011', 'S03');
Insert into LMS_BOOK_DETAILS Values('BL000003', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel',
'Prentice Hall', '10-05-1999', 6, 600.00, 'A1', '10-05-2012', 'S01');
Insert into LMS_BOOK_DETAILS Values('BL000004', 'Java: The Complete Reference ', 'JAVA', 'Herbert
Schildt', 'Tata Mcgraw Hill ', '10-10-2011', 5, 750.00, 'A1', '11-05-2012', 'S01');
Insert into LMS_BOOK_DETAILS Values('BL000005', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel',
'Prentice Hall', '10-12-1999', 6, 600.00, 'A1', '11-05-2012', 'S01');
Insert into LMS_BOOK_DETAILS Values('BL000006', 'Java: The Complete Reference ', 'JAVA', 'Herbert
Schildt', 'Tata Mcgraw Hill ', '10-10-2011', 5, 750.00, 'A1', '12-05-2012', 'S03');
Insert into LMS_BOOK_DETAILS Values('BL000007', 'Let Us C', 'C', 'Yashavant Kanetkar ', 'BPB
Publications', '11-12-2010', 9, 500.00 , 'A3', '03-11-2010', 'S03');
Insert into LMS_BOOK_DETAILS Values('BL000008', 'Let Us C', 'C', 'Yashavant Kanetkar ','BPB
Publications', '12-05-2010', 9, 500.00 , 'A3', '09-08-2011', 'S04');


Create table LMS_BOOK_ISSUE
(
BOOK_ISSUE_NO int,
MEMBER_ID Varchar(10) NOT NULL,
BOOK_CODE Varchar(10) NOT NULL,
DATE_ISSUE Date NOT NULL,
DATE_RETURN Date NOT NULL,
 DATE_RETURNED Date NULL,
FINE_RANGE Varchar(3),
Constraint LMS_cts5 PRIMARY KEY(BOOK_ISSUE_NO),
 Constraint LMS_Mem FOREIGN KEY(MEMBER_ID) References
LMS_MEMBERS(MEMBER_ID),
 Constraint LMS_BookDetail FOREIGN KEY(BOOK_CODE) References
LMS_BOOK_DETAILS(BOOK_CODE),
Constraint LMS_FineDetail FOREIGN KEY(FINE_RANGE) References
LMS_FINE_DETAILS(FINE_RANGE)
);

Insert into LMS_BOOK_ISSUE Values (001, 'LM001', 'BL000001', '01-05-2012', '16-05-2012', '16-05-2012', 'R0');
Insert into LMS_BOOK_ISSUE Values (002, 'LM002', 'BL000002', '01-05-2012', '06-05-2012','16-05-2012', 'R2');
Insert into LMS_BOOK_ISSUE Values (003, 'LM003', 'BL000007', '01-04-2012', '16-04-2012', '20-04-2012','R1');
Insert into LMS_BOOK_ISSUE Values (004, 'LM004', 'BL000005', '01-04-2012', '16-04-2012','20-04-2012', 'R1');
Insert into LMS_BOOK_ISSUE Values (005, 'LM005', 'BL000008', '30-03-2012', '15-04-2012','20-04-2012' , 'R1');
Insert into LMS_BOOK_ISSUE Values (006, 'LM005', 'BL000008', '20-04-2012', '05-05-2012','05-05-2012' , 'R0');
Insert into LMS_BOOK_ISSUE Values (007, 'LM003', 'BL000007', '22-04-2012', '07-05-2012','25-05-2012' , 'R4');

select * from LMS_MEMBERS;
select * from LMS_SUPPLIERS_DETAILS;
select * from LMS_FINE_DETAILS;
select * from LMS_BOOK_DETAILS;
select * from LMS_BOOK_ISSUE;

--Simple Questions:
--Problem # 1:Write a query to display the member id, member name, city and membership status who are all having life time membership. Hint: Life time membership status is “Permanent”.

select member_id,member_name,city,membership_status from LMS_MEMBERS where membership_status='Permanent';
--Problem # 2:Write a query to display the book code, publication, price and supplier name of the book witch is taken frequently.

SELECT b1.book_code,b2.publication,b2.price,b3.supplier_name FROM(SELECT b1.book_code FROM LMS_BOOK_ISSUE b1 
GROUP BY book_code HAVING COUNT(b1.BOOK_CODE) > 1) b1 JOIN LMS_BOOK_DETAILS b2 ON b1.book_code = b2.book_code
JOIN LMS_SUPPLIERS_DETAILS b3 ON b2.supplier_id = b3.supplier_id;

--Problem # 3:Write a query to display the member id, member name who have taken the book with book code 'BL000002'. 
select lm.member_id,lm.member_name from lms_members lm ,lms_book_issue lbi where lm.member_id=lbi.member_id and lbi.book_code='BL000002';

--Problem # 4:Write a query to display the book code, book title and author of the books whose author name begins with 'P'.
select book_code,book_title,Author from lms_book_details where author like 'P%';

--Problem # 5:Write a query to display the total number of Java books available in library with alias name ‘NO_OF_BOOKS’. 

select count(*) as NO_OF_BOOKS from lms_book_details where category='JAVA';

--Problem # 6:Write a query to list the category and number of books in each category with alias name ‘NO_OF_BOOKS’.
select category,count(*) as NO_OF_BOOKS from lms_book_details group by category;

--Problem # 7:Write a query to display the number of books published by "Prentice Hall” with the alias name “NO_OF_BOOKS”.
select count(*) as NO_OF_BOOKS from lms_book_details where publication='Prentice Hall';
--Problem # 8:Write a query to display the book code, book title of the books which are issued on the date "1st April 2012".
select lbs.book_code,lbs.book_title from lms_book_details lbs,lms_book_issue lbi 
group by lbs.book_code,lbs.book_title,lbi.date_issue having  to_char(lbi.date_issue,'dd/mm/yyyy')='01/04/2012';

--Problem # 9:Write a query to display the member id, member name, date of registration and expiry date of the members whose membership expiry date is before APR 2013.
select member_id,member_name,DATE_REGISTER,DATE_EXPIRE from LMS_MEMBERS where to_char(DATE_EXPIRE,'mmyyyy') < to_number('042013');

--Problem # 10:write a query to display the member id, member name, date of registration, membership status of the members who registered before  "March 2012" and membership status is "Temporary" 
select member_id,member_name,DATE_REGISTER,MEMBERSHIP_STATUS from LMS_MEMBERS where 
to_char(DATE_EXPIRE,'mmyyyy') < to_number('032012') and MEMBERSHIP_STATUS='Temporary';

--Problem #11:Write a query to display the member id, member name who’s City is CHENNAI or DELHI. Hint: Display the member name in title case with alias name 'Name'. 
select member_id,member_name as Name from LMS_MEMBERS where CITY='CHENNAI' or CITY='DELHI';

--Problem #12:Write a query to concatenate book title, author and display in the following format.Book_Title_is_written_by_Author
--Example:  Let Us C_is_written_by_Yashavant KanetkarHint: display unique books. Use “BOOK_WRITTEN_BY” as alias name.
 select initcap(book_title||author) as BOOK_WRITTEN_BY from LMS_BOOK_DETAILS;
 
 --Problem #13:Write a query to display the average price of books which is belonging to ‘JAVA’ category with alias name “AVERAGEPRICE”.
 
 select AVG(price) as AVERAGEPRICE from LMS_BOOK_DETAILS where CATEGORY='JAVA';
 
 --Problem #14:Write a query to display the supplier id, supplier name and email of the suppliers who are all having gmail account.

 select supplier_id,SUPPLIER_NAME,EMAIL from LMS_SUPPLIERS_DETAILS where EMAIL like '%gmail.com';

--Problem#15:Write a query to display the supplier id, supplier name and contact details. Contact details can be either phone number or email or address with alias name “CONTACTDETAILS”. If phone number is null then display email, even if email also null then display the address of the supplier. Hint: Use Coalesce function.

select Supplier_id,supplier_name,nvl2(contact,address,email) as contactdetails from Lms_suppliers_details;

--Problem#16:Write a query to display the supplier id, supplier name and contact. If phone number is null then display ‘No’ else display ‘Yes’ with alias name “PHONENUMAVAILABLE”. Hint: Use ISNULL.

 select SUPPLIER_ID,SUPPLIER_NAME,
 case 
 when CONTACT is NULL then 'NO' 
 when CONTACT is not null then 'YES'
 end as PHONE_NUM_AVAILABLE from LMS_SUPPLIERS_DETAILS;

--Problem#17:Write a query to display the member id, member name, city and member status of members with the total fine paid by them with alias name “Fine”.

 SELECT lm.MEMBER_ID, lm.MEMBER_NAME, lm.CITY, SUM(lfd.FINE_AMOUNT) AS FINE FROM LMS_MEMBERS lm INNER JOIN LMS_BOOK_ISSUE lbi ON lm.MEMBER_ID = lbi.MEMBER_ID
 INNER JOIN LMS_FINE_DETAILS lfd ON lbi.FINE_RANGE = lfd.FINE_RANGE GROUP BY lm.MEMBER_ID, lm.MEMBER_NAME, lm.CITY;
 
------------------------

 -----------------------

select * from customers;
select * from products;
select * from employees;
select * from orders;
select * from order_items;
select * from product_categories;
-------------------

CREATE  or replace PACKAGE sales AS  
procedure insertCustomers
(   
name IN customers.name%type,
address in customers.address%type,
website in customers.website%type,
credit_limt in customers.credit_limit%type,
status out varchar2,
error out varchar2
) ; 

PROCEDURE print_contact(
    in_customer_id in NUMBER,
    name out varchar2
);

procedure delete_customer
  ( custome_id in customers.customer_id%type,
  status out varchar2,error out varchar2
  );

procedure insertProducts
(
products_name IN products.product_name%type,
description  in products.description%type,
standard_cost in products.standard_cost%type,
list_price in products.list_price%type,
category_id in products.category_id%type,
status out varchar2,
error out varchar2
) ; 

procedure delete_product
  ( p_id in products.product_id%type,
  status out varchar2,error out varchar2
  );

PROCEDURE print_product(
    in_prodcut_id NUMBER 
);


procedure insertEmployee
(
firstName IN employees.first_name%type,
lastName  in employees.last_name%type,
email in employees.email%type,
phone in employees.phone%type,
hire in employees.hire%type,
manager_id in employees.manager_id%type,
job_title in employees.job_title%type,
status out varchar2,
error out varchar2
) ; 


procedure delete_employee
  ( employe_id in employees.employee_id%type,
  status out varchar2,error out varchar2); 

procedure insertOrders(customer_id in orders.customer_id%type,
status in orders.status%type,
salesman_id in orders.salesman_id%type, 
order_date in orders.order_date%type, 
message out varchar2,
errors out varchar2);


procedure update_orders
  ( o_id in orders.order_id%type,
stat in orders.status%type,
  message out varchar2,error out varchar2); 

procedure insert_orderItems (order_id in order_items.order_id%type,
 product_id in order_items.product_id%type,
 quanity in order_items.quanity%type,
 unit_price in order_items.unit_price%type,
 status out varchar2,
error out varchar2);


procedure delete_order_items
  ( it_id in order_items.item_id%type,
  status out varchar2,error out varchar2);

procedure insertCategory(
categoryName in product_categories.category_name%type,
status out varchar2,
error out varchar2
);

procedure delete_product_categories(pc_id in product_categories.category_id%type,
  status out varchar2,error out varchar2);

PROCEDURE find_a_month_sales (ordersDate    IN  varchar2,  month_sales OUT SYS_REFCURSOR);


procedure find_prodcut(price in number,prodcutList OUT SYS_REFCURSOR );

procedure find_prodcut(Fromprice in number,ToPrice in number,prodcutList OUT SYS_REFCURSOR );

procedure find_prodcut(pro_Cetgory in varchar2 ,prodcutList OUT SYS_REFCURSOR );

end sales;
/

CREATE OR REPLACE PACKAGE BODY sales AS 

procedure insertCustomers
(
name IN customers.name%type,
address in customers.address%type,
website in customers.website%type,
credit_limt in customers.credit_limit%type,
status out varchar2,
error out varchar2
)  
is    
begin    
insert into customers(name ,address,website,credit_limit ) values( name,address,website,credit_limt );    


if sql%rowcount>0 then 
status:='Values Inserted';
end if;
commit;

EXCEPTION when others then 
status:='Value not Inserted';
error:=sqlcode||' '||sqlerrm;
end;



 procedure delete_customer
  ( custome_id in customers.customer_id%type,
  status out varchar2,error out varchar2
  ) is
begin
  delete from customers where customer_id = custome_id;
 
  if SQL%ROWCOUNT >0 
  then
    status:='Customer ID Deleted:'||custome_id;
  end if;
if sql%rowcount=0
then status:='Customer ID: '||custome_id||'Does not Exit';
end if;
exception
  when others then
   status:='Somthing went wrong';
   error:=sqlcode ||' '|| sqlerrm;
commit;
end delete_customer;


PROCEDURE print_contact(
    in_customer_id NUMBER 
   ,name out varchar2 
)
IS
  r_contact contacts%ROWTYPE;

BEGIN 
  SELECT * INTO r_contact  FROM contacts  WHERE customer_id = in_customer_id;
      --dbms_output.put_line('Name:'|| r_contact.first_name || ' ' || r_contact.last_name || '   Email:' || r_contact.email  );
    name:= r_contact.first_name|| r_contact.last_name ;
EXCEPTION 
         WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('Customer ' || in_customer_id ||  ' does not exist');
        WHEN TOO_MANY_ROWS THEN
            dbms_output.put_line('The database returns more than one customers'); 
END;




procedure insertProducts
(
products_name IN products.product_name%type,
description  in products.description%type,
standard_cost in products.standard_cost%type,
list_price in products.list_price%type,
category_id in products.category_id%type,
status out varchar2,
error out varchar2
)
is    
begin    
insert into products (product_name,description,standard_cost,list_price,category_id) values(products_name,description,standard_cost,list_price,category_id );    
dbms_output.put_line('Product record inserted successfully'); 


if sql%rowcount>0 then 
status:='Values Inserted';
end if;
if sql%rowcount=0 then 
status:='No Prodcut ADD';
end if;

commit;

EXCEPTION when others then 
status:='Value not Inserted';
error:=sqlcode||' '||sqlerrm;
end;


procedure delete_product
  ( p_id in products.product_id%type,
  status out varchar2,error out varchar2
  )is
begin
  delete from products where product_id = p_id;
  
  if SQL%ROWCOUNT >0 
  then
    status:='Deleted';
  end if;
if sql%rowcount=0
then status:='No Product Deleted';
end if;
exception
  when others then
   status:='Somthing went wrong';
   error:=sqlcode ||' '|| sqlerrm;
commit;
end delete_product;




PROCEDURE print_product(
    in_prodcut_id NUMBER 
)
IS
  product products%ROWTYPE;
  
BEGIN 
  SELECT * INTO product FROM products WHERE product_id= in_prodcut_id;

      dbms_output.put_line('Product Name:'|| product.product_name|| '  Description:  ' || product.description);
      
EXCEPTION 
         WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('Product ' ||  in_prodcut_id||  ' does not exist');
        WHEN TOO_MANY_ROWS THEN
            dbms_output.put_line('The database returns more than one Products'); 
END;



procedure insertEmployee
(    
firstName IN employees.first_name%type,
lastName  in employees.last_name%type,
email in employees.email%type,
phone in employees.phone%type,
hire in employees.hire%type,
manager_id in employees.manager_id%type,
job_title in employees.job_title%type,
status out varchar2,
error out varchar2
) 

is    

begin    
insert into employees (first_name,last_name,email,phone,hire,manager_id,job_title )  values(firstName,lastName,email,phone,hire,manager_id,job_title );    
dbms_output.put_line('Employee record inserted successfully'); 


if sql%rowcount>0 then 
status:='Values Inserted';
end if;
commit;

EXCEPTION when others then 
status:='Value not Inserted';
error:=sqlcode||' '||sqlerrm;

end;

procedure delete_employee
  ( employe_id in employees.employee_id%type,
  status out varchar2,error out varchar2)
is
begin
  delete from employees where employee_id = employe_id;
  
  if SQL%ROWCOUNT >0 
  then
    status:='Deleted';
  end if;
if sql%rowcount=0
then status:='No value Deleted';
end if;
exception
  when others then
   status:='Somthing went wrong';
   error:=sqlcode ||' '|| sqlerrm;
commit;
end delete_employee;


procedure insertOrders(customer_id in orders.customer_id%type,
status in orders.status%type,
salesman_id in orders.salesman_id%type, 
order_date in orders.order_date%type, 
message out varchar2,
errors out varchar2)

is    

begin    
insert into orders (customer_id,status,salesman_id,order_date)  values(customer_id,status,salesman_id,order_date);    

--dbms_output.put_line('Ordsers record inserted successfully'); 


if sql%rowcount>0 then 
message:='Values Inserted';
end if;
commit;

EXCEPTION when others then 
message:='Value not Inserted';
errors:=sqlcode||' '||sqlerrm;

end;

procedure update_orders
  ( o_id in orders.order_id%type,
stat in orders.status%type,
  message out varchar2,error out varchar2) 
is
begin
  update orders set status=stat where order_id = o_id;
  
  if SQL%ROWCOUNT >0 then
    message :='Order Detalis Updated';
  end if;
  if sql%rowcount=0
then message:='No Ordre There In Id';
end if;
commit;
exception
  when others then
   message :='Somthing went wrong';
   error:=sqlcode ||' '|| sqlerrm;
end update_orders;


procedure insert_orderItems (order_id in order_items.order_id%type,
 product_id in order_items.product_id%type,
 quanity in order_items.quanity%type,
 unit_price in order_items.unit_price%type,
 status out varchar2,
error out varchar2)

is    

begin    
insert into order_items (order_id,product_id,quanity,unit_price)  values(order_id,product_id,quanity,unit_price);    

--dbms_output.put_line('Ordser_items record inserted successfully'); 


if sql%rowcount>0 then 
status:='Values Inserted';
end if;
commit;

EXCEPTION when others then 
status:='Value not Inserted';
error:=sqlcode||' '||sqlerrm;

end;

procedure delete_order_items
  ( it_id in order_items.item_id%type,
  status out varchar2,error out varchar2)
  is
begin
  delete from order_items where item_id= it_id;
  if SQL%ROWCOUNT >0 then
    status:='Deleted';
  end if;
  if sql%rowcount=0
then status:='No Value Deleted';
end if;
exception
  when others then
   status:='Somthing went wrong';
   error:=sqlcode ||' '|| sqlerrm;
end delete_order_items;



procedure insertCategory(
categoryName in product_categories.category_name%type,
status out varchar2,
error out varchar2
)
is    

begin    
insert into product_categories(category_name) values(categoryName);    

--dbms_output.put_line('Ordser_items record inserted successfully'); 


if sql%rowcount>0 then 
status:='Values Inserted';
end if;
commit;

EXCEPTION when others then 
status:='Value not Inserted';
error:=sqlcode||' '||sqlerrm;

end;


procedure delete_product_categories(pc_id in product_categories.category_id%type,
  status out varchar2,error out varchar2)
  is
begin
  delete from product_categories where category_id= pc_id;
  if SQL%ROWCOUNT >0 then
    status:='Deleted';
  end if;
  if sql%rowcount=0
then status:='No Value Deleted';
end if;
exception
  when others then
   status:='Somthing went wrong';
   error:=sqlcode ||' '|| sqlerrm;
end delete_product_categories;

PROCEDURE find_a_month_sales (ordersDate    IN  varchar2,
                      month_sales OUT SYS_REFCURSOR) 
                      AS 
BEGIN 
  OPEN month_sales  FOR
    select a.order_date,
sum(b.quanity*b.unit_price) 
 from orders a, order_items b 
where a.order_id=b.order_id 
and to_char(a.order_date,'MM')=ordersDate    
group by a.order_date;
END;

procedure find_prodcut(price in number,prodcutList OUT SYS_REFCURSOR ) 
as
BEGIN 
  OPEN prodcutList  FOR
 select product_name,description,standard_cost from products where standard_cost<=price;
  end;


procedure find_prodcut(Fromprice in number,ToPrice in number,prodcutList OUT SYS_REFCURSOR )

as
BEGIN 
  OPEN prodcutList  FOR
 select product_name,description,standard_cost from products where standard_cost between Fromprice and ToPrice;
  end;

procedure find_prodcut(pro_Cetgory in varchar2 ,prodcutList OUT SYS_REFCURSOR ) 
as
BEGIN 
  OPEN prodcutList  FOR
 select product_name,description,standard_cost from products where category_id =(select category_id from product_categories where category_name= initcap(pro_Cetgory));
  end;


END sales ; 
/



set serveroutput on

  DECLARE
   status varchar2(100);
   error VARCHAR2(500);
  cname varchar(500);
   begin
  --sales.insertCustomers('Kate Bishop','New York','hawkeye.com',120000,status,error);
     sales.delete_customer(30,status,error);
     --sales.print_contact(1,cname);
  --sales.insertEmployee('Ross','Geller','ross@gmail.com',9562839292,'7-04-2018',1,'HR',status,error);
  --sales.delete_employee(1024,status,error);  

      --sales.update_orders(10,'Packed',status,error);
 -- sales.insert_orderItems (12,104,3,1000);
  --sales.delete_order_items(8,status,error);
  --sales.insertCategory('clothes',status,error);
   --sales.delete_product_categories(104,status,error);
   --sales.delete_product(104,status,error);
   DBMS_OUTPUT.PUT_LINE(status  ||'   '|| error||cname );
   end;
/

-----------------------------------------------
DECLARE
  monthSales_cursor  SYS_REFCURSOR;
  ordersDate   varchar2(40);
  price   number(10);
  
BEGIN
  sales.find_a_month_sales  ('07',monthSales_cursor);
            
  LOOP 
    FETCH monthSales_cursor
    INTO  ordersDate, price;
    EXIT WHEN monthSales_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(ordersDate || ' | ' || price);
  END LOOP;
  CLOSE monthSales_cursor;
END;
/
------------------------------------------
DECLARE
  ProductList SYS_REFCURSOR;
  PridcutName   varchar2(100);
  descrp varchar2(1000);
  price   number(10);
  
BEGIN
  --sales.find_prodcut(6500,21000,ProductList);
    --sales.find_prodcut(6500,ProductList);        
    sales.find_prodcut('Electrician',ProductList);
  LOOP 
    FETCH ProductList 
    INTO  PridcutName,descrp, price;
    EXIT WHEN ProductList %NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(PridcutName || ' | '||descrp||'   |' || price);
    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('');
  END LOOP;
  CLOSE ProductList ;
END;
/

exec sales.insertCustomers('Kate Bishop','New York','hawkeye.com',120000);

delete from employees where employee_id=1020;
select * from product_categories;
select * from customers;
select * from employees;
update employees set first_name='Dr.Ross' where employee_id=1060;

select * from order_items;
select * from orders;
select * from products;
exec sales.print_contact(115);
exec sales.print_product(101);

--------------------------------
CREATE TABLE audits (
      audit_id         NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
      table_name       VARCHAR2(255),
      transaction_name VARCHAR2(10),
      by_user          VARCHAR2(30),
      transaction_date DATE
);
select * from audits;

CREATE OR REPLACE TRIGGER customers_audit_Trig
    AFTER 
    UPDATE OR DELETE 
    ON customers
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   -- determine the transaction type
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;

   -- insert a row into the audit table   
   INSERT INTO audits (table_name, transaction_name, by_user, transaction_date)
   VALUES('CUSTOMERS', l_transaction, USER, SYSDATE);
END;
/

------------

CREATE OR REPLACE TRIGGER Employee_audit_Trig
    AFTER 
    UPDATE OR DELETE 
    ON employees
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;

   
   INSERT INTO audits (table_name, transaction_name, by_user, transaction_date)
   VALUES('EMPLOYEE', l_transaction, USER, SYSDATE);
END;
/
----------------
CREATE OR REPLACE TRIGGER Orders_audit_Trig
    AFTER 
    UPDATE OR DELETE 
    ON orders
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;

  
   INSERT INTO audits (table_name, transaction_name, by_user, transaction_date)
   VALUES('ORDERS', l_transaction, USER, SYSDATE);
END;
/
--------------------------------------

CREATE OR REPLACE TRIGGER Orders_items_audit_Trig
    AFTER 
    UPDATE OR DELETE 
    ON order_items
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   -- determine the transaction type
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;

      
   INSERT INTO audits (table_name, transaction_name, by_user, transaction_date)
   VALUES('Order Items', l_transaction, USER, SYSDATE);
END;
/

------------------
select * from stadium_detalis;
select stadium_id('Chepauk') from stadium_detalis;
update user_deatlis set user_wallet=user_wallet-price where user_id=b_userID;
BEGIN
 dbms_output.put_line('stadium  :'||stadium_id('Chepauk'));
end;
/
CREATE OR REPLACE FUNCTION stadium_id(
    s_name in stadium_detalis.stadium_name%type
    
) 
RETURN NUMBER
IS
s_id NUMBER := 0;
BEGIN
    
    SELECT stadium_id
    INTO s_id 
    FROM stadium_detalis 
    WHERE stadium_name = s_name;
    RETURN s_id ;
END;
/