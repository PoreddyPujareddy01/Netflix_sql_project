# Netflix Movies and TV Shows Data Analysis Using SQL
![image](https://github.com/user-attachments/assets/3f907cf9-aef1-4d62-979f-6c7cd504ff34)
## Project Overview: Netflix Data Analysis

## Objective:
The objective of this project is to analyze Netflix's extensive dataset to uncover insights related to show types, ratings, release years, directors, genres, and more. This analysis aims to provide valuable information that can help understand viewing trends and preferences among Netflix users.

## Data Source:
The dataset used in this project comprises various attributes of shows available on Netflix, including titles, types (movie or TV show), ratings, release years, directors, countries, and genres.

## Key Questions and SQL Queries:
Below are the key questions addressed in the project along with their corresponding SQL queries:
### EASY

__1.What is the count of each show type (Movie, TV Show)?__
```sql
   SELECT type, COUNT(*) AS count
   FROM netflix
   GROUP BY type;
```

__2.What are the top 5 most common ratings on Netflix?__
```sql
   SELECT rating, COUNT(*) AS count
   FROM netflix
   GROUP BY rating
   ORDER BY count DESC
   LIMIT 5;
```

__3.How many unique countries are represented in the Netflix dataset?__
```sql
   SELECT COUNT(DISTINCT country) AS unique_countries
   FROM netflix;
```

__4. What are the top 5 most common release years for shows and movies on Netflix?__
```sql
SELECT release_year, COUNT(*) AS show_count
FROM netflix
GROUP BY release_year
ORDER BY show_count DESC
LIMIT 5;
```

__5.Who are the top 5 directors with the most titles?__
```sql
SELECT director, COUNT(*) AS title_count
FROM netflix
GROUP BY director
ORDER BY title_count DESC
LIMIT 5;
```

__6.What is the average release year by show type?__
```sql
SELECT type, AVG(release_year) AS average_release_year
FROM netflix
GROUP BY type;
```

__7.What are the most common genre combinations on Netflix?__
```sql
SELECT listed_in, COUNT(*) AS count
FROM netflix
GROUP BY listed_in
ORDER BY count DESC
LIMIT 5;
```

__8.How many shows are there per duration category (e.g., Movies by Minutes, TV Shows by Seasons)?__
```sql
SELECT type, duration, COUNT(*) AS count
FROM netflix
GROUP BY type, duration
ORDER BY count DESC;
```

__9.Which shows were released in the latest year?__
```sql
SELECT title, release_year
FROM netflix
WHERE release_year = (SELECT MAX(release_year) FROM netflix);
```

__10.What are the top 5 countries with the most titles on Netflix?__
```sql
SELECT country, COUNT(*) AS title_count
FROM netflix
GROUP BY country
ORDER BY title_count DESC
LIMIT 5;
```

## Methodology:
The analysis employs SQL queries to extract and manipulate the data, allowing for the calculation of various metrics and insights. The results are presented in a structured format, highlighting significant trends and observations.

## Tools Used:
• SQL: For data extraction and querying.

## Key Findings:
• The analysis reveals the distribution of show types and ratings, highlights popular genres, and provides insights into the viewing landscape across different countries and time periods.
• Recommendations can be drawn for content acquisition strategies based on the trends identified.


