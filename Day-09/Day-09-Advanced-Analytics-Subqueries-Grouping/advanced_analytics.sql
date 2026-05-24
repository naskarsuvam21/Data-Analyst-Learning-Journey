-- SQL Day 09: Advanced Analytics
-- 1. GROUP BY: Total Profit by City
SELECT 
    city, 
    SUM(selling_price - purchase_price) AS total_city_profit
FROM practice.users u
JOIN practice.orders o ON u.user_id = o.user_id
GROUP BY city;

-- 2. HAVING: Cities where total profit exceeds a threshold
SELECT 
    city, 
    SUM(selling_price - purchase_price) AS total_city_profit
FROM practice.users u
JOIN practice.orders o ON u.user_id = o.user_id
GROUP BY city
HAVING total_city_profit > 5000;

-- 3. SUBQUERY: Finding products with price above the average
SELECT product_id, selling_price
FROM practice.orders
WHERE selling_price > (SELECT AVG(selling_price) FROM practice.orders);
