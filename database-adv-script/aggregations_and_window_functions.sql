-- 2.1 Aggregation: Total bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2.2 Window Function: Rank properties by total bookings using RANK()
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM bookings
GROUP BY property_id;

-- 2.3 Window Function: Assign row numbers to bookings ordered by start_date per property
SELECT booking_id, property_id, start_date,
       ROW_NUMBER() OVER (PARTITION BY property_id ORDER BY start_date) AS booking_order
FROM bookings;
