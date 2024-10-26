# Netflix Movies and TV Shows Data Analysis Using SQL
![image](https://github.com/user-attachments/assets/3f907cf9-aef1-4d62-979f-6c7cd504ff34)
## Project Overview: Netflix Data Analysis

## Objective:
The objective of this project is to analyze Netflix's extensive dataset to uncover insights related to show types, ratings, release years, directors, genres, and more. This analysis aims to provide valuable information that can help understand viewing trends and preferences among Netflix users.

## Data Source:
The dataset used in this project comprises various attributes of shows available on Netflix, including titles, types (movie or TV show), ratings, release years, directors, countries, and genres.

## Key Questions and SQL Queries:
Below are the key questions addressed in the project along with their corresponding SQL queries:
**EASY**

1.**What is the count of each show type (Movie, TV Show)?**
```sql
   SELECT type, COUNT(*) AS count
FROM netflix
GROUP BY type;


3. Top Ratings: Identifying the most common ratings for shows and movies.
4. Unique Countries: Counting the unique countries represented in the dataset.
5. Popular Release Years: Determining the most common release years for Netflix content.
6. Directors' Titles: Identifying the directors with the most titles in the dataset.
7. Average Release Year: Calculating the average release year based on show types.
8. Genre Combinations: Analyzing the most common genre combinations.
9. Show Duration Categories: Categorizing shows based on their duration (for Movies by minutes and TV Shows by seasons).
10. Latest Releases: Identifying shows released in the most recent year.
11. Country Titles: Finding out which countries have the most titles available on Netflix.

## Methodology:
The analysis employs SQL queries to extract and manipulate the data, allowing for the calculation of various metrics and insights. The results are presented in a structured format, highlighting significant trends and observations.

## Tools Used:
• SQL: For data extraction and querying.

## Key Findings:
• The analysis reveals the distribution of show types and ratings, highlights popular genres, and provides insights into the viewing landscape across different countries and time periods.
• Recommendations can be drawn for content acquisition strategies based on the trends identified.


