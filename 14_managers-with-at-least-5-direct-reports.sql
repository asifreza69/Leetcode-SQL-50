-- Problem: Managers with at Least 5 Direct Reports
-- Platform: LeetCode
-- Difficulty: Medium
-- Topic: Self JOIN / Aggregation

/*
Explanation:
We need to find managers who have at least 5 employees reporting to them.

- We self-join the Employee table.
- e1 represents the manager.
- e2 represents employees.
- e1.id = e2.managerId connects manager with their direct reports.
- GROUP BY manager id.
- HAVING COUNT(*) >= 5 ensures at least 5 direct reports.
*/

SELECT e1.name
FROM Employee e1
JOIN Employee e2
  ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(*) >= 5;
