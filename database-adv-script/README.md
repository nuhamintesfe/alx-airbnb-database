## Queries Implemented

### 1 INNER JOIN: Bookings with the Users Who Made Them

This query retrieves all bookings along with the corresponding users who made those bookings.

```sql
SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;
```
### 2. LEFT JOIN – Properties and Their Reviews
This query returns all properties, whether or not they have any reviews.

It uses LEFT JOIN to include every property from the properties table.
```sql
SELECT p.*, r.*
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;
SELECT u.*, b.*
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
```
### 3. FULL OUTER JOIN (Simulated with UNION) – All Users and All Bookings
```sql
UNION
SELECT u.*, b.*
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;
```
MySQL doesn't support FULL OUTER JOIN directly, so I simulate it using a UNION of LEFT JOIN and RIGHT JOIN.

This query retrieves:

All users, even if they have no bookings.

All bookings, even if they are not linked to a valid user (possibly due to data inconsistency or testing).
