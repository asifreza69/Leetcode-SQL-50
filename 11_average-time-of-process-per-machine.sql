-- Problem: Average Time of Process per Machine
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Aggregation / JOIN

/*
Explanation:
Each process has a 'start' and an 'end' record.
To calculate processing time:
- We self-join the Activity table on machine_id and process_id.
- a1 represents the start activity.
- a2 represents the end activity.
- Processing time for one process = end.timestamp - start.timestamp.
- We take the average processing time per machine.
- ROUND(..., 3) is used to format the result to 3 decimal places.
*/

SELECT a1.machine_id,
       ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity a1
JOIN Activity a2
  ON a1.machine_id = a2.machine_id
 AND a1.process_id = a2.process_id
 AND a1.activity_type = 'start'
 AND a2.activity_type = 'end'
GROUP BY a1.machine_id;
