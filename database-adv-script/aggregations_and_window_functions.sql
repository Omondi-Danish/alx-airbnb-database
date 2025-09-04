-- 🧮 Aggregation Query:
-- Find the total number of bookings made by each user

SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(bookings.id) AS total_bookings
FROM 
    users
LEFT JOIN 
    bookings ON users.id = bookings.user_id
GROUP BY 
    users.id, users.name
ORDER BY 
    total_bookings DESC;

-- 🪜 Window Function Query: RANK
-- Rank properties based on the total number of bookings they have received

SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    COUNT(bookings.id) AS booking_count,
    RANK() OVER (ORDER BY COUNT(bookings.id) DESC) AS booking_rank
FROM 
    properties
LEFT JOIN 
    bookings ON properties.id = bookings.property_id
GROUP BY 
    properties.id, properties.name
ORDER BY 
    booking_rank ASC;

-- 🪜 Window Function Query: ROW_NUMBER
-- Assign a unique row number to each property based on booking count

SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    COUNT(bookings.id) AS booking_count,
    ROW_NUMBER() OVER (ORDER BY COUNT(bookings.id) DESC) AS booking_row_number
FROM 
    properties
LEFT JOIN 
    bookings ON properties.id = bookings.property_id
GROUP BY 
    properties.id, properties.name
ORDER BY 
    booking_row_number ASC;
