/*
Final Project

Name: Jeremy Hernandez

Due Date: May 6, 2022



*/

/*
1) Write SQL queries to create your CS Lab database. (Include all your relations for the database). Add primary keys for your relations and foreign keys where necessary.
*/
/* creates the database for CS lab */
create database CSlab;
/* uses CSlab database */
use CSlab;
/* creates table for Employee */
create table Employee(Empl_id INT (3) not null primary key, first_name varchar(20), last_name varchar(20), phone_no INT(10), email varchar(30), address varchar(30));
/* creates table for Tutor_Emp */
create table Tutor_Emp(Empl_id INT (3), title varchar(10), hours_rate decimal(5,2), total_weekly_work_hours decimal(5,2), foreign key(Empl_id) references Employee(Empl_id));
/* creates table for Coordinator_Emp */
create table Coordinator_Emp(Empl_id INT (3), degree INT(3), hours_rate decimal(5,2), total_weekly_work_hours decimal(5,2), foreign key(Empl_id) references Employee(Empl_id));
/* creates table for Courses */
create table Courses(Empl_id INT (3), Course varchar(10), title varchar(10), Description_of_course varchar(20), credits INT(2), hours decimal(5,2), foreign key(Empl_id) references Employee(Empl_id));
/* creates table for Tutee */
create table Tutee(Tutee_id INT (3), foreign key(Tutee_id) references Employee(Empl_id));
/* creates table for Visit */
create table Visit(Date_of_visit date, Time_in varchar(10), Time_out varchar(10), Tutee_id INT(3), Course varchar(10), foreign key(Tutee_id) references Employee(Empl_id));
/* creates table for Book */
create table Book(Book_id int(3) not null primary key, Title varchar(30));
/* creates table for Author */ /* Author is equivalent to name of author */
create table Author(Book_id int(3), Author varchar(30), foreign key(Book_id) references Book(Book_id));
/* creates table for Laptops */
create table Laptops(Serial_no int(3) not null primary key, Name varchar(30), Type varchar(20), Manufacturer varchar(30));

/* NOTE : Can't create table Tutor_Emp / Coordinator_Emp / Tutee, with first_name, last_name, phone_no, email, and address. *REFERENCE FROM Employee table* */

/*
2) Write queries that insert 5 or more records in all your relations you have created above. This means 5 records per relation.
*/
/* Employee relation to Tutor / Coordinator / Tutee */
										/* 0 for Tutor */
insert into Employee values(001, 'Izzy', 'Rivers', '1333666999', 'Izzy@gmail.com', '250 Bedford'); /* Tutor 1 */
insert into Employee values(002, 'Hector', 'Buckner', '1333666999', 'Hector@gmail.com', '250 Bedford'); /* Tutor 2 */
insert into Employee values(003, 'Izabelle', 'Ponce', '1333666999', 'Izabelle@gmail.com', '250 Bedford'); /* Tutor 3 */
										/* 1 for Coordinator */
insert into Employee values(101, 'Ethel', 'Browning', '1333666999', 'Ethel@gmail.com', '250 Bedford'); /* Coordinator 1 */
insert into Employee values(102, 'Ava', 'Marsh', '1333666999', 'Ava@gmail.com', '250 Bedford'); /* Coordinator 2 */
insert into Employee values(103, 'Anish', 'Akash', '1333666999', 'Anish@gmail.com', '250 Bedford'); /* Coordinator 3 */
										/* 2 for Tutee */
insert into Employee values(201, 'Hussein', 'Kerr', '1333666999', 'Hussein@gmail.com', '250 Bedford'); /* Tutee 1 */
insert into Employee values(202, 'Mali', 'Rivera', '1333666999', 'Mali@gmail.com', '250 Bedford'); /* Tutee 2 */
insert into Employee values(203, 'George', 'Coulsen', '1333666999', 'George@gmail.com', '250 Bedford'); /* Tutee 3 */
/* Tutor_Emp*/
insert into Tutor_Emp values(001, 'Tutor', 4.0, 200); /* Tutor 1 */
insert into Tutor_Emp values(002, 'Tutor', 5.0, 250); /* Tutor 2 */
insert into Tutor_Emp values(003, 'Tutor', 6.0, 350); /* Tutor 3 */
/* Coordinator_Emp*/
insert into Coordinator_Emp values(101, 400, 4.0, 320); /* Coordinator 1 */
insert into Coordinator_Emp values(102, 500, 5.0, 400); /* Coordinator 2 */
insert into Coordinator_Emp values(103, 600, 6.0, 480); /* Coordinator 3 */
/* Courses*/
insert into Courses values(001, 'Math', 'Calculus', 'Advanced Maths', 4, 4.0); /* Tutor 1 */
insert into Courses values(002, 'Language', 'French', 'Language Requirement', 4, 4.0); /* Tutor 2 */
insert into Courses values(003, 'Science', 'Biology', 'Science Requirement', 4, 4.0); /* Tutor 3 */
insert into Courses values(101, 'History', 'Politics', 'History Requirement', 4, 4.0); /* Coordinator 1 */
insert into Courses values(102, 'CS', 'Database', 'Course Towards Major', 4, 4.0); /* Coordinator 2 */
insert into Courses values(103, 'CS', 'AI', 'Course Towards Major', 4, 4.0); /* Coordinator 3 */
/* Tutee */
insert into Tutee values(201); /* Tutee 1 */
insert into Tutee values(202); /* Tutee 2 */
insert into Tutee values(203); /* Tutee 3 */
/* Visit relation */
insert into Visit values('2022-05-06','6:00 PM','6:15 PM',001,'Math');
insert into Visit values('2022-05-07','3:00 PM','3:30 PM',002,'Language');
insert into Visit values('2022-05-08','4:00 PM','4:45 PM',003,'Science');
insert into Visit values('2022-05-09','5:00 PM','5:30 PM',101,'History');
insert into Visit values('2022-05-10','2:00 PM','2:30 PM',103,'CS');
insert into Visit values('2022-05-11','1:00 PM','1:30 PM',103,'CS');

