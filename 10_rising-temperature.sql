-- Problem: Rising Temperature
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Subqueries / Self Join

/*
Explanation:
We need to find days where the temperature is higher than the previous day.

- We compare the Weather table with itself (self join).
- w1 represents the current day.
- w2 represents the previous day.
- DATEDIFF(w1.recordDate, w2.recordDate) = 1 ensures consecutive days.
- If today's temperature is greater than yesterday's, we return w1.id.
*/

SELECT w1.id
FROM Weather w1,
     Weather w2
WHERE w1.temperature > w2.temperature
  AND DATEDIFF(w1.recordDate, w2.recordDate) = 1;
