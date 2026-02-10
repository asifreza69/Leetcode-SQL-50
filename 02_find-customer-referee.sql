-- Problem: Find Customer Referee
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Basic SELECT

/*
Explanation:
We need customers whose referee_id is NOT equal to 2.
However, if referee_id is NULL, it means the customer has no referee,
and such customers should also be included.

So:
- referee_id != 2 → include
- referee_id IS NULL → include
*/

SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;
