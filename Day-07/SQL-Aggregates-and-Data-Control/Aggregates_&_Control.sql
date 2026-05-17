-- SQL Day 07: Aggregates & Transaction Control
-- Database: practice & sql_practice_db

-- 1. COUNT: Counting users above a specific age threshold
SELECT COUNT(user_id) FROM practice.users 
WHERE age >= 28;

-- 2. SUM: Total financial footprint of orders
SELECT 
    SUM(purchase_price) AS Total_Purchase_Price, 
    SUM(selling_price) AS Total_Selling_price
FROM practice.orders;

-- 3. AVG: Calculating Average Order Value (AOV) and Costs
SELECT
    AVG(purchase_price) AS Avg_of_Purchase,
    AVG(selling_price) AS Avg_of_Selling
FROM practice.orders;

-- 4. MIN & MAX: Finding the lowest cost and highest revenue products
SELECT
    MIN(purchase_price) AS min_of_purchase,
    MAX(selling_price) AS max_of_selling
FROM practice.orders;

-- 5. Data Safety Test: Using ROLLBACK to prevent accidental salary updates
SELECT * FROM sql_practice_db.employees_big_data;
COMMIT;

UPDATE sql_practice_db.employees_big_data
SET salary = 15000 
WHERE employee_id = 3;

-- Realized it was a test run, reverting the change safely
ROLLBACK;
