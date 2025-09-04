-- ✅ Indexes for Users table
CREATE INDEX idx_users_id ON users(id); -- Used in JOINs with bookings
CREATE INDEX idx_users_email ON users(email); -- Used in login or lookup queries

-- ✅ Indexes for Properties table
CREATE INDEX idx_properties_id ON properties(id); -- Used in JOINs with bookings and reviews
CREATE INDEX idx_properties_location ON properties(location); -- Used in search filters

-- ✅ Indexes for Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id); -- Used in JOINs with users
CREATE INDEX idx_bookings_property_id ON bookings(property_id); -- Used in JOINs with properties
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date); -- Used in ORDER BY and date filters

-- 📊 Performance Benchmarking with EXPLAIN ANALYZE

-- 🔍 Query: Join bookings with users and filter by booking date
EXPLAIN ANALYZE
SELECT 
    bookings.id,
    bookings.booking_date,
    users.name,
    users.email
FROM 
    bookings
JOIN 
    users ON bookings.user_id = users.id
WHERE 
    bookings.booking_date > '2025-01-01'
ORDER BY 
    bookings.booking_date DESC;

-- 🔍 Query: Search properties by location and join with reviews
EXPLAIN ANALYZE
SELECT 
    properties.id,
    properties.name,
    properties.location,
    reviews.rating
FROM 
    properties
LEFT JOIN 
    reviews ON properties.id = reviews.property_id
WHERE 
    properties.location = 'Nairobi'
ORDER BY 
    reviews.rating DESC;
