-- Problem:
-- Find all product IDs from the Products table
-- where the product is low fat and also recyclable.

-- Approach:
-- We filter the rows using WHERE clause.
-- 'low_fats' column should be 'Y'
-- 'recyclable' column should be 'Y'

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
