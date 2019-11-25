/***********************************************************************************************************/
/* Query on multiple tables*/


/* Write a query to find those customers with their name and those salesmen with their name
and city who lives in the same city. */

SELECT customer.cust_name, salesman.name,salesman.city from salesman, customer 
where salesman.city = customer.city; 

/*Write a SQL statement to find the names of all customers along with the salesmen who works for them.*/
select salesman.name as salesman_name, customer.cust_name from customer,salesman where customer.salesman_id=salesman.salesman_id; 


/* Write a SQL statement to display all those orders by the customers not 
located in the same cities where their salesmen live.  */
select ord_no, cust_name, salesman.city, orders.customer_id, orders.salesman_id from salesman, orders, customer 
where salesman.city<>customer.city and salesman.salesman_id=orders.salesman_id and orders.customer_id = customer.customer_id;


/* Write a SQL statement that finds out each order number followed by the name of the customers who made the order. */
SELECT customer.cust_name, orders.ord_no from customer, orders where customer.customer_id=orders.customer_id;


/* Write a SQL statement that sorts out the customer and their grade who made an order. Each of the customers 
must have a grade and served by at least a salesman, who belongs to a city.*/

SELECT customer.grade as grade, customer.cust_name as name, salesman.salesman_id, salesman.city from customer, orders, salesman
where orders.salesman_id=salesman.salesman_id 
AND orders.customer_id = customer.customer_id
And salesman.city is not null
and customer.grade is not null;
