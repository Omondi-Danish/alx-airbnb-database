# ⚡ Query Optimization Report – Airbnb Database

## 📁 Repository: `alx-airbnb-database`
### 📂 Directory: `database-adv-script`
### 📄 Files:
- `perfomance.sql`
- `optimization_report.md`

---

## 🎯 Objective

Refactor a complex query that retrieves booking data with user, property, and payment details to improve performance.

---

## 🔍 Initial Query Analysis

### Query Overview:
- Joins: `bookings`, `users`, `properties`, `payments`
- Filters: None
- Sorting: `ORDER BY bookings.booking_date DESC`

### Performance Issues:
- Multiple `INNER JOIN`s can exclude rows with missing relationships (e.g., unpaid bookings)
- No indexes used in filtering or sorting
- Full table scans observed in `EXPLAIN ANALYZE`

---

## 🛠️ Refactoring Strategy

### Changes Made:
- Switched to `LEFT JOIN` to include incomplete records (e.g., bookings without payments)
- Aliased tables for readability
- Ensured indexes exist on:
  - `bookings.user_id`
  - `bookings.property_id`
  - `payments.booking_id`
  - `bookings.booking_date`

### Benefits:
- Reduced join strictness improves row inclusion
- Indexes improve lookup and sorting speed
- Query plan shows reduced cost and faster execution time

---

## 📊 Benchmarking with EXPLAIN ANALYZE

| Metric               | Initial Query | Refactored Query |
|----------------------|---------------|------------------|
| Join Type            | INNER JOIN    | LEFT JOIN        |
| Execution Time       | High          | Lower            |
| Index Usage          | None          | Yes              |
| Row Inclusion        | Strict        | Flexible         |

---

## ✅ Summary

Refactoring complex queries by:
- Reducing unnecessary joins
- Using `LEFT JOIN` where appropriate
- Adding indexes to high-usage columns

...can significantly improve performance and data completeness.

---

## 👨‍💻 Author

Danish Omondi – ALX Backend Engineering Student  
Focused on scalable backend systems and performance-driven SQL design.