/* Book relation */
insert into Book values(011,'Calculus Book');
insert into Book values(012,'French Book');
insert into Book values(013,'Biology Book');
insert into Book values(014,'Politics Book');
insert into Book values(015,'Database Book');
insert into Book values(016,'AI Book');
/* Author relation */
insert into Author values(011,'V Hugo');
insert into Author values(012,'M Proust');
insert into Author values(013,'Aesop');
insert into Author values(014,'M Vargas');
insert into Author values(015,'R Llosa');
insert into Author values(016,'D Juan');
/* Laptops relation */
insert into Laptops values(401,'GTX280','Laptop','Intel');
insert into Laptops values(402,'HP380','Laptop','Hp');
insert into Laptops values(403,'DELL280','Laptop','Dell');
insert into Laptops values(404,'MAC5400','Laptop','Apple');
insert into Laptops values(405,'23452ASUS','Laptop','Asus');

/*
3) Write simple select statements that retrieves records from the tables without any condition. (1 Select statement per table)
*/
select * from Employee; /* selects from Employee table */
select * from Tutor_Emp; /* selects from Tutor_Emp table */
Select * from Coordinator_Emp; /* selects from Coordinator_Emp table */
select * from Courses; /* selects from Courses table */
select * from Tutee; /* selects from Tutee table */
select * from Visit; /* selects from Visit table */
select * from Book; /* selects from Book table */
select * from Author; /* selects from Author table */
select * from Laptops; /* selects from Laptops table */

/*
4) Write 1 simple select statements that retrieves records from all the tables using some simple condition. (1 Select statement per table)
*/
select Empl_id, first_name, last_name, email, phone_no, address from Employee where address ='250 Bedford'; /* selects from Employee table */
select Empl_id, title, hours_rate, total_weekly_work_hours from Tutor_Emp where title ='Tutor'; /* selects from Tutor_Emp table */
select Empl_id, degree, hours_rate, total_weekly_work_hours from Coordinator_Emp where Empl_id = 101; /* selects from Coordinator_Emp table */
select Empl_id, Course, title, Description_of_course, hours from Courses where hours = '4.0'; /* selects from Courses table */
select Tutee_id from Tutee where Tutee_id = 201; /* selects from Tutee table */
select Date_of_visit, Time_in, Time_out, Tutee_id, first_name, last_name, Course from Visit, Employee where Course = 'Math'; /* selects from Visit & Employee table for records within Visit and first_name / last_name from Employee table */
select Book_id, title from Book where Book_id = 011; /* selects from Book table */
select Book_id, Author from Author where Book_id = 011; /* selects from Author table */
select Serial_no, Name, Type, Manufacturer from Laptops where Manufacturer = 'Apple'; /* selects from Laptops table */

/*
5) Write 2 advanced select statements that select data from two or more of your tables. You can use exists, and , join etc.
*/
/* advanced select statement 1 (selects Empl_id & hours_rate using Empl_id) */
select Employee.Empl_id, Tutor_Emp.hours_rate
from Employee
inner join Tutor_Emp
on Employee.Empl_id = Tutor_Emp.Empl_id
where Employee.Empl_id <> 1
order by Employee.Empl_id; 
/* advanced select statement 2 (selects Book_id & Author using Book_id) */ 
select Book.Book_id, Author.Author
from Book
inner join Author
on Book.Book_id = Author.Book_id
where Book.Book_id <> 1
order by Book.Book_id;
/*
6) Write a query that retrieves students who have visited the CS Lab more than others.
*/
select Tutee_id, COUNT(*) AS Occurences
from Visit
group by Tutee_id
having (COUNT(*) >1);

/*
7) Write a query that retrieves tutors who get paid more than any other tutor per hour
*/

/* retrieves Empl_id of tutor that has the MAX hourly rate in Tutor_Emp table */
select MAX(Empl_id), MAX(hours_rate) 
from Tutor_Emp;

/*
8) Write a query that retrieves tutors who get lowest hourly rate pay.
*/
select Empl_id, MIN(hours_rate) 
from Tutor_Emp;
/*
9) Write a query that calculates and retrieves the average hourly rate of all tutors.
*/
select AVG(hours_rate), COUNT(*)
from Tutor_Emp;

/*
10) Write 3 update statements that update certain records based on some conditions
*/
/* Updates Employee Mali Riveras phone_no from 1333666999 to 1333555999 using Empl_id as the condition */
UPDATE Employee
SET first_name = 'Mali', last_name = 'Rivera', phone_no = '1333555999', email = 'Mali@gmail.com', address = '250 Bedford'
WHERE Empl_id = 202;

/* Updates Course CS, changing title from AI to Networking using Empl_id as the condition */
UPDATE Courses
SET Course = 'CS', title = 'Networking', Description_of_course = 'Course Towards Major', credits = 4, hours = 4.0
WHERE Empl_id = 103;

/* Updates Visit of Time_in and Time_out of Employee to 4:00 PM and 4:55 PM using Tutee_id as the condition */
UPDATE Visit
SET Date_of_visit = '2022-05-08', Time_in ='4:00 PM', Time_out = '4:55 PM', Tutee_id = 103, Course = 'Science'
WHERE Tutee_id = 103;

/*
11) Write 1 statement that deletes a record from a table based on some condition
*/
/* Deletes Math from Courses table */
DELETE FROM Courses WHERE Course = 'Math';


