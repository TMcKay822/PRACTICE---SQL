/* SQL-Training-CREATING TABLES */

/* Create table for salesmen */
CREATE TABLE Salesman(Salesman_id int,
                       Name varchar(255),
                       City char(255),
                       Commission decimal (10,2),
                       PRIMARY KEY (Salesman_id));
 INSERT INTO Salesman VALUES (5001,'James Hoog', 'New York', 0.15);
 
 INSERT INTO Salesman VALUES (5002,'Nail Knite', 'Paris', 0.13);
 INSERT INTO Salesman VALUES (5005, 'Pit Alex', 'London', 0.11); 
 INSERT INTO Salesman VALUES (5006, 'Mc Lyon', 'Paris', 0.14); 
 INSERT INTO Salesman VALUES (5003, 'Lauson Hen', ' ', 0.12); 
 INSERT INTO Salesman VALUES (5007, 'Paul Adam', 'Rome', 0.13); 
 
 select * from salesman; 
 
/*********************************************************************************************/

/* Create table Orders*/
CREATE TABLE orders (ord_no int, purch_amt numeric (10,2) NOT NULL, 
ord_date date, customer_id int, salesman_id int, PRIMARY KEY (ord_no));
SELECT * FROM orders; /* view table orders*/

/* Values into table orders*/
INSERT INTO orders values (70001, 150.5, '2012-10-05', 3005, 5002);
INSERT INTO orders values (70009, 270.65, '2012-09-10', 3001, 5005);
INSERT INTO orders values (70002, 65.26, '2012-10-05', 3002, 5001);
INSERT INTO orders values (70004, 110.5, '2012-08-17', 3009, 5003);
INSERT INTO orders values (70007, 948.5, '2012-09-10', 3005, 5002);
INSERT INTO orders values (70005, 2400.6, '2012-07-27', 3007, 5001);
INSERT INTO orders values (70008, 5760, '2012-09-10', 3002, 5001);
INSERT INTO orders values (70010, 1983.43, '2012-10-10', 3004, 5006);
INSERT INTO orders values (70003, 2480.4, '2012-10-10', 3009, 5003);
INSERT INTO orders values (70012, 250.45, '2012-06-27', 3008, 5002);
INSERT INTO orders values (70011, 75.29, '2012-08-17', 3003, 5007);
INSERT INTO orders values (70013, 3045.6, '2012-04-25', 3002, 5001);

/* View inserted values in table */
SELECT *FROM orders; 

/*********************************************************************************************/
/* Create table customer */
CREATE TABLE CUSTOMER (customer_id int, cust_name varchar(255),
city varchar(255), grade int, salesman_id int, 
Primary key (customer_id) );

insert into CUSTOMER values
(3002, 'Nick Rimando', 'New York', 100, 5001); 
insert into CUSTOMER values
(3005, 'Graham Zusi', 'California', 200, 5002); 
insert into CUSTOMER values
(3001, 'Brad Guzan', 'London','' , 5005); 
insert into CUSTOMER values
(3004, 'Fabian Johns', 'Paris', 300, 5006); 
insert into CUSTOMER values
(3007, 'Brad Davis', 'New York', 200, 5001); 
INSERT INTO customer VALUES 
(3009, 'Geoff Camero', 'Berlin', 100, 5003); 
INSERT INTO customer VALUES 
(3008, 'Julian Green', 'London', 300, 5002); 
INSERT INTO customer VALUES 
(3003, 'Jozy Altidor', 'Moscow', 200, 5007); 


