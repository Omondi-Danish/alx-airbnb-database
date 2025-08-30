# 🏠 ALX Airbnb Database Project

## 📘 Overview

This repository contains the database design and implementation for an Airbnb-style booking system. It includes an Entity-Relationship Diagram (ERD), normalization steps to achieve Third Normal Form (3NF), SQL schema definitions, and sample data scripts to simulate real-world usage.

The goal is to build a scalable, normalized, and query-efficient relational database that supports core functionalities such as user registration, property listing, booking management, payments, and reviews.

---

## 🧩 Entity-Relationship Diagram (ERD)

The ERD visually represents the structure of the database, including entities, attributes, and relationships.

### 📦 Entities and Attributes

- **User**: `user_id`, `name`, `email`, `phone`, `password`, `role`
- **Property**: `property_id`, `title`, `description`, `location`, `price`, `host_id`
- **Booking**: `booking_id`, `user_id`, `property_id`, `start_date`, `end_date`, `status`
- **Payment**: `payment_id`, `booking_id`, `amount`, `method`, `status`, `date`
- **Review**: `review_id`, `user_id`, `property_id`, `rating`, `comment`, `date`

### 🔗 Relationships

- One **User** can make many **Bookings**
- One **Property** can be booked many times
- One **Host (User)** can list many **Properties**
- One **Booking** has one **Payment**
- One **User** can leave many **Reviews** on different **Properties**

📎 ERD Image:  
![Airbnb ER Diagram](ERD/airbnb-erd.png)

---

## 🧠 Normalization to Third Normal Form (3NF)

To ensure data integrity and eliminate redundancy, the schema was reviewed and adjusted to meet 3NF standards.

### ✅ Normalization Steps

1. **1NF**: Ensured atomic values and unique rows.
2. **2NF**: Removed partial dependencies by separating multi-attribute keys.
3. **3NF**: Eliminated transitive dependencies by isolating derived or dependent data (e.g., separating payment details from booking).

📄 See detailed explanation in [`ERD/requirements.md`](ERD/requirements.md)

---

## 🛠️ SQL Schema Definition

SQL scripts are provided to define the database structure using `CREATE TABLE` statements with appropriate constraints.

### 🧱 Features:
- Primary and foreign keys
- Data types optimized for performance
- Indexes on frequently queried columns

📄 See schema in [`sql/schema.sql`](sql/schema.sql)

---

## 📥 Sample Data Scripts

To simulate real-world usage, sample data is inserted for each entity using `INSERT INTO` statements.

### 🧪 Sample Data Includes:
- Multiple users (guests and hosts)
- Properties listed by hosts
- Bookings made by guests
- Payments linked to bookings
- Reviews submitted by users

📄 See data in [`sql/sample_data.sql`](sql/sample_data.sql)

---

## 🚀 Getting Started

To set up the database locally:

1. Clone this repository
2. Run the schema script to create tables
3. Run the sample data script to populate the database
4. Use SQL queries to explore relationships and test functionality

---

## 🤝 Contributing

Feel free to fork, suggest improvements, or add new features like amenities, messaging, or admin dashboards.

📬 Contact:  
📱 +254 791 561 098  
📧 omondidanish77@gmail.com
