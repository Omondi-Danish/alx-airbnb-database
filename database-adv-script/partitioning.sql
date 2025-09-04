-- ⚙️ Step 1: Create a partitioned bookings table based on start_date (monthly partitions)

CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- ⚙️ Step 2: Create monthly partitions (example: Jan–Mar 2025)

CREATE TABLE bookings_jan2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');

CREATE TABLE bookings_feb2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');

CREATE TABLE bookings_mar2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');

-- ⚙️ Step 3: Sample query to test performance on partitioned table

EXPLAIN ANALYZE
SELECT 
    id, user_id, property_id, start_date, status
FROM 
    bookings_partitioned
WHERE 
    start_date BETWEEN '2025-02-01' AND '2025-02-28'
ORDER BY 
    start_date ASC;
