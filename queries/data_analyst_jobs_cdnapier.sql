--Question 1
SELECT COUNT(*) AS total_count
FROM data_analyst_jobs;
--Answer: 1793


--Question 2
SELECT * 
FROM data_analyst_jobs
LIMIT 10;
--Answer: ExxonMobil


--Question 3 (part 1)
SELECT COUNT(location) 
FROM data_analyst_jobs
WHERE location = 'TN';
--Question 3 (part 2)
SELECT COUNT(location) 
FROM data_analyst_jobs
WHERE location IN ('TN','KY');
--Answer: 21 in TN, 27 in either KY or TN.


--Question 4
SELECT COUNT(star_rating) 
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating>4;
--Answer: 3


--Question 5
SELECT COUNT(review_count) 
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--Answer: 151


--Question 6
SELECT location, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY location
ORDER BY avg_rating;
--Answer: NE has the highest average rating