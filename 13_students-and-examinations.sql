-- Problem: Students and Examinations
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: JOIN / CROSS JOIN / Aggregation

/*
Explanation:
We need to show how many times each student attended each subject exam.

Step 1:
CROSS JOIN Students and Subjects
→ Ensures every student is paired with every subject,
  even if they never attended that subject's exam.

Step 2:
LEFT JOIN Examinations
→ Matches student_id and subject_name.
→ If no exam exists, values become NULL.

Step 3:
COUNT(e.student_id)
→ Counts only non-NULL exam records.
→ If student never attended, count becomes 0.

Step 4:
GROUP BY student and subject
→ Required to calculate count per pair.

Step 5:
ORDER BY student_id and subject_name
→ Ensures sorted output as required.
*/

SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.student_id) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
       ON s.student_id = e.student_id
      AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;
