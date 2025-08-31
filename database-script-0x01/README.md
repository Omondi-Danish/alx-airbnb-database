# 🧱 Airbnb Database Schema

This directory contains the SQL schema for the Airbnb-style booking system. It defines all core entities, relationships, constraints, and indexes required to build a scalable and normalized relational database.

---

## 📦 Tables Defined

- `User`: Stores guest and host information
- `Property`: Listings created by hosts
- `Booking`: Reservations made by guests
- `Payment`: Transactions linked to bookings
- `Review`: Feedback from users on properties
- `Amenity`: Features available in properties
- `PropertyAmenity`: Join table for many-to-many relationship

---

## 🔐 Constraints

- Primary keys on all tables
- Foreign keys to enforce relationships
- `CHECK` constraints for valid roles, statuses, and ratings
- `UNIQUE` constraint on user email
- Composite key on `PropertyAmenity` for many-to-many mapping

---

## 🚀 Indexes

Indexes are added to improve query performance:

- `idx_property_location`: Speeds up location-based property searches
- `idx_booking_dates`: Optimizes date range queries
- `idx_user_email`: Ensures fast lookup by email

---

## 🛠️ Usage

To initialize the database:

1. Clone the repository
2. Navigate to `database-script-0x01/`
3. Run the `schema.sql` file in your SQL environment (e.g., PostgreSQL, MySQL)
4. Verify table creation and relationships

---

## 📬 Contact

For questions or contributions, reach out to:

- 📱 +254 791 561 098  
- 📧 omondidanish77@gmail.com
