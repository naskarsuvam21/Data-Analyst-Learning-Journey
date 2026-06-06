# Day 11: Real-World Data Cleaning & Overcoming SQL Safe Update Restrictions

### 🎯 Objective
To import raw web-scraped E-commerce datasets into MySQL, identify structural discrepancies in column data types, and perform data cleaning operations to handle missing values (`NULL`).

### 🧠 The Problem Faced:
1. **Dirty Data:** The `anniversary` column in the `customers` table contained empty strings (`''`) instead of standardized `NULL` values, breaking date-type analytical structures.
2. **IDE Safeguards (Error Code: 1175):** MySQL Workbench blocked direct `UPDATE` scripts because the query lacked a strict `WHERE` clause matching a `KEY` column.

### 🛠️ Strategic Solution:
* Disabled the IDE safety restriction globally using `SET SQL_SAFE_UPDATES = 0;` to allow mass-transformation of dirty data rows.
* Standardized the field values by converting empty varchar layouts to true operational database `NULL` markers.
* Reactivated system safety constraints to protect production schema integrity.
