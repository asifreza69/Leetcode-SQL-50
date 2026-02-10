-- Problem: Product Sales Analysis I
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Basic JOIN

/*
Explanation:
We need to display the product name along with the year and price of each sale.

- Sales table contains product_id, year, and price.
- Product table contains product_name.
- We use a LEFT JOIN to match sales with their product details.
*/

SELECT p.product_name,
       s.year,
       s.price
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id;
