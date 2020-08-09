/* Revising the Select Query I */
/* Query all columns for all American cities in CITY with populations larger than 100000. 
The CountryCode for America is USA.
*/
SELECT * 
FROM CITY
WHERE COUNTRYCODE ='USA'
AND POPULATION > 100000;

------------------------------------------------------------------------------------------------------------------------
/* Revising the Select Query II */
/* Query the names of all American cities in CITY with populations larger than 120000. 
The CountryCode for America is USA.
*/ 
SELECT NAME 
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 120000;

------------------------------------------------------------------------------------------------------------------------
/* SELECT ALL */
/* Query all columns (attributes) for every row in the CITY table.
*/
SELECT * 
FROM CITY;

------------------------------------------------------------------------------------------------------------------------
/* SELECT by ID */
/* Query all columns for a city in CITY with the ID 1661.
*/
SELECT * 
FROM CITY 
WHERE ID =1661;

------------------------------------------------------------------------------------------------------------------------
/*  Japanese Cities' Attributes */
/* Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
*/
SELECT * 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';

------------------------------------------------------------------------------------------------------------------------
/* Japanese Cities' Names */
/* Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/ 
SELECT NAME 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 1 */
/* Query a list of CITY and STATE from the STATION table.
*/ 
SELECT CITY, STATE 
FROM STATION; 

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 2 */
/* Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.
*/


------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 3 */ 
/* Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, 
but must exclude duplicates from your answer.
*/
SELECT DISTINCT CITY 
FROM STATION
WHERE ID % 2=0

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 5 */
/* 
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective 
lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.
*/
SELECT top(1) CITY, LEN(CITY) 
FROM STATION  
ORDER BY LEN(CITY), city ASC
SELECT top(1) CITY, LEN(CITY) 
FROM STATION 
ORDER BY LEN(CITY) DESC, city ASC

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 6 */
/* Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.
*/
SELECT DISTINCT(CITY) 
FROM STATION 
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' 
OR CITY LIKE 'U%' 
ORDER BY CITY ASC; 

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 7 */
/* Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/
SELECT DISTINCT(CITY) 
FROM STATION 
WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' 
OR CITY LIKE '%u';

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 8 */ 
/* Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their 
first and last characters. 
Your result cannot contain duplicates.
*/
SELECT DISTINCT City 
FROM STATION 
WHERE City LIKE '[aeiou]%[aeiou]'

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 9 */ 
/* Query the list of CITY names from STATION that do not start with vowels. 
Your result cannot contain duplicates. 
*/
SELECT DISTINCT City 
FROM STATION 
WHERE City LIKE '[^aeiou]%'

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 10 */
/* Query the list of CITY names from STATION that do not end with vowels. 
Your result cannot contain duplicates.
*/
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE '%[^AEIOU]'

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 11 */ 
/* Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
Your result cannot contain duplicates.
*/
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE '[^AEIOU]%' OR CITY LIKE '%[^AEIOU]'

------------------------------------------------------------------------------------------------------------------------
/* Weather Observation Station 12 */ 
/* Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY LIKE '[^AEIOU]%' AND CITY LIKE '%[^AEIOU]'

------------------------------------------------------------------------------------------------------------------------
/* Higher Than 75 Marks */
/* Query the Name of any student in STUDENTS who scored higher than 75 Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
secondary sort them by ascending ID.
*/ 
SELECT Name 
FROM Students 
WHERE Marks > 75
ORDER BY RIGHT (Name,3), ID ASC


----------------------------------------------------------------------------------------------------------------------------------------------

/* EMPLOYEE NAMES */ 
/* Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.*/

SELECT name FROM Employee
ORDER BY name ASC

-----------------------------------------------------------------------------------------------------------------------------------------------

/* EMPLOYEE SALARY */ 
/*Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000
per month who have been employees for less than 10 months. Sort your result by ascending employee_id.*/


SELECT name FROM Employee 
WHERE months < 10 AND salary > 2000
-----------------------------------------------------------------------------------------------------------------------------------------------

/* TYPE OF TRIANGLE */
/* Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

SELECT
    CASE
    WHEN (a + b > c) AND (a + c > b) AND (b + c > a)then
        CASE
            WHEN(a = b) AND (b = c) AND (c = a) then 'Equilateral'
            WHEN (a = b)OR (b = c) OR (a = c)then 'Isosceles'  
            ELSE 'Scalene'
        END
    ELSE 'Not A Triangle'
    END
FROM TRIANGLES


----------------------------------------------------------------------------------------------------------------------------------------------
/* PADS */
/*
1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of 
each profession as a parenthetical (i.e.: enclosed in parentheses). 
For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, 
2. and output them in the following format:
*/


