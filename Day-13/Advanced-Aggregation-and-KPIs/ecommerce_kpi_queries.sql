-- SQL Day 13: Advanced Aggregation & KPI Calculation
USE ecommerce_database_data;

-- 41. How many products are there in each category
SELECT category, COUNT(productID) AS Total_Products
FROM ecommerce_database_data.products
GROUP BY category
ORDER BY Total_Products DESC;

-- 42. What is the average price of each product category?
SELECT category, COUNT(productID) AS Total_Products, AVG(price) AS Avg_Price
FROM ecommerce_database_data.products
GROUP BY category
ORDER BY Total_Products DESC;

-- 43. Total money spent per customer
SELECT customerID, SUM(orderTotal)
FROM ecommerce_database_data.orders
GROUP BY customerID
ORDER BY customerID ASC;

-- 44. Orders processed per employee
SELECT employeeID, COUNT(orderID) AS Total_Order_Processed
FROM ecommerce_database_data.orders
GROUP BY employeeID;

-- 45. Total orders and revenue per day
SELECT orderDate, COUNT(orderID) AS Total_Order, SUM(orderTotal) AS Total_Revenue
FROM ecommerce_database_data.orders
GROUP BY orderDate
ORDER BY orderDate ASC;

-- 46. Customers with more than five orders
SELECT customerID, COUNT(orderID) AS Total_Order, SUM(orderTotal) AS Total_Revenue
FROM ecommerce_database_data.orders
GROUP BY customerID
HAVING Total_Order > 5
ORDER BY customerID;

-- 47. Employees with total order value > 50,000
SELECT employeeID, COUNT(orderID) AS Total_Order_processed, SUM(orderTotal) AS Total_Order_Value
FROM ecommerce_database_data.orders
GROUP BY employeeID
HAVING Total_Order_Value > 50000;

-- 48. Total orders by year
SELECT YEAR(orderDate) AS OrderYear, COUNT(orderID) AS Total_Order_Processed, SUM(orderTotal) AS Total_Order_Value
FROM ecommerce_database_data.orders
GROUP BY OrderYear
ORDER BY OrderYear ASC;

-- 49. Product sales performance (count and revenue)
SELECT productID, COUNT(productID) AS Total_Time_Sold, SUM(orderTotal) AS Total_Revenue
FROM ecommerce_database_data.orders
GROUP BY productID
ORDER BY Total_Revenue DESC;

-- 50. Family with the most customers
SELECT lastName, COUNT(customerID) AS Most_Customers
FROM ecommerce_database_data.customers
GROUP BY lastName
ORDER BY Most_Customers DESC
LIMIT 1;
