-- SQL Day 08: Mastering Joins
-- Linking users, orders, and products tables

-- 1. INNER JOIN: Getting the full picture of a transaction
SELECT 
    u.name, 
    o.order_id, 
    p.product_name, 
    o.selling_price
FROM practice.users u
INNER JOIN practice.orders o ON u.user_id = o.user_id
INNER JOIN practice.products p ON o.product_id = p.product_id;

-- 2. LEFT JOIN: Finding users who haven't placed any orders (Churn analysis)
SELECT 
    u.name, 
    o.order_id
FROM practice.users u
LEFT JOIN practice.orders o ON u.user_id = o.user_id
WHERE o.order_id IS NULL;

-- 3. RIGHT JOIN: Ensuring all products are mapped to orders
SELECT 
    p.product_name, 
    o.order_id
FROM practice.orders o
RIGHT JOIN practice.products p ON o.product_id = p.product_id;
