-- INNER JOIN: Bookings with Users
SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
ORDER BY b.id;

-- LEFT JOIN: Properties with their Reviews (include properties without reviews)
SELECT p.*, r.*
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.id;

-- FULL OUTER JOIN workaround using UNION of LEFT and RIGHT JOIN
SELECT u.*, b.*
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id

UNION

SELECT u.*, b.*
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id
ORDER BY user_id, booking_id;

