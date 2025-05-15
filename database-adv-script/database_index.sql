-- Indexes on frequently used columns

-- Index on users' email
CREATE INDEX idx_users_email ON users(email);

-- Index on bookings' start_date
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Index on properties' location
CREATE INDEX idx_properties_location ON properties(location);

-- Performance check using EXPLAIN ANALYZE

-- Check query performance before/after indexing email in users table
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'example@example.com';

-- Check query performance for bookings filtered by start_date
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date = '2024-01-01';

-- Check query performance for properties filtered by location
EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Addis Ababa';
