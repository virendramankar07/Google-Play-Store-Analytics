USE google_play_store;

CREATE TABLE apps (
    App VARCHAR(255),
    Category VARCHAR(100),
    Rating FLOAT,
    Reviews BIGINT,
    Size VARCHAR(50),
    Installs BIGINT,
    Type VARCHAR(20),
    Price FLOAT,
    Content_Rating VARCHAR(50),
    Genres VARCHAR(100)
);

SELECT * FROM apps
LIMIT 10;

SELECT COUNT(*) AS Total_Apps
FROM apps;

SELECT App, Installs
FROM apps
ORDER BY Installs DESC
LIMIT 10;

SELECT App, Rating
FROM apps
ORDER BY Rating DESC
LIMIT 10;

SELECT App, Rating
FROM apps
ORDER BY Rating DESC
LIMIT 10;

SELECT Category,
       ROUND(AVG(Rating),2) AS Avg_Rating
FROM apps
GROUP BY Category
ORDER BY Avg_Rating DESC;

SELECT Category,
       COUNT(*) AS Total_Apps
FROM apps
GROUP BY Category
ORDER BY Total_Apps DESC;

SELECT Type,
       COUNT(*) AS Total_Apps
FROM apps
GROUP BY Type;

SELECT App, Reviews
FROM apps
ORDER BY Reviews DESC
LIMIT 10;

SELECT Category,
       ROUND(AVG(Installs),0) AS Avg_Installs
FROM apps
GROUP BY Category
ORDER BY Avg_Installs DESC;

SELECT App, Price
FROM apps
WHERE Type = 'Paid'
ORDER BY Price DESC
LIMIT 10;

SELECT App, Rating
FROM apps
WHERE Rating > 4.5
ORDER BY Rating DESC;

SELECT App, Installs
FROM apps
WHERE Installs >= 1000000
ORDER BY Installs DESC;

SELECT Category,
       SUM(Reviews) AS Total_Reviews
FROM apps
GROUP BY Category
ORDER BY Total_Reviews DESC;

SELECT Category,
       SUM(Installs) AS Total_Installs
FROM apps
GROUP BY Category
ORDER BY Total_Installs DESC;

SELECT App,
       Price,
       Installs,
       (Price * Installs) AS Revenue_Potential
FROM apps
WHERE Type = 'Paid'
ORDER BY Revenue_Potential DESC
LIMIT 10;

SELECT App,
       COUNT(*) AS Duplicate_Count
FROM apps
GROUP BY App
HAVING COUNT(*) > 1;

SELECT Category,
       ROUND(AVG(Reviews),0) AS Avg_Reviews
FROM apps
GROUP BY Category
ORDER BY Avg_Reviews DESC;

SELECT Genres,
       COUNT(*) AS Total_Apps
FROM apps
GROUP BY Genres
ORDER BY Total_Apps DESC
LIMIT 10;

SELECT App,
       Rating,
       Installs
FROM apps
WHERE Rating < 3
AND Installs > 1000000
ORDER BY Installs DESC;

SELECT * FROM apps;