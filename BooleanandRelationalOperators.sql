/* Create salesman table */
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
 
 /* Write a SQL statement to display salesman_id, name, city and commission who gets the 
 commission within the range more than 0.10 and less than 0.12" */
 select salesman_id, name, city, commission  from salesman
 WHERE commission > 0.10 and commission < 0.12; 
 
 /**************************************************************************************/
 
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
 
 /* Write a query to display all customers with a grade above 100 */
 SELECT * from customer WHERE grade>100;
 
 /* Write a query statement to display all customers in New York who have a grade value above 100. */
 SELECT * FROM customer WHERE city='New York' and grade >100;
 
 /*Write a SQL statement to display all customers,
 who either belongs to the city New York or had a grade above 100.*/
 SELECT * FROM customer WHERE city='New York' or grade > 100; 
 
 /* Write a SQL query to display those customers who neither belongs to the city 
 New York nor grade value is more than 100.*/
 
 SELECT * FROM customer WHERE NOT (city='New York' or grade >100); 
 
 /**************************************************************************************/
 
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

/*Write a SQL statement to display either those orders which are not issued on date 2012-09-10 and 
issued by the salesman whose ID is 505 and below or those orders which purchase amount is 1000.00 and 
below */
SELECT * FROM orders WHERE NOT ((ord_date = '2012-09-10' and salesman_id<=5005) or (purch_amt<=1000));

/* Write a SQL query to display all orders where purchase amount less than 200 or exclude those orders which order date is on or 
greater than 10th Feb,2012 and customer id is below 3009 */

SELECT * FROM orders WHERE purch_amt <200 or not ord_date>='2012-02-10'; 
 
