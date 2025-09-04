# 📈 Database Performance Monitoring – Airbnb Database

## 📁 Repository: `alx-airbnb-database`
### 📂 Directory: `database-adv-script`
### 📄 File: `performance_monitoring.md`

---

## 🎯 Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema-level adjustments.

---

## 🧪 Step 1: Monitor Query Performance

We used `EXPLAIN ANALYZE` to inspect execution plans for frequently used queries in the `bookings`, `users`, and `properties` tables.

### 🔍 Query 1: Filter bookings by date range
```sql
EXPLAIN ANALYZE
SELECT * 
FROM bookings 
WHERE booking_date BETWEEN '2025-01-01' AND '2025-03-31';
