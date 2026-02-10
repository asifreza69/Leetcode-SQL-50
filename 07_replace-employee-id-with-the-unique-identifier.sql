-- Problem: Replace Employee ID With The Unique Identifier
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Basic JOIN

/*
Explanation:
We need to display each employee's name along with their unique identifier.
Not every employee has a unique_id, so we use a LEFT JOIN.

- LEFT JOIN ensures all employees from the Employees table are included.
- If an employee does not have a matching record in EmployeeUNI,
  the unique_id will be NULL.
*/

SELECT u.unique_id AS unique_id,
       e.name
FROM Employees e
LEFT JOIN EmployeeUNI u
ON e.id = u.id;
