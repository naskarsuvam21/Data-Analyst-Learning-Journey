# 📊 SQL Business Case Studies: CRM to Data Analyst Transition

Welcome to my SQL Case Study folder. Here, I translate raw database queries into actionable business intelligence. As a CRM professional, I understand that data is only valuable when it solves a real business problem. 

Below are 5 practical scenarios I solved using MySQL, focusing on revenue analysis, targeted marketing, and audit prevention.

---

## 📌 Scenario 1: Profit Margin Analysis
**Problem Statement:** The business needs to identify high-value orders where the net profit strictly exceeds ₹1,000 for reward allocations.

**SQL Solution:**

SELECT order_id, user_id, product_id, 
       (selling_price - purchase_price) AS profit 
FROM orders 
WHERE (selling_price - purchase_price) >= 1000;

🧠 **Business Insight:** Helps the sales team identify which products yield the highest margins and target specific users for premium loyalty programs.

---

## 📌 Scenario 2: Targeted Email Marketing
**Problem Statement:** Marketing needs a list of 'Active' users whose names start with 'A' and have valid Gmail accounts for a specific festive campaign.

**SQL Solution:**

SELECT name, email, contact FROM users 
WHERE status = 'Active' 
AND name LIKE 'A%' 
AND email LIKE '%@gmail.com';

🧠 **Business Insight:** Ensures high email deliverability and personalized marketing by filtering active, specific demographic users, reducing bounce rates.

---

## 📌 Scenario 3: Youth Demographic Targeting
**Problem Statement:** Product team needs a list of users born in the 90s (1990-1999) to launch a nostalgic product line.

**SQL Solution:**

SELECT * FROM users 
WHERE DOB BETWEEN '1990-01-01' AND '1999-12-31';

🧠 **Business Insight:** Age-based segmentation allows for highly targeted ad spend and tailored product recommendations.

---

## 📌 Scenario 4: Metro City Operations
**Problem Statement:** Logistics requires user data exclusively from key metro cities (Kolkata, Mumbai, Delhi) for a new rapid-delivery rollout.

**SQL Solution:**

SELECT * FROM users 
WHERE city IN ('Kolkata', 'Mumbai', 'Delhi');

🧠 **Business Insight:** Optimizes supply chain planning by identifying the exact customer base in pilot regions before a full-scale launch.

---

## 📌 Scenario 5: Loss Prevention / Audit
**Problem Statement:** Finance needs a clear audit status on all orders, categorizing them strictly as 'Profit', 'Loss', or 'No Profit' based on cost vs. selling price.

**SQL Solution:**

SELECT order_id, selling_price, purchase_price, 
       (selling_price - purchase_price) AS profit,
       CASE 
           WHEN selling_price > purchase_price THEN 'Profit'
           WHEN selling_price = purchase_price THEN 'No Profit'
           ELSE 'Loss' 
       END AS status 
FROM orders;

🧠 **Business Insight:** Instantly highlights operational inefficiencies and loss-making transactions, allowing management to adjust pricing strategies immediately.
