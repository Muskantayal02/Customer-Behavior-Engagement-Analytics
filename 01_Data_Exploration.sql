-- ==========================================================
-- Project: Customer Analytics
-- Business Problem:
-- Analyse customer behaviour and engagement patterns in an online retail dataset using SQL.
--
-- Related Research Topic:
-- Digital Marketing Strategies and Customer Engagement
-- in the Online Retail Industry
--
-- Tool: SQLite (DB Browser for SQLite)
-- Database: Customer_Analytics.db
-- Dataset: Customer_Analytics
--
-- Section 1: Data Exploration
-- Author: Muskan Tayal
-- ==========================================================

-- Query 1: Preview first 10 customer records
SELECT *
FROM Customer_Analytics
LIMIT 10;

-- Query 2: Count total number of customers
SELECT COUNT(*) AS Total_Customers
FROM Customer_Analytics;

-- Query 3: Display distinct customer cities
SELECT DISTINCT City
FROM Customer_Analytics;

-- Query 4: Display membership categories
SELECT DISTINCT "Membership Type"
FROM Customer_Analytics;

-- Query 5: Display satisfaction categories
SELECT DISTINCT "Satisfaction Level"
FROM Customer_Analytics;

-- Query 6: Dataset summary
SELECT
    COUNT(*) AS Total_Customers,
    COUNT(DISTINCT City) AS Total_Cities,
    COUNT(DISTINCT "Membership Type") AS Membership_Categories
FROM Customer_Analytics;