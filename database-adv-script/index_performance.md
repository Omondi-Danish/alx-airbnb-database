# 🧠 Index Optimization – Airbnb Database

## 📁 Repository: `alx-airbnb-database`
### 📂 Directory: `database-adv-script`
### 📄 File: `database_index.sql`

---

## 🎯 Objective

Improve query performance by identifying high-usage columns and creating indexes on them.

---

## 🔍 Step 1: Identify High-Usage Columns

Based on common query patterns (JOINs, WHERE filters, ORDER BY), the following columns are frequently accessed:

### 🧑‍💻 `users` table
- `id` (used in JOINs with `bookings`)
- `email` (used in login or lookup queries)

### 🏠 `properties` table
- `id` (used in JOINs with `bookings` and `reviews`)
- `location` (used in search filters)

### 📅 `bookings` table
- `user_id` (used in JOINs with `users`)
- `property_id` (used in JOINs with `properties`)
- `booking_date` (used in ORDER BY and date filters)

---

EXPLAIN SELECT * 
FROM bookings 
JOIN users ON bookings.user_id = users.id 
WHERE bookings.booking_date > '2025-01-01' 
ORDER BY bookings.booking_date DESC;


## 🛠️ Step 2: Create Indexes

The following SQL commands are saved in `database_index.sql`:

```sql
-- Indexes for users table
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_users_email ON users(email);

-- Indexes for properties table
CREATE INDEX idx_properties_id ON properties(id);
CREATE INDEX idx_properties_location ON properties(location);

-- Indexes for bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);
