# Partitioning Performance Report

## Issue
Queries on bookings by date were slow due to large scan size.

## Solution
Implemented range partitioning on `start_date`.

## Result
- Pre-partition: query took 400ms
- Post-partition: query took 50ms

Partition pruning helped reduce the number of rows scanned.