SELECT CONCAT (Name, CONCAT('(', LEFT(Occupation,1), ')')) FROM OCCUPATIONS ORDER BY Name;
SELECT CONCAT('There are a total of ', sum(A.nums), ' ', lower(A.occupation), 's.') 
FROM 
    (
        SELECT Name, occupation, COUNT(occupation) AS nums FROM occupations GROUP BY occupation, 
        name
    ) As A
GROUP BY occupation
ORDER BY COUNT(occupation) ASC, occupation ASC


------------------------------------------------------------------------------------------------------------------------
/* Revising Aggregations - The Count Function */ 
/* Query a count of the number of cities in CITY having a Population larger than 100,000. */
SELECT COUNT(ID) 
FROM CITY 
WHERE POPULATION > 100000
                            
                            
------------------------------------------------------------------------------------------------------------------------
/* Revising Aggregations - The Sum Function */ 
/* Query the total population of all cities in CITY where District is California. */

SELECT SUM(POPULATION)
FROM CITY 
WHERE DISTRICT = 'CALIFORNIA'
------------------------------------------------------------------------------------------------------------------------
/* Revising Aggregations - Averages */
/* Query the average population of all cities in CITY where District is California. */

SELECT AVG(POPULATION)
FROM CITY 
WHERE DISTRICT = 'CALIFORNIA'
                                          
                            
------------------------------------------------------------------------------------------------------------------------
/* Average Population */
/* Query the average population for all cities in CITY, rounded down to the nearest integer. */

SELECT FLOOR(AVG(POPULATION))
FROM CITY 
                            
------------------------------------------------------------------------------------------------------------------------
/* Japan Population */
/* Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN. */

SELECT SUM(POPULATION)
FROM CITY 
WHERE COUNTRYCODE = 'JPN'               
                            
------------------------------------------------------------------------------------------------------------------------                            
/* Population Density Difference */
/* Query the difference between the maximum and minimum populations in CITY. */

SELECT (MAX(POPULATION)-MIN(POPULATION)) AS DIFFERENCE_POP
FROM CITY 

------------------------------------------------------------------------------------------------------------------------                            
/* Top Earners */
/* We define an employee's total earnings to be their monthly salary * months worked, and the maximum total earnings 
to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings
for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 
2 space-separated integers.
*/
                            
SELECT salary * months, COUNT(employee_id)
FROM Employee
WHERE salary * months in
(SELECT MAX(salary * months) FROM Employee)
GROUP BY salary * months
                                                   
------------------------------------------------------------------------------------------------------------------------                            
/* Weather Observation Station 13 */
/* Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  38.7880 and less than 137.2345. 
Truncate your answer to 4 decimal places.
*/

SELECT CAST(SUM(lat_n) AS numeric (10,4)) AS lat
FROM station
WHERE lat_n BETWEEN 38.7880 AND 137.2345            
                            
                            
------------------------------------------------------------------------------------------------------------------------                            
/* Weather Observation Station 14 */
/* Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. 
Truncate your answer to 4 decimal places. */
                                   
SELECT CAST(MAX(lat_n) AS numeric(10,4)) AS  lat
FROM station
WHERE lat_n < 137.2345
  
                            
------------------------------------------------------------------------------------------------------------------------                            
/* Weather Observation Station 15 */
/* Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. 
Round your answer to 4 decimal places. */

SELECT CAST(LONG_W AS NUMERIC(10,4))
FROM STATION 
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345)                         
                            
                            
------------------------------------------------------------------------------------------------------------------------                            
                            
/* Weather Observation Station 16 */
/* Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
Round your answer to 4 decimal places. */
                              
SELECT CAST(MIN(LAT_N) AS NUMERIC(10,4)) AS LAT_MIN
FROM STATION 
WHERE LAT_N > 38.7780
         

------------------------------------------------------------------------------------------------------------------------                            
/* Weather Observation Station 18 */

/* Consider P1(a, b)  and  P2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION). 
                                  
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.  */ 


SELECT convert(decimal(10,4),ABS(MIN(LAT_N)-MAX(LAT_N)) + ABS(MIN(LONG_W)-MAX(LONG_W))) FROM STATION
                            

                              
                              
------------------------------------------------------------------------------------------------------------------------
                              
                              
                              
                              
------------------------------------------------------------------------------------------------------------------------                            
                              
                              
                              
                              
                              
------------------------------------------------------------------------------------------------------------------------                            
                              
                             
