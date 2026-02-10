-- Problem: Article Views I
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Basic SELECT

/*
Explanation:
We need authors who viewed their own articles.
This happens when author_id is equal to viewer_id.

- DISTINCT is used to avoid duplicate author IDs.
- We rename author_id as id as required by the problem.
- Results are ordered in ascending order.
*/

SELECT DISTINCT author_id AS id
FROM Views
WHERE viewer_id = author_id
ORDER BY author_id ASC;
