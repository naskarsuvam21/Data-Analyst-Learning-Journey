# Day 07: SQL Aggregate Functions & Transaction Control

### 🎯 Objective
To master data summarization using Aggregate Functions (COUNT, SUM, AVG, MIN, MAX) and understand safe data manipulation using Data Modification Language (DML) combined with Transaction Control Language (TCL) like COMMIT and ROLLBACK.

### 🧠 Why this matters in Business:
* **Aggregates:** Companies don't look at single rows; they look at total sales (SUM), average order value (AVG), and performance benchmarks (MIN/MAX).
* **Data Safety (COMMIT/ROLLBACK):** One wrong `UPDATE` or `DELETE` without a `WHERE` clause can destroy a database. Transaction control is the ultimate safety net for a Data Analyst.

### 📋 Key Modules Practiced:
1. **Summary Metrics:** Used `SUM()` and `AVG()` on purchase and selling prices to generate high-level revenue reports.
2. **Data Benchmarking:** Applied `MIN()` and `MAX()` to evaluate pricing extremes.
3. **Safe DML Operations:** Practiced `UPDATE` and `DELETE` with conditional logic.
4. **Fail-Safe Testing:** Implemented `ROLLBACK` to reverse accidental data modifications, ensuring database integrity.
