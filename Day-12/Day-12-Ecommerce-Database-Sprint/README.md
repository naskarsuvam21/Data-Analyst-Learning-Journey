# Day 12: E-Commerce Database Sprint - 18 Business Queries Solved

### 🎯 Objective
To query an imported multi-table E-commerce schema (`Customers`, `Orders`, `Employees`, `Products`) to answer core business performance questions, track user behaviors, and evaluate sales metrics.

### 🧠 Core Concepts Applied:
* **Filtering & Patterns:** Extracted categorical subsets using `WHERE`, `BETWEEN`, and wildcards (`LIKE '%Abhi%'`).
* **Aggregation:** Derived baseline parameters via `COUNT(DISTINCT)`, `MIN()`, and `AVG()`.
* **Data Sorting:** Organized high-value customer leads using structured `ORDER BY` configurations.

### 🧠 Business Scenarios Covered:
* **Customer Segmentation:** Filtering high-value users based on life events (`anniversary IS NULL`) and historical expenditure patterns (`moneySpent`).
* **Inventory & Cataloging:** Extracting targeted tech inventories (`category LIKE '%Electronics%'`) and performing price-benchmarking operations (`MIN`, `BETWEEN`).
* **Sales & Time-Series Tracking:** Isolating performance windows to evaluate exact fiscal timelines (e.g., Analyzing entire Q1-Q4 transactions of 2025).
* **HR Data Audit:** Filtering internal corporate cohorts based on specific age criteria and timelines (`birthDate < '1985-01-01'`).

### 📈 Business Metrics Answered:
1. Identified high-value transactions (>5000) for logistics.
2. Isolated specific customer segments (e.g., active orders vs. missing anniversary data mapping).
3. Evaluated overall financial metrics like Average Customer Wallet Share (`AVG(moneySpent)`).


### 📊 Impact:
Moving away from randomized dummy values to querying structural table relations that mimic real retail data ecosystems.
