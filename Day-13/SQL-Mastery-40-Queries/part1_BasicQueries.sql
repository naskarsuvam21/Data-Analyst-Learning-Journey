-- SQL Day 12: Business Intelligence Queries on E-commerce Data
USE ecommerce_database_data;


-- 1. Show the first name (firstName) and total amount spent (moneySpent) for all customers from the customers table.
SELECT
customerID,
firstName,
lastName
FROM ecommerce_database_data.customers;


-- 2. List all products belonging to the 'Electronics' category.
SELECT * FROM ecommerce_database_data.products
WHERE category LIKE "%Electronics%";


-- 3. Show the IDs and prices of products costing more than 1000.
SELECT
productID,
price
FROM ecommerce_database_data.products
WHERE price > 1800
ORDER BY productID ASC;


-- 4. Filter the IDs and names of employees born before 1985.
SELECT employeeID, firstName, lastName
FROM employees
WHERE birthDate < '1985-01-01';


-- 5. Sort the data in the customers table in descending order based on the moneySpent column.
SELECT * FROM ecommerce_database_data.customers
ORDER BY moneySpent DESC;


-- 6. Show the order ID and total amount for all orders placed in 2025.
SELECT orderID, orderTotal
FROM ecommerce_database_data.orders
WHERE orderDate BETWEEN '2025-01-01' AND '2025-12-31';

SELECT
orderID,
orderTotal
FROM ecommerce_database_data.orders
WHERE orderDate BETWEEN '2025-01-01' AND '2025-12-31';


-- 7. List customers who do not have a marriage anniversary date (anniversary IS NULL).
SELECT * FROM ecommerce_database_data.customers
WHERE anniversary IS NULL;


-- 8. Display the product categories uniquely (DISTINCT).
SELECT DISTINCT category FROM ecommerce_database_data.products; 


-- 9. Filter orders where the total value (orderTotal) is above 5000 Taka.
SELECT * FROM ecommerce_database_data.orders
WHERE orderTotal >= 5000;


-- 10. Show complete data for all customers named 'Abhi'.
SELECT * FROM ecommerce_database_data.customers
WHERE firstName LIKE '%abhi%';


-- 11. Find the IDs of employees whose last name (lastName) is 'Roy'.
SELECT * FROM ecommerce_database_data.employees
WHERE lastName LIKE '%Roy%';

-- 12. Find the price of the lowest-priced product from the products table.
SELECT
MIN(price) AS Min_of_ProductPrice
FROM ecommerce_database_data.products;


-- 13. What is the average spending (moneySpent) of customers?
SELECT AVG(moneySpent) AS AVG_OF_COST
FROM ecommerce_database_data.customers;


-- 14. Count the number of unique customer IDs (customerID) in the orders database.
SELECT COUNT(DISTINCT customerID)
FROM ecommerce_database_data.orders;


-- 15. Show the orders placed on 2024-05-09.
SELECT * FROM ecommerce_database_data.orders
WHERE orderDate = '2024-05-09';


-- 16. Filter products with prices between 500 and 1500 Taka.
SELECT * FROM ecommerce_database_data.products
WHERE price BETWEEN 500 AND 1500;


-- 17. Show all records where the employee's first name starts with the letter 'S'.
SELECT * FROM ecommerce_database_data.employees
WHERE firstName LIKE 'S%';


-- 18. Filter records where the customer's marriage anniversary is after the year 2030 (anniversary > '2030-01-01').
SELECT * FROM ecommerce_database_data.customers
WHERE anniversary > '2030-1-1';


-- 19. Find out the maximium order ID value reached.
SELECT MAX(orderID) FROM ecommerce_database_data.orders;


-- 20. Show the IDs and Prices of all products in the 'Home Appliances' Category
 SELECT 
	productID,
    price AS ProductPrice
FROM ecommerce_database_data.products
WHERE category LIKE '%Home appliance%';


-- 21. List employees born between 1990 and 2000
SELECT * FROM ecommerce_database_data.employees
WHERE birthDate BETWEEN '1990-01-01' AND '2000-01-01';


-- 22. Who among the customers spent the most money and how much did they spend
SELECT 
	customerID,
    CONCAT(firstName, ' ', lastName) AS customerName,
    moneySpent AS MostMoneySpent
FROM ecommerce_database_data.customers
WHERE moneySpent = (
			SELECT
				MAX(moneySpent)
			FROM ecommerce_database_data.customers
);

#2ND TYPES
SELECT 
	customerID,
    CONCAT(firstName, ' ', lastName) AS customerName,
    moneySpent AS MostMoneySpent
