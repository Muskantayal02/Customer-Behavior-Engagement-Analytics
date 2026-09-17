-- ==========================================================
-- Project: Customer Analytics
--
-- Business Problem:
-- Analyse customer behaviour and engagement patterns in an
-- online retail dataset using SQL.
--
-- Related Research Topic:
-- Digital Marketing Strategies and Customer Engagement
-- in the Online Retail Industry
--
-- Tool: SQLite (DB Browser for SQLite)
-- Database: Customer_Analytics.db
-- Dataset/Table: Customer_Analytics
--
-- Section 3: Business Analysis and Customer Insights
-- Author: Muskan Tayal
-- ==========================================================

-- Query 1: Calculate average customer spending by membership type

SELECT
    "Membership Type",
    ROUND(AVG("Total Spend"),2) AS Average_Total_Spend
FROM Customer_Analytics
GROUP BY "Membership Type"
ORDER BY Average_Total_Spend DESC;

-- Query 2: Calculate average customer rating by membership type

SELECT
    "Membership Type",
    ROUND(AVG("Average Rating"),2) AS Average_Customer_Rating
FROM Customer_Analytics
GROUP BY "Membership Type"
ORDER BY Average_Customer_Rating DESC;

-- Query 3: Analyse customer satisfaction across membership types

SELECT
    "Membership Type",
    "Satisfaction Level",
    COUNT(*) AS Customer_Count
FROM Customer_Analytics
GROUP BY
    "Membership Type",
    "Satisfaction Level"
ORDER BY
    "Membership Type",
    "Satisfaction Level";

-- Query 4: Analyse customer satisfaction by discount status

SELECT
    "Discount Applied",
    "Satisfaction Level",
    COUNT(*) AS Customer_Count
FROM Customer_Analytics
GROUP BY
    "Discount Applied",
    "Satisfaction Level"
ORDER BY
    "Discount Applied",
    "Satisfaction Level";

-- Query 5: Calculate average customer spending by city

SELECT
    City,
    ROUND(AVG("Total Spend"),2) AS Average_Total_Spend
FROM Customer_Analytics
GROUP BY City
ORDER BY Average_Total_Spend DESC;

-- Query 6: Identify the top 10 highest-spending customers

SELECT
    "Customer ID",
    City,
    "Membership Type",
    "Total Spend"
FROM Customer_Analytics
ORDER BY "Total Spend" DESC
LIMIT 10;

-- Query 7: Identify customers inactive for more than 30 days

SELECT
    "Customer ID",
    City,
    "Membership Type",
    "Days Since Last Purchase"
FROM Customer_Analytics
WHERE "Days Since Last Purchase" > 30
ORDER BY "Days Since Last Purchase" DESC;

-- Query 8: Identify high-value customers

SELECT
    "Customer ID",
    City,
    "Membership Type",
    "Total Spend",
    "Average Rating",
    "Discount Applied"
FROM Customer_Analytics
WHERE "Total Spend" > 1000
ORDER BY "Total Spend" DESC;