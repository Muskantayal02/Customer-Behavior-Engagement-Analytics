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
-- Section 2: Descriptive Analysis
-- Author: Muskan Tayal
-- ==========================================================

-- Query 1: Generate summary statistics for key numerical variables

SELECT
    MIN(Age) AS Minimum_Age,
    MAX(Age) AS Maximum_Age,
    ROUND(AVG(Age),2) AS Average_Age,

    MIN("Total Spend") AS Minimum_Spend,
    MAX("Total Spend") AS Maximum_Spend,
    ROUND(AVG("Total Spend"),2) AS Average_Spend,

    MIN("Items Purchased") AS Minimum_Items,
    MAX("Items Purchased") AS Maximum_Items,
    ROUND(AVG("Items Purchased"),2) AS Average_Items,

    MIN("Average Rating") AS Minimum_Rating,
    MAX("Average Rating") AS Maximum_Rating,
    ROUND(AVG("Average Rating"),2) AS Average_Rating,

    MIN("Days Since Last Purchase") AS Minimum_Days,
    MAX("Days Since Last Purchase") AS Maximum_Days,
    ROUND(AVG("Days Since Last Purchase"),2) AS Average_Days
FROM Customer_Analytics;

-- Query 2: Count customers by gender

SELECT
    Gender,
    COUNT(*) AS Customer_Count
FROM Customer_Analytics
GROUP BY Gender
ORDER BY Gender;

-- Query 3: Count customers by membership type

SELECT
    "Membership Type",
    COUNT(*) AS Customer_Count
FROM Customer_Analytics
GROUP BY "Membership Type"
ORDER BY "Membership Type";

-- Query 4: Count customers by city

SELECT
    City,
    COUNT(*) AS Customer_Count
FROM Customer_Analytics
GROUP BY City
ORDER BY City;

-- Query 5: Count customers by discount status

SELECT
    "Discount Applied",
    COUNT(*) AS Customer_Count
FROM Customer_Analytics
GROUP BY "Discount Applied"
ORDER BY "Discount Applied";

-- Query 6: Count customers by satisfaction level

SELECT
    "Satisfaction Level",
    COUNT(*) AS Customer_Count
FROM Customer_Analytics
GROUP BY "Satisfaction Level"
ORDER BY "Satisfaction Level";
