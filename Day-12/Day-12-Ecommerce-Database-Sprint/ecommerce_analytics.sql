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