FROM ecommerce_database_data.customers
ORDER BY moneySpent DESC LIMIT 1;

-- 23. Show the first 10 Rows from the 'orders' table (LIMIT 10).
SELECT * FROM ecommerce_database_data.orders
ORDER BY orderID ASC LIMIT 10;


-- 24. What is the average price of fitness category products?
SELECT 
	'Fitness' AS category,
    AVG(price) AS AvgPrice
FROM ecommerce_database_data.products
WHERE category LIKE '%Fitness%';


-- 25. Shorten the first name of customers alphabetically from A to Z.
SELECT * FROM ecommerce_database_data.customers
ORDER BY firstName ASC;


-- 26. Show the list of employees with single digit IDs from 1 to 9.
SELECT * FROM ecommerce_database_data.employees
ORDER BY employeeID ASC LIMIT 9;

#2ND TYPES
SELECT * FROM ecommerce_database_data.employees
WHERE employeeID BETWEEN 1 AND 9;


-- 27. What is the total number of products in the clothing category?
SELECT 
	COUNT(productID) AS Total_Clothing_products
FROM ecommerce_database_data.products
WHERE category = 'Clothing';


-- 28. Find all order IDs where the total order amount (orderTotal) is less than 2000.
SELECT 
	orderID,
    orderTotal
FROM ecommerce_database_data.orders
WHERE orderTotal <2000; 


-- 29. Filter Customers whose lastNmae ends in 'jee' (e.g. Banarjee, Chatterjee). 
SELECT * FROM ecommerce_database_data.customers
WHERE lastName LIKE '%jee';


-- 30. Extract only the year of birth from the customer's date of birth.
SELECT 
	customerID,
    firstName,
    lastName,
    birthDate,
    YEAR(birthDate) AS BirthYear
FROM ecommerce_database_data.customers;


-- 31. Filter orders placed in the last month of the year (December).
SELECT * FROM ecommerce_database_data.orders
WHERE orderDate LIKE '%-12-%';

# 2ND PROCESS
SELECT * FROM ecommerce_database_data.orders
WHERE MONTH(orderDate) = 12;


-- 32. Show the productID and category with the highest price from the product table.
SELECT 
	productID,
    category,
    price AS Highest_Price
FROM ecommerce_database_data.products
WHERE price = (
	SELECT 
		MAX(price)
	FROM ecommerce_database_data.products
);

#2ND PROCESS
SELECT 
	productID,
    category,
    price AS Highest_Price
FROM ecommerce_database_data.products
ORDER BY price DESC LIMIT 1;


-- 33. Display the employees firstNames & lastNames combined with space as Employee_Full_Name.
SELECT 
	employeeID,
    CONCAT(firstName, ' ', lastName) AS Employee_Full_Name,
    birthDate
FROM ecommerce_database_data.employees;


-- 34. Count the Total Number of times product id 1 has been ordered.
SELECT 
	COUNT(productID)
FROM ecommerce_database_data.orders
WHERE productID = 1;


-- 35. What is the total value of all orders placed in June 2024?
SELECT 
	'2024-06' AS orderDate,
    SUM(orderTotal) AS Totalvalue_of_orders
FROM ecommerce_database_data.orders
WHERE YEAR(orderDate) = 2024 AND MONTH(orderDate) = 6;

# 2nd Process
SELECT 
	'2024-06' AS orderDate,
    SUM(orderTotal) AS Totalvalue_of_orders
FROM ecommerce_database_data.orders
WHERE orderDate LIKE '2024-06%';


-- 36. How many customers in the customers table have anniversary dates available?
SELECT 
	COUNT(anniversary)
FROM ecommerce_database_data.customers
WHERE anniversary IS NOT NULL;


-- 37. Find the 'employeeID' and 'birthDate' of the employee named 'Pankaj'
SELECT 
	employeeID,
    CONCAT(firstName, ' ', lastName) AS EmployeeName,
    birthDate
FROM ecommerce_database_data.employees 
WHERE firstName LIKE '%Pankaj%';


-- 38. Filters how many orders customerID 417 has placed
SELECT 
	'417' AS customerID,
    COUNT(customerID) AS CountOrders
FROM ecommerce_database_data.orders
WHERE customerID = 417;


-- 39. Sort the data from the product table by category and within each category, arrange it by price.
SELECT * FROM ecommerce_database_data.products
ORDER BY category ASC, 
		 price ASC;
         

-- 40. Show records only for orders with even-numbered IDs.
SELECT * FROM ecommerce_database_data.orders
WHERE MOD(orderID, 2) = 0;