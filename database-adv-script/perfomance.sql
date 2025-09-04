-- 🔍 Initial Query: Retrieve all bookings with user, property, and payment details
EXPLAIN ANALYZE
SELECT 
    bookings.id AS booking_id,
    bookings.booking_date,
    users.id AS user_id,
    users.name AS user_name,
    properties.id AS property_id,
    properties.name AS property_name,
    payments.id AS payment_id,
    payments.amount,
    payments.status
FROM 
    bookings
JOIN 
    users ON bookings.user_id = users.id
JOIN 
    properties ON bookings.property_id = properties.id
JOIN 
    payments ON bookings.id = payments.booking_id
ORDER BY 
    bookings.booking_date DESC;

-- ⚙️ Refactored Query: Reduce joins and optimize performance
-- Assumes indexing on bookings.user_id, bookings.property_id, payments.booking_id

EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.booking_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount,
    pay.status
FROM 
    bookings b
LEFT JOIN 
    users u ON b.user_id = u.id
LEFT JOIN 
    properties p ON b.property_id = p.id
LEFT JOIN 
    payments pay ON b.id = pay.booking_id
ORDER BY 
    b.booking_date DESC;
