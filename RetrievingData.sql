/*Write a SQL statement to display specific columns like name and commission for all the salesmen.*/
SELECT Name, Commission FROM _Salesmen;

/*Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution". */
SELECT 'This is a SQL exercise, Practice, and Solution.';


/*Write a query to display the columns in a specific order like order date, salesman id, order number 
and purchase amount from for all the orders.*/
SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders; 


/* Write a query which will retrieve the values of salesman id of all salesmen getting orders from the 
customers in orders table without any repeats.*/ 
SELECT DISTINCT salesman_id from orders;

/* Write a query to display names and city of salesman, who belongs to the city of Paris.*/
SELECT * From _Salesmen where city='Paris';
