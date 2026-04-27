-- Scenario 1: Profit Margin Analysis --

SELECT order_id, user_id, product_id,
       (selling_price - purchase_price) AS profit
FROM orders
WHERE (selling_price - purchase_price) >= 1000;


-- Scenario 2: Targeted Email Marketing --

SELECT name, email, contact FROM users
WHERE status = 'Active'
AND name LIKE 'A%'
AND email LIKE '%@gmail.com';


-- Scenario 3: Youth Demographic Targeting --

SELECT * FROM users
WHERE DOB BETWEEN '1990-01-01' AND '1999-12-31';


-- Scenario 4: Metro City Operation --

SELECT * FROM users
WHERE city IN ('Kolkata', 'Mumbai', 'Delhi');


-- Scenario 5: Loss Prevention / Audit --

SELECT order_id,
       selling_price,
       purchase_price,
       (selling_price - purchase_price) AS profit,
       CASE 
           WHEN selling_price > purchase_price THEN 'Profit'
           WHEN selling_price = purchase_price THEN 'No Profit'
           ELSE 'Loss'
       END AS status
FROM orders;
