-- SQL Day 06: Arithmetic Operators Practice
-- Database: orders_db | Table: orders

  -- 1. Calculating Profit per Order (Subtraction) --
SELECT 
    order_id, 
    purchase_price, 
    selling_price, 
    (selling_price - purchase_price) AS profit_amount 
FROM orders;

  -- 2. Adding Fixed Packaging Charges (Addition) --
SELECT 
    order_id, 
    selling_price, 
    (selling_price + 50) AS final_billing_amount 
FROM orders;

  -- 3. Calculating 10% Festival Discount (Multiplication) --
SELECT 
    order_id, 
    selling_price, 
    (selling_price * 0.10) AS discount_amount 
FROM orders;

  -- 4. Calculating Profit Margin Ratio (Division) --
SELECT 
    order_id, 
    purchase_price, 
    (selling_price - purchase_price) AS profit,
    ((selling_price - purchase_price) / purchase_price) AS profit_margin_ratio
FROM orders;

  -- 5. Filtering Even Order IDs for Batch Audits (Modulus) --
SELECT * FROM orders
WHERE order_id % 2 = 0;
