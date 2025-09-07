  create table book(
  Book_id integer ,
Book_title  varchar(50),
Book_author varchar(50),
Publish_year  integer,
Publisher_name  varchar (50)   
);



insert into book (Book_id ,
Book_title ,
Book_author ,
Publish_year ,
Publisher_name ) values
(1, 'DBMS', 'Dr. AJAY','2021','MC GREW HILLS '),
(2, 'DCN', 'Dr. BIJAY ','2008','MC GREW HILLS '),
(3, 'JAVA', 'Dr. JYOTI','2009','MC GREW HILLS '),
(4, 'DISCRETE MATHEMATICS', 'Dr. NURUL','2010','MC GREW HILLS '),
(5, 'BASIC C PROGRAMMING', 'Dr. MANAS','2025','MC GREW HILLS '),
(6, 'OOPS USING C++', 'Dr. ASHISH','2013','MC GREW HILLS '),
(7, 'ADVANCES JAVA WITH DATABASE', 'Dr. SANKALPA','2020','MC GREW HILLS '),
(8, 'THEORY OF COMPUTATION', 'Dr. RAHUL','2016','MC GREW HILLS '),
(9, 'OPERATING SYSTEM', 'Dr. SK MUSAROOF','2010','MC GREW HILLS '),
(10, 'BASICS OF WEB DEVELOPMENT', 'Dr. AKASH','2006','MC GREW HILLS ');


 alter table book add column book_price decimal(8,2);
 
 select * from book 
 group by book_id;
 
  create table book(
  Book_id integer ,
Book_title  varchar(50),
Book_author varchar(50),
Publish_year  integer,
Publisher_name  varchar (50)   
);



insert into book (Book_id ,
Book_title ,
Book_author ,
Publish_year ,
Publisher_name ) values
(1, 'DBMS', 'Dr. AJAY','2021','MC GREW HILLS '),
(2, 'DCN', 'Dr. BIJAY ','2008','MC GREW HILLS '),
(3, 'JAVA', 'Dr. JYOTI','2009','MC GREW HILLS '),
(4, 'DISCRETE MATHEMATICS', 'Dr. NURUL','2010','MC GREW HILLS '),
(5, 'BASIC C PROGRAMMING', 'Dr. MANAS','2025','MC GREW HILLS '),
(6, 'OOPS USING C++', 'Dr. ASHISH','2013','MC GREW HILLS '),
(7, 'ADVANCES JAVA WITH DATABASE', 'Dr. SANKALPA','2020','MC GREW HILLS '),
(8, 'THEORY OF COMPUTATION', 'Dr. RAHUL','2016','MC GREW HILLS '),
(9, 'OPERATING SYSTEM', 'Dr. SK MUSAROOF','2010','MC GREW HILLS '),
(10, 'BASICS OF WEB DEVELOPMENT', 'Dr. AKASH','2006','MC GREW HILLS ');

 
 alter table book add column book_price decimal(8,2);
 
 select * from book 
 group by book_id;
 
  update  book 
 set book_title='dip' ,book_author='SIR'  where publish_year=2010; 
 
 DELETE FROM BOOK WHERE PUBLISH_YEAR=2008;
 
 ALTER TABLE BOOK DROP COLUMN PUBLISHER_NAME;