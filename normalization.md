# Airbnb Database Normalization Report

## Objective
Ensure that all entities in the Airbnb database are in Third Normal Form (3NF) to promote data consistency, eliminate redundancy, and enhance scalability.

---

## 1. First Normal Form (1NF)
All tables have atomic attributes. No repeating groups or arrays exist.

## 2. Second Normal Form (2NF)
Every non-key attribute is fully functionally dependent on the table's primary key. There are no partial dependencies.

## 3. Third Normal Form (3NF)
All non-key attributes are only dependent on the primary key. No transitive dependencies exist.

---

## 4. Entity Analysis

### ✅ User
- Primary Key: `user_id`
- All attributes are directly dependent on `user_id`

### ✅ Property
- Primary Key: `property_id`
- Foreign Key: `host_id` references `User(user_id)`
- Attributes depend directly on `property_id`

### ✅ Booking
- Primary Key: `booking_id`
- Foreign Keys: `property_id`, `user_id`
- Attributes such as `status`, `start_date` are atomic and directly related to `booking_id`

### ✅ Payment
- Primary Key: `payment_id`
- Foreign Key: `booking_id`
- No transitive or derived attributes

### ✅ Review
- Primary Key: `review_id`
- Foreign Keys: `property_id`, `user_id`
- All attributes depend on `review_id`

### ✅ Message
- Primary Key: `message_id`
- Foreign Keys: `sender_id`, `recipient_id`
- No repeating fields or transitive dependencies

---

## ✅ Conclusion
The database schema for the Airbnb project is fully normalized to 3NF. No modifications were necessary.
