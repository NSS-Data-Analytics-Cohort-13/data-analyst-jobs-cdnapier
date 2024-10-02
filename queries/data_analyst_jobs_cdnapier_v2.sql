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


--Question 7
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;
--Answer: 881


--Question 8
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location='CA';
--Answer: 230


--Question 9
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count)>5000;
--Answer: 71 companies


--Question 10
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count)>5000
ORDER BY avg_rating DESC;
--Answer: Google, 4.3


--Question 11
SELECT title
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';
--Answer: 1636 titles


--Question 12
SELECT title
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%' 
AND title NOT LIKE '%Analytics%';
--Answer: 39 titles.  Most are misspellings of "Analyst" or "Analytics"


--Bonus
SELECT domain, COUNT(title) AS total_titles
FROM data_analyst_jobs
WHERE skill LIKE '%SQL%'
AND days_since_posting>21
AND domain IS NOT NULL
GROUP BY domain
ORDER BY total_titles DESC;
--Answer: Internet/Software, Banks/Financial Services, and Consulting/Business Services are the top 3