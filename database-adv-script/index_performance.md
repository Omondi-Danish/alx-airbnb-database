# 🚀 Index Optimization – Airbnb Database

## 📁 Repository: `alx-airbnb-database`
### 📂 Directory: `database-adv-script`
### 📄 Files:
- `database_index.sql`
- `index_performance.md`

---

## 🎯 Objective

Improve query performance by identifying high-usage columns and creating indexes on them.

---

## 🔍 Step 1: Identify High-Usage Columns

Based on query patterns across the Airbnb-style schema, the following columns are frequently accessed:

| Table       | Column           | Usage Context         |
|-------------|------------------|------------------------|
| `users`     | `id`             | JOIN with `bookings`  |
|             | `email`          | WHERE clause (login)  |
| `properties`| `id`             | JOIN with `bookings`, `reviews` |
|             | `location`       | WHERE clause (search) |
| `bookings`  | `user_id`        | JOIN with `users`     |
|             | `property_id`    | JOIN with `properties`|
|             | `booking_date`   | ORDER BY, filters     |

---

## 🛠️ Step 2: Create Indexes

All relevant `CREATE INDEX` statements are saved in `database_index.sql`.

These indexes are designed to:
- Speed up JOIN operations
- Improve WHERE clause filtering
- Optimize ORDER BY sorting

---

## 📊 Step 3: Measure Performance

Use `EXPLAIN` or `ANALYZE` to compare query execution before and after indexing.

### 🧪 Sample Query (Before Indexing)
```sql
EXPLAIN SELECT * 
FROM bookings 
JOIN users ON bookings.user_id = users.id 
WHERE bookings.booking_date > '2025-01-01' 
ORDER BY bookings.booking_date DESC;
