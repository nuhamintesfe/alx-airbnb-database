-- 2.1 Aggregation: Total bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2.2 Window Function: Rank properties by total bookings
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM bookings
GROUP BY property_id;
