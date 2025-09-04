# Advanced SQL Joins – Airbnb Database

## 📁 Repository: `alx-airbnb-database`
### 📂 Directory: `database-adv-script`
### 📄 File: `joins_queries.sql`

---

## 🎯 Objective

Master SQL joins by writing complex queries using different types of joins.

---

## 📌 Queries Included

### 1. INNER JOIN
Retrieves all bookings and the respective users who made those bookings.

### 2. LEFT JOIN
Retrieves all properties and their reviews, including properties that have no reviews.

### 3. FULL OUTER JOIN
Retrieves all users and all bookings, even if the user has no booking or a booking is not linked to a user.

---

## 🛠️ How to Run

1. Open your SQL client (e.g. MySQL Workbench, pgAdmin, or VS Code with SQL extension).
2. Connect to your Airbnb-style database.
3. Open `joins_queries.sql`.
4. Run each query individually to view results.

---

## 🧠 Notes

- Ensure your tables (`users`, `bookings`, `properties`, `reviews`) exist and are populated.
- FULL OUTER JOIN may not be supported in all SQL engines (e.g. MySQL). Use `UNION` of LEFT and RIGHT JOINs if needed.

---




# Advanced SQL Subqueries – Airbnb Database

## 📁 Repository: `alx-airbnb-database`
### 📂 Directory: `database-adv-script`
### 📄 Files:
- `subqueries.sql`
- `README.md`

---

## 🎯 Objective

Master SQL subqueries by writing both **correlated** and **non-correlated** queries.

---

## 📌 Queries Included

### 1. Non-Correlated Subquery
Finds all properties where the average rating is greater than 4.0.  
✅ Uses a subquery that runs independently of the outer query.  
**Sorted by:** Property name alphabetically.

### 2. Correlated Subquery
Finds users who have made more than 3 bookings.  
✅ Uses a subquery that depends on each row of the outer query.  
**Sorted by:** User name alphabetically.

---

## 🛠️ How to Run

1. Open your SQL client (e.g. MySQL Workbench, pgAdmin, or VS Code with SQL extension).
2. Connect to your Airbnb-style database.
3. Open `subqueries.sql`.
4. Run each query individually to view results.

---

## 🧠 Notes

- Ensure your tables (`users`, `bookings`, `properties`, `reviews`) exist and are populated.
- These queries are designed to be portable across most SQL engines (PostgreSQL, MySQL, SQLite).

---


# SQL Aggregation & Window Functions – Airbnb Database

## 📁 Repository: `alx-airbnb-database`
### 📂 Directory: `database-adv-script`
### 📄 Files:
- `aggregations_and_window_functions.sql`
- `README.md`

---

## 🎯 Objective

Use SQL aggregation and window functions to analyze booking data in the Airbnb-style database.

---

## 📌 Queries Included

### 1. Total Bookings per User (Aggregation)
Uses `COUNT()` and `GROUP BY` to calculate how many bookings each user has made.  
**Sorted by:** Most active users first (`ORDER BY total_bookings DESC`)

### 2. Property Ranking by Bookings (Window Function)
Uses `RANK()` to rank properties based on how many bookings they’ve received.  
**Sorted by:** Highest-ranked properties first (`ORDER BY booking_rank ASC`)

---

## 🛠️ How to Run

1. Open your SQL client (e.g. MySQL Workbench, pgAdmin, or VS Code with SQL extension).
2. Connect to your Airbnb-style database.
3. Open `aggregations_and_window_functions.sql`.
4. Run each query individually to view results.

---

## 🧠 Notes

- Ensure your tables (`users`, `bookings`, `properties`) exist and are populated.
- Window functions like `RANK()` require SQL engines that support analytic functions (e.g. PostgreSQL, SQL Server, MySQL 8+).

---


## 👨‍💻 Author

Danish Omondi – ALX Backend Engineering Student  
Passionate about building scalable web apps and teaching technical workflows.
