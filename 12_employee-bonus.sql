-- Problem: Employee Bonus
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Basic JOIN

/*
Explanation:
We need employees whose bonus is less than 1000
or who did not receive any bonus.

- LEFT JOIN is used to keep all employees.
- If an employee has no bonus record, bonus will be NULL.
- We filter rows where bonus < 1000 OR bonus IS NULL.
*/

SELECT e.name,
       b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000
   OR b.bonus IS NULL;
