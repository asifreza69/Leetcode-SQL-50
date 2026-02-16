-- Problem: Confirmation Rate
-- Platform: LeetCode
-- Difficulty: Medium
-- Topic: JOIN / Aggregation

/*
Explanation:
We need to calculate the confirmation rate for each user.

Confirmation rate =
    number of confirmed actions / total confirmation requests

Step 1:
LEFT JOIN Signups with Confirmations
→ Ensures all users appear, even if they have no confirmations.

Step 2:
SUM(action = 'confirmed')
→ In MySQL, this condition returns 1 for true and 0 for false.
→ So it counts confirmed actions.

Step 3:
COUNT(*)
→ Counts total confirmation attempts per user.

Step 4:
ROUND(..., 2)
→ Result rounded to 2 decimal places.

Step 5:
IFNULL(..., 0.00)
→ If a user has no confirmation records,
   return 0.00 instead of NULL.
*/

SELECT s.user_id,
       IFNULL(ROUND(SUM(c.action = 'confirmed') / COUNT(c.action), 2), 0.00)
       AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;
