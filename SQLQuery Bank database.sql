USE master
GO

CREATE DATABASE BankDB
GO

USE BankDB
GO

CREATE TABLE ACCOUNT(
  AccountNR int NOT NULL Primary Key,
  Balance varchar(30) NOT NULL,
  BankCode varchar(30) NOT NULL,
  Date varchar(30) NOT NULL,
  );
  GO

  
CREATE TABLE EMPLOYEE(
  EmployeeName varchar(30) NOT NULL Primary Key,
  EmployeeID varchar(5) NOT NULL,
  PhoneNr varchar(30) NOT NULL,
  );
  GO

CREATE TABLE BANK(
  BankCode varchar(5) NOT NULL Primary Key,
  Address varchar(30) NOT NULL,
  Name varchar(30) NOT NULL,
  PhoneNr varchar(30) NOT NULL,
  EmployeeName varchar(30) NOT NULL
  FOREIGN KEY (EmployeeName) References Employee(EmployeeName)
  );

CREATE TABLE TRANSACTIONS(
   TransactionID int NOT NULL,
   Amount varchar(30) NOT NULL,
   Type varchar(30) NOT NULL
);


CREATE TABLE CUSTOMER(
  CustomerName varchar(50) NOT NULL Primary Key,
  Address varchar(50) NOT NULL,
  CustomerID int NOT NULL,
  AccountNR int NOT NULL
  FOREIGN KEY (AccountNR) References Account(AccountNR)
  );

  Insert into ACCOUNT Values
  (1,'500','111','11/12/2012'),
  (2,'1000','112','10/11/2016'),
  (3,'900','113','02/11/2020'),
  (4,'200','114','08/10/2018'),
  (5,'600','115','11/02/2013')
  ;
  Insert into CUSTOMER values
  ('Anusha','09 N 7th st TEMPE',10,1),
  ('Supritha','10 W 12th st SEDONA',11,2),
  ('Ranjitha','22 Gary Bridge 23rd st PHEONIX',12,2),
  ('Vishma','109 Island Hill SEATLE',13,3),
  ('Vidya','202 West Hill Ave MALDEN',14,4)
  ;

  Insert into EMPLOYEE values
  ('Sanju','100','9098000900'),
  ('Yashu','200','9092090090'),
  ('Nutan','300','8090909090'),
  ('Vaiash','400','777777890'),
  ('Swathi','500','608909090')
  ;

  Insert into BANK values
  ('01','10 E 8th st Tempe','CHASE','090909090','Yashu'),
  ('02','20 N 12th st MALDEN', 'BOA','908090909','Nutan'),
  ('03','30 W 18th st BOSTON','CANARA','809090990','Swathi'),
  ('04','40 E 20th st CALIFORNIA','SBI','090909090','Nutan'),
  ('05','50 W 09th st SEDONA','CHASE','09909090090','Vaiash')
  ;

  Insert into TRANSACTIONS values
  (51,'5000','Savings'),
  (52,'10000','Checking'),
  (53,'20000','Savings'),
  (54,'60000','Savings'),
  (55,'55000','Checking')
  ;

