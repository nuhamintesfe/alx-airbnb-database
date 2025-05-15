-- Indexes on frequently used columns

-- Index on users' email
CREATE INDEX idx_users_email ON users(email);

-- Index on bookings' start_date
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Index on properties' location
CREATE INDEX idx_properties_location ON properties(location);
