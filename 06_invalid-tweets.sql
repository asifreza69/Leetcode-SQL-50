-- Problem: Invalid Tweets
-- Platform: LeetCode
-- Difficulty: Easy
-- Topic: Basic SELECT

/*
Explanation:
A tweet is considered invalid if the length of its content
is greater than 15 characters.

- LENGTH(content) returns the number of characters in the tweet.
- We filter tweets whose length is more than 15.
*/

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
