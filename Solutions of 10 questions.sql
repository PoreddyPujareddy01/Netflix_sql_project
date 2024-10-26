-- Netflix Data Analysis using SQL
-- Solutions of 10 problems

EASY:
  
1. What is the count of each show type (Movie, TV Show)?

SELECT type, COUNT(*) AS count
FROM netflix
GROUP BY type;

2. What are the top 5 most common ratings on Netflix?

SELECT rating, COUNT(*) AS count
FROM netflix
GROUP BY rating
ORDER BY count DESC
LIMIT 5;

3. How many unique countries are represented in the Netflix dataset?

SELECT COUNT(DISTINCT country) AS unique_countries
FROM netflix;

INTERMEDIATE:
  
4. What are the top 5 most common release years for shows and movies on Netflix?

SELECT release_year, COUNT(*) AS show_count
FROM netflix
GROUP BY release_year
ORDER BY show_count DESC
LIMIT 5;

5. Who are the top 5 directors with the most titles?

SELECT director, COUNT(*) AS title_count
FROM netflix
GROUP BY director
ORDER BY title_count DESC
LIMIT 5;

6. What is the average release year by show type?

SELECT type, AVG(release_year) AS average_release_year
FROM netflix
GROUP BY type;

HARD:
  
7.What are the most common genre combinations on Netflix?

SELECT listed_in, COUNT(*) AS count
FROM netflix
GROUP BY listed_in
ORDER BY count DESC
LIMIT 5;

8. How many shows are there per duration category (e.g., Movies by Minutes, TV Shows by Seasons)?

SELECT type, duration, COUNT(*) AS count
FROM netflix
GROUP BY type, duration
ORDER BY count DESC;

9.Which shows were released in the latest year?

SELECT title, release_year
FROM netflix
WHERE release_year = (SELECT MAX(release_year) FROM netflix);

10.What are the top 5 countries with the most titles on Netflix?

SELECT country, COUNT(*) AS title_count
FROM netflix
GROUP BY country
ORDER BY title_count DESC
LIMIT 5;
