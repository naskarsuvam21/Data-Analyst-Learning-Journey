-- SQL Day 11: End-to-End Data Import & Cleaning
-- Database: Ecommerce_DB | Table: customers

-- Step 1: Attempt to replace empty text strings with standardized NULL flags
-- Note: This initially fails in safe mode due to Error Code: 1175
UPDATE customers
SET anniversary = NULL 
WHERE anniversary = '';

-- Step 2: Override IDE safe update restrictions to execute bulk cleanup
SET SQL_SAFE_UPDATES = 0;

-- Step 3: Run the structured cleanup query again
UPDATE customers
SET anniversary = NULL 
WHERE anniversary = '';

-- Step 4: Immediately restore default security configurations
SET SQL_SAFE_UPDATES = 1;

-- Verification Check
SELECT customerID, firstName, anniversary 
FROM customers 
WHERE anniversary IS NULL 
LIMIT 10;
