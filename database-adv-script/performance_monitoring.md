# Database Performance Monitoring Report

## Tool Used
- `EXPLAIN ANALYZE`
- `SHOW PROFILE`

## Observations
- Booking queries showed full table scans.
- Lack of indexes on join conditions.

## Fixes
- Added index on `bookings.user_id`
- Adjusted schema to denormalize payment table slightly

## Results
- Query scan reduced from 25,000 rows to 2,000
- Execution time improved by 70%
