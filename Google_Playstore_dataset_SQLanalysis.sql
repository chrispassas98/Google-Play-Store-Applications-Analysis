--Determine how many apps are available in each category on the Google Play Store(Count of Apps per Category):

SELECT
Category,
COUNT(*) AS App_count
FROM googleplaystore$
GROUP BY Category
ORDER BY App_count DESC;


--Find out the average user rating for apps within each category(Average Rating by Category):

SELECT
Category,
AVG(Rating) AS Average_rating
FROM googleplaystore$
WHERE Rating is NOT NULL
GROUP BY Category
ORDER BY Average_rating DESC;

--Identify the 20 apps with the most reviews(20 Most Reviewed Apps):

SELECT TOP 20 
App, 
MAX(Reviews) AS Max_Reviews
FROM googleplaystore$
GROUP BY App
ORDER BY Max_Reviews DESC;


--Highlight the app categories with the highest total number of installs(Categories with Most Installs):

SELECT Category, SUM(Installs) AS Total_Installs
FROM googleplaystore$
GROUP BY Category
ORDER BY Total_Installs DESC;


--Compare the number of free apps to paid apps(Distribution of Free vs. Paid Apps):

SELECT
Type,
COUNT(*) AS Type_count
FROM googleplaystore$
GROUP BY Type;


--Determine the most popular genres based on the number of apps or installs(Popular Genres):

SELECT Genres, COUNT(*) AS Genre_Count
FROM googleplaystore$
GROUP BY Genres
ORDER BY Genre_Count DESC;

--Analyze the distribution of apps according to their content rating (e.g., Everyone, Teen, Mature)-(Which age groups are targeted most(Apps by Content Rating):

SELECT
Content_Rating,
COUNT(*) AS App_count
FROM googleplaystore$
GROUP BY Content_Rating
ORDER BY App_count DESC;



--List the 50 apps with the highest number of installs(Top 50 Most installed app):

SELECT TOP 50
App,
MAX(installs) AS Total_installs
FROM googleplaystore$
GROUP BY App
ORDER BY Total_Installs DESC;


