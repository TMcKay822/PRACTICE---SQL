/***********************************************************************************************************/
/* FORMATTING QUERY OUTPUTS*/
/* Write a SQL statement to display the commission with the percent sign ( % ) with salesman ID, 
name and city columns for all the salesmen*/
SELECT salesman_id, name, city, commission*100 '%' from salesman; 

/* Write a SQL statement to find out the number of orders booked for each day and display it 
in such a format like "For 2001-10-10 there are 15 orders".*/
SELECT 'For ', ord_date, ' there are ', count(distinct ord_no), 'orders.' from orders group by ord_date;


/* Write a query to display the orders according to the order number arranged by ascending order.*/
SELECT * from orders
order by ord_no; 

/* Write a SQL statement to arrange the orders according to the order date in such a manner that 
the latest date will come first then previous dates.*/
SELECT * from orders order by ord_date DESC ;

/* Write a SQL statement to display the orders with all information in such a manner that, the 
older order date will come first and the highest purchase amount of same day will come first. */
select * from orders order by ord_date, purch_amt desc;


/* Write a SQL statement to make a report with salesman ID, order date and highest purchase amount in 
such an arrangement that, the smallest salesman ID will come first along with their smallest order date.*/
select salesman_ID, ord_date, max(purch_amt) from orders
group by salesman_ID, ord_date
order by salesman_ID, ord_date; 
