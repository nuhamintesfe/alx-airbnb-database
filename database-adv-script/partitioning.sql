-- Example for PostgreSQL
CREATE TABLE bookings_partitioned (
    id SERIAL,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    ...
) PARTITION BY RANGE (start_date);

CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');
