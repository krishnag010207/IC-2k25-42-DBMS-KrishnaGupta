# Database Management System (DBMS) — SQL Practical Portfolio

<div align="center">

### SQL PRACTICAL ASSIGNMENTS

**MySQL · SQL · Database Design · Querying · Data Analysis**

![MySQL](https://img.shields.io/badge/MySQL-Database-blue?style=for-the-badge&logo=mysql)
![SQL](https://img.shields.io/badge/SQL-Query_Language-orange?style=for-the-badge)
![Assignments](https://img.shields.io/badge/Assignments-5-success?style=for-the-badge)
![Exercises](https://img.shields.io/badge/SQL_Exercises-86-informational?style=for-the-badge)

</div>

---

## Project Overview

This repository contains **five DBMS practical assignments consisting of 86 SQL exercises**, implemented using MySQL. The work follows an HR-style relational database and moves from creating database structures to retrieving, filtering, summarizing, and analyzing employee-related information.

The assignments are organized by topic. Each question is maintained in its own SQL file for execution and submission, while this README provides a **single overview of the complete practical work**—the concepts practiced, learning outcomes, practical applications, and the kind of output produced.

| Project Detail | Description |
|---|---|
| Subject | Database Management System (DBMS) |
| DBMS | MySQL |
| Query Language | SQL (Structured Query Language) |
| Assignments | 5 |
| SQL Exercises | 86 |
| Database Context | HR-style relational database |
| Main Tables Used | `employees`, `departments`, `jobs`, `countries`, `locations`, `job_history` |
| Focus | Database definition, integrity, retrieval, filtering, aggregation, and subqueries |

---

## Assignment 1 — Table Creation and Constraints

### What I Practiced

This assignment focused on defining database tables and enforcing rules on the data stored in them. I created tables such as `countries`, `jobs`, `job_histry`/`job_history`, and `employees`, and practiced defining their columns, data types, keys, and constraints.

| Area | Concepts / Operations |
|---|---|
| Table creation | `CREATE TABLE`, `CREATE TABLE IF NOT EXISTS` |
| Table copying | `CREATE TABLE ... LIKE`, copying structure and data |
| Column rules | `NOT NULL`, `DEFAULT`, `CHECK` |
| Uniqueness | `UNIQUE`, composite `UNIQUE` |
| Keys | `PRIMARY KEY`, `AUTO_INCREMENT` |
| Relationships | `FOREIGN KEY`, composite foreign keys |
| Referential integrity | `ON UPDATE` / `ON DELETE` with `CASCADE`, `RESTRICT`, `SET NULL`, and `NO ACTION` |
| Storage engine | InnoDB |

### What I Learned

- How to define a table and choose suitable column data types.
- How constraints prevent invalid or duplicate values from being stored.
- How primary and foreign keys identify records and connect related tables.
- How composite constraints apply to combinations of columns.
- How referential actions control the effect of updating or deleting referenced records.
- Why database structure and integrity rules are important before inserting or querying data.

### Real-Life Implementation

These concepts form the foundation of systems such as college management, employee management, banking, inventory, and hospital databases. For example, a student's department can be stored as a foreign-key relationship: the database can ensure that the referenced department exists instead of accepting an invalid department ID.

### Expected Output / Result

| Operation | Output / Effect |
|---|---|
| `CREATE TABLE` | A table is created with the specified columns and data types. |
| `CREATE TABLE ... LIKE` | A new table is created with a copied table structure. |
| Structure-and-data copy | A duplicate table contains the source structure and rows. |
| Constraints | Invalid values or duplicate values are rejected when they violate the defined rule. |
| Primary key / `AUTO_INCREMENT` | Records receive unique identifiers according to the key definition. |
| Foreign keys | Relationships between parent and child tables are enforced. |
| Referential actions | Related rows are cascaded, restricted, set to `NULL`, or left subject to `NO ACTION`, as configured. |

---

## Assignment 2 — SELECT Queries and SQL Functions

### What I Practiced

This assignment explored retrieving employee information, presenting it clearly, calculating values within queries, and using SQL functions to summarize or transform data.

| Area | Concepts / Operations |
|---|---|
| Data retrieval | `SELECT`, column selection, aliases |
| Unique values | `DISTINCT` |
| Sorting and limiting | `ORDER BY`, `LIMIT` |
| Calculations | Arithmetic expressions, salary calculations, PF at 15%, monthly salary |
| Aggregate functions | `SUM()`, `AVG()`, `MAX()`, `MIN()`, `COUNT()` |
| String functions | `CONCAT()`, `UPPER()`, `SUBSTRING()`, `TRIM()`, `LENGTH()` |
| Other functions | `ROUND()`, `REGEXP` |

### What I Learned

- How to select only the required columns from a table.
- How aliases and concatenation make result columns easier to read.
- How to retrieve unique department IDs and sort employee records.
- How to calculate PF (15% of salary) and monthly salary directly in SQL.
- How aggregate functions return totals, averages, counts, and extreme values.
- How string functions transform, extract, clean, and measure text.
- How `LIMIT` restricts the number of rows returned.

### Real-Life Implementation

SELECT queries and functions are used in payroll reports, HR dashboards, employee directories, financial summaries, and administrative systems. An HR team can display employee names and salaries, calculate PF or monthly salary, and sort the results without manually processing each record.

### Expected Output / Result

| Query Type | Output |
|---|---|
| `SELECT` with aliases | Employee details displayed with readable column headings. |
| `DISTINCT` | Unique department IDs or job IDs without duplicate values. |
| `ORDER BY` | Employee records arranged in the requested order. |
| Arithmetic expressions | Calculated columns such as PF (15%) or monthly salary. |
| `SUM()` / `AVG()` | Total salary and average salary values. |
| `MAX()` / `MIN()` | Highest and lowest salary values. |
| `COUNT()` | Number of employees or distinct jobs. |
| String functions | Uppercase names, extracted characters, trimmed names, concatenated names, and name lengths. |
| `REGEXP` | First names containing numeric characters, if any. |
| `LIMIT` | Only the requested number of employee records. |

---

## Assignment 3 — WHERE Clause, Filtering, and Pattern Matching

### What I Practiced

This assignment focused on selecting records that satisfy particular conditions. I filtered employees by salary, department, hiring year, job role, and name patterns.

| Area | Concepts / Operations |
|---|---|
| Conditional filtering | `WHERE` |
| Comparisons | `=`, `<>`, and other comparison operators |
| Logical conditions | `AND`, `OR`, `NOT` |
| Range filtering | `BETWEEN`, `NOT BETWEEN` |
| List filtering | `IN`, `NOT IN` |
| Pattern matching | `LIKE`, `%`, `_` |
| Text handling | `LOWER()`, `UPPER()`, `CHAR_LENGTH()` |
| Date filtering | `YEAR(hire_date)` |

### What I Learned

- How to filter records using numerical, textual, and date-based conditions.
- How to combine conditions using logical operators.
- How `BETWEEN` and `IN` simplify range and list-based filtering.
- How `LIKE` and wildcards identify names with particular patterns or character positions.
- How to find employees hired in a particular year or working in selected departments/jobs.
- How to exclude specified salary values or surnames from a result.

### Real-Life Implementation

Filtering is used in search pages, employee directories, customer databases, product catalogues, and reporting systems. For example, a company can find employees in selected departments whose salaries fall outside a specified range, or search names using a pattern.

### Expected Output / Result

| Condition | Output |
|---|---|
| `WHERE` | Only records satisfying the condition. |
| `NOT BETWEEN` | Employees whose salary is outside the specified inclusive range. |
| `IN` / `NOT IN` | Records included in or excluded from a specified list. |
| `AND` / `OR` | Records satisfying the combined logical condition. |
| `LIKE '%...%'` | Names containing a specified character or sequence. |
| `LIKE '__e%'` | Last names with `e` as the third character. |
| `CHAR_LENGTH()` | Last names having exactly the specified number of characters. |
| `YEAR(hire_date)` | Employees hired in the selected year. |
| `DISTINCT job_id` | Unique job/designation values present in the employee records. |

---

## Assignment 4 — Aggregate Functions, GROUP BY, and HAVING

### What I Practiced

This assignment moved from individual employee records to summary-level analysis. I calculated salary statistics and grouped employees by job, manager, or department.

| Area | Concepts / Operations |
|---|---|
| Aggregation | `COUNT()`, `SUM()`, `AVG()`, `MAX()`, `MIN()` |
| Grouping | `GROUP BY` |
| Group filtering | `HAVING` |
| Group-level analysis | Job-wise, department-wise, and manager-wise summaries |
| Derived result | Difference between maximum and minimum salary |

### What I Learned

- How aggregate functions summarize multiple rows into useful statistics.
- How `GROUP BY` produces a separate summary for each category.
- How to calculate department-wise salary totals and job-wise employee counts.
- How to calculate average salary for a department or job.
- How to find the lowest-paid employee salary for each manager.
- How `HAVING` filters groups after aggregation, unlike `WHERE`, which filters individual rows before grouping.

### Real-Life Implementation

Organizations use grouped queries for payroll totals, department budgets, workforce distribution, job-wise salary analysis, and management reports. For example, a company can calculate salary expenditure for each department and identify departments with more than ten employees.

### Expected Output / Result

| Query | Output |
|---|---|
| `COUNT(DISTINCT job_id)` | Number of different jobs represented in the employee table. |
| `SUM(salary)` | Total salary payable. |
| `MIN(salary)` / `MAX(salary)` | Lowest and highest salary. |
| `MAX(salary) - MIN(salary)` | Difference between highest and lowest salary. |
| `GROUP BY job_id` | Employee count or salary statistics for each job. |
| `GROUP BY department_id` | Department-wise salary totals or averages. |
| `GROUP BY manager_id` | Lowest employee salary for each manager. |
| `HAVING` | Only groups satisfying an aggregate condition, such as maximum salary ≥ 4000 or employee count > 10. |
| Department 90 grouping | Job-wise total, maximum, minimum, and average salary for department 90. |

---

## Assignment 5 — Subqueries and Advanced Data Retrieval

### What I Practiced

This assignment used nested SQL queries to solve retrieval problems that depend on values calculated or selected by another query. It also included joining employee and department information and selecting salary rankings.

| Area | Concepts / Operations |
|---|---|
| Nested queries | Inner query and outer query |
| Subquery comparisons | Single-value and multiple-value results |
| Membership | `IN` with subqueries |
| Comparison operators | `ANY`, `ALL` |
| Correlated queries | Inner query referencing the outer query |
| Joins | `JOIN` between `employees` and `departments` |
| Salary analysis | Above-average, department-average, minimum-by-job, and comparison salaries |
| Ranking | Nth maximum/minimum and top/bottom distinct salaries |
| Other operations | `MOD()`, `NOT IN`, `ORDER BY`, `LIMIT` |

### What I Learned

- How an inner query supplies values to an outer query.
- How to compare employee salaries with another employee's salary or the overall average.
- How to use subqueries to identify managers, employees in IT, and employees working in USA-based departments.
- How correlated subqueries compare an employee with the average salary of their own department.
- How `ANY` and `ALL` compare a value against a set of values.
- How to retrieve distinct top or bottom salaries and calculate the Nth maximum salary.
- How to combine employee and department information using a join.

### Real-Life Implementation

Subqueries are useful in HR analytics, business reporting, and decision support. For example, they can identify employees earning above their department average, compare salaries with a benchmark employee, find departments without employees, or retrieve the highest salary ranks without manually sorting records.

### Expected Output / Result

| Query Type | Output |
|---|---|
| Salary compared with a subquery | Employees whose salaries meet the inner query's benchmark. |
| `IN` subquery | Employees whose department/job/ID belongs to the values returned by the inner query. |
| `ANY` / `ALL` | Employees satisfying a comparison against one or more values returned by the subquery. |
| Correlated subquery | Employees meeting a condition calculated for their own department or related outer row. |
| Manager subquery | Employees who appear as a manager ID in employee records. |
| Join | Employee ID, employee name, and department name in one result set. |
| `MOD(employee_id, 2)` | Employees with even employee IDs. |
| Nth salary query | The Nth distinct salary in descending order (for Nth maximum) or ascending order (for Nth minimum). |
| `ORDER BY ... LIMIT 3` | Three highest or three lowest distinct salary values. |
| Last 10 records | Ten employee records ordered by employee ID descending. |
| `NOT IN` subquery | Departments whose IDs do not appear among employee department IDs. |

---

## Overall Learning Outcomes

Across the five assignments, I practiced the following database skills:

| Skill | Learning Outcome |
|---|---|
| Database Definition | Creating tables and defining columns, data types, and constraints. |
| Data Integrity | Maintaining valid data and relationships through keys and constraints. |
| Data Retrieval | Selecting and presenting required information with SQL. |
| Data Transformation | Calculating values and modifying text using SQL functions. |
| Data Filtering | Extracting records that satisfy specific conditions or patterns. |
| Data Aggregation | Summarizing data using aggregate functions. |
| Group Analysis | Producing job-wise, department-wise, and manager-wise summaries. |
| Advanced Querying | Solving multi-step retrieval problems using subqueries and joins. |
| SQL Problem Solving | Translating database requirements into executable SQL statements. |

## Real-World Applications

| System | How These SQL Concepts Are Used |
|---|---|
| College Management System | Student and department tables, enrollment relationships, and student filtering. |
| Employee / HR System | Employee records, job roles, salary calculations, and department reports. |
| Banking System | Customer/account relationships, data integrity, and transaction summaries. |
| Inventory System | Product tables, constraints, stock filtering, and category-wise summaries. |
| E-Commerce Platform | Customer/product/order retrieval, filtering, and sales aggregation. |
| Hospital Management System | Patient and department relationships, record retrieval, and operational reports. |

## Technologies Used

- **MySQL** — relational database management system used to create tables and execute SQL queries.
- **SQL** — language used for database definition, querying, filtering, and analysis.
- **GitHub** — platform used to organize and maintain the practical assignment repository.

## Conclusion

These practical assignments provided hands-on experience with SQL, beginning with table creation and constraints and progressing to data retrieval, filtering, aggregation, grouping, joins, and subqueries. They helped me understand how relational databases maintain structured information and how SQL can retrieve and analyze that information for real-world applications.

<div align="center">

### DBMS · SQL Practical Portfolio

**Learning • Practicing • Implementing**

</div>
