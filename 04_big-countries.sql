-- Problem: Big Countries
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Basic SELECT

/*
Explanation:
A country is considered "big" if:
- its area is at least 3,000,000 OR
- its population is at least 25,000,000

We use OR because satisfying either condition is enough.
*/

SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;
