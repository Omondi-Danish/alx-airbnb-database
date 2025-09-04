# 🧩 Partitioning Performance Report – Airbnb Database

## 📁 Repository: `alx-airbnb-database`
### 📂 Directory: `database-adv-script`
### 📄 Files:
- `partitioning.sql`
- `partition_performance.md`

---

## 🎯 Objective

Optimize query performance on the large `bookings` table by implementing partitioning based on the `start_date` column.

---

## ⚙️ Implementation Summary

- Created a new table `bookings_partitioned` using `PARTITION BY RANGE (start_date)`
- Defined monthly partitions for January, February, and March 2025
- Ran a date-filtered query using `EXPLAIN ANALYZE` to compare performance

---

## 📊 Observations

| Metric                     | Before Partitioning | After Partitioning |
|----------------------------|----------------------|---------------------|
| Query Type                 | Full table scan      | Partition scan      |
| Execution Time            | Higher               | Lower               |
| Rows Scanned              | Entire table         | Only relevant month |
| Index Usage               | Limited              | More efficient      |

---

## ✅ Benefits

- **Reduced scan scope**: Queries only touch relevant partitions
- **Improved performance**: Faster execution for date-range queries
- **Scalability**: Easier to manage large datasets over time

---

## 🧠 Notes

- Partitioning is ideal for time-series data like bookings
- Future partitions can be added dynamically (e.g., monthly or quarterly)
- Combine with indexing for even better performance

---

## 👨‍💻 Author

Danish Omondi – ALX Backend Engineering Student  
Focused on scalable backend systems and performance-driven SQL design.
