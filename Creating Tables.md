/* SQL-Training-CREATING TABLES */

/* Create table for salesmen */
CREATE TABLE _Salesmen(
Salesmen_id int, Name varchar(255),
City char(255), Commission numeric (10,2) NOT NULL,
PRIMARY KEY (Salesmen_id)); 
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5001,'James Hong', 'New York', 0.15); 
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5002, 'Nail Knite', 'Paris', 0.13); 
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5005, 'Pit Alex', 'London', 0.11);
INSERT INTO _Salesmen(salesmen_id, Name, City, Commission)
VALUES (5006, 'Mc Lyon', 'Paris', 0.14);
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5003, 'Lauson Hen', '   ', 0.12); 
INSERT INTO _Salesmen(Salesmen_id, Name, City, Commission)
VALUES (5007, 'Paul Adam', 'Rome', 0.13); 
SELECT* FROM _Salesmen;

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




/* CREATE TABLE CUSTOMERS BUT ERROR */
CREATE TABLE CUSTOMERS1(customer_id int, cust_name varchar(255), city varchar(255), grade int NOT NULL, salesman_id int, PRIMARY KEY (customer_id)); 

INSERT INTO CUSTOMERS1 VALUES (3002, 'Nick Rimando', 'New York', 100, 5001); 
INSERT INTO CUSTOMERS1 VALUES (3005, 'Graham Zusi', 'California', 200, 5002); 
INSERT INTO CUSTOMERS1 VALUES (3001, 'Brad Guzan', 'London', 0 , 5005); 
INSERT INTO CUSTOMERS1 VALUES (3004, 'Fabian Johns', 'Paris', 300, 5006); 
