-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Basic JOIN

/*
Explanation:
We need to find how many times each customer visited
without making any transaction.

- We LEFT JOIN Visits with Transactions using visit_id.
- If transaction_id is NULL, it means no transaction was made.
- We count such visits per customer using GROUP BY.
*/

SELECT v.customer_id,
       COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
