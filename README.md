# Customer-Behavior-Engagement-Analytics
An end-to-end customer analytics project using Microsoft Excel, SQL, and Power BI to analyze customer behavior, engagement patterns, spending, satisfaction, and purchasing activity.

---

## PROJECT OVERVIEW

This project presents an end-to-end customer analytics workflow, combining exploratory data analysis, SQL-based business analysis, and interactive Power BI visualization.

The analysis examines customer spending, purchasing behavior, satisfaction, membership, discounts, ratings, purchasing recency, and customer segments to identify meaningful patterns and business-relevant insights.

The project demonstrates how raw customer-level data can be transformed into structured analysis and decision-oriented insights using multiple analytical tools.

---
## BUSINESS / ANALYTICAL PROBLEM

Customer-level retail data contains valuable information about purchasing behavior, satisfaction, spending patterns, membership, discounts, and purchase recency. However, these individual data points need to be organized and analyzed systematically to identify meaningful customer segments and business patterns.

This project addresses the following analytical questions:

- How do customer characteristics and purchasing patterns vary across segments?
- How does customer spending differ across membership categories and cities?
- What patterns can be observed in customer satisfaction?
- How are satisfaction levels distributed across discount and membership categories?
- Which customers represent high-value segments based on spending?
- Which customers show signs of purchase inactivity?
- How can Excel, SQL, and Power BI be combined into an end-to-end analytical workflow?
- How can customer-level findings support retention and engagement-oriented decision-making?

---

## PROJECT OBJECTIVES

- Explore and profile customer-level data.
- Perform descriptive and exploratory analysis using Microsoft Excel.
- Analyze customer behavior using SQL and business-oriented queries.
- Identify high-value and inactive customer segments.
- Examine relationships between membership, discounts, satisfaction, spending, and other customer indicators.
- Develop an interactive Power BI dashboard for customer analytics.
- Translate analytical findings into business insights and recommendations.
- Demonstrate an end-to-end workflow from data preparation to visualization and interpretation.

---

## DATASET

**Dataset:** E-Commerce Customer Behavior Dataset

**Source:** Kaggle

**Records:** 350 customers

**Variables:** 11

### Key Variables

| Category | Variables |
|---|---|
| Customer Profile | Customer ID, Gender, Age, Age Group, City |
| Customer Segment | Membership Type |
| Purchase Behavior | Total Spend, Items Purchased |
| Customer Experience | Average Rating, Satisfaction Level |
| Marketing / Purchase Context | Discount Applied |
| Purchase Recency | Days Since Last Purchase |

The dataset was reviewed for structure, duplicate customer IDs, missing values, and variable consistency before analysis.

Two records contained missing values for Satisfaction Level and were excluded from satisfaction-specific analysis where required.

---

# ANALYTICAL WORKFLOW

```text
Dataset Acquisition & Validation
              ↓
Excel — Data Profiling & Exploratory Analysis
              ↓
SQL — Business-Oriented Customer Analysis
              ↓
Power BI — Interactive Dashboard Development
              ↓
Cross-Tool Validation & Interpretation
              ↓
Customer Insights & Recommendations
```

---

## TOOLS & TECHNOLOGIES

- **Microsoft Excel** — Data preparation, profiling, descriptive statistics, PivotTables, PivotCharts, and exploratory analysis
- **Power Query** — Data preparation and transformation
- **SQL / SQLite** — Data exploration, aggregation, filtering, grouping, and business-oriented analysis
- **DB Browser for SQLite** — SQL development and query execution
- **Microsoft Power BI** — Data modelling, DAX measures, interactive visualization, dashboard development, and business reporting

---

# ANALYSIS & IMPLEMENTATION

## 1. EXCEL — EXPLORATORY DATA ANALYSIS

### Objective

The Excel stage was used to understand the structure, distribution, and relationships within the customer dataset before moving to query-based analysis.

### Analysis Performed

- Dataset profiling
- Data quality checks
- Gender distribution
- Membership distribution
- City distribution
- Satisfaction distribution
- Discount distribution
- Descriptive statistics
- Membership vs. satisfaction
- Discount vs. satisfaction
- Membership vs. average spending
- Membership vs. average rating
- Discount vs. average spending
- City vs. average spending

### Descriptive Statistics

| Metric | Minimum | Maximum | Mean | Median |
|---|---:|---:|---:|---:|
| Age | 26 | 43 | 33.60 | 32.50 |
| Total Spend | 410.80 | 1520.10 | 845.38 | 775.20 |
| Items Purchased | 7 | 21 | 12.60 | 12.00 |
| Average Rating | 3.00 | 4.90 | 4.02 | 4.10 |
| Days Since Last Purchase | 9 | 63 | 26.59 | 23.00 |

### Key Exploratory Observations

- Customer membership was distributed almost evenly across Bronze, Silver, and Gold categories.
- The dataset contained customers across six cities with broadly similar representation.
- Average customer spending was approximately **845.38**.
- Gold membership recorded the highest observed average spending among the membership categories.
- New York and San Francisco recorded the highest observed average spending among the six cities.
- Customer satisfaction varied across membership and discount categories.
- **124 customers** had more than 30 days since their last purchase, identifying a potentially inactive segment for further consideration.

---

## 2. SQL — BUSINESS ANALYSIS

### Objective

SQL was used to move from exploratory analysis toward business-oriented customer analysis.

The dataset was imported into **SQLite** and queried using **DB Browser for SQLite**.

### SQL Analysis Performed

#### Customer & Dataset Exploration

- Record and variable validation
- Customer-level data exploration
- Aggregate statistics
- Grouped customer distributions

#### Customer Segmentation Analysis

- **Membership Type vs. Satisfaction Level**

Customer satisfaction was examined across membership categories to identify differences in observed satisfaction patterns.

<img width="1920" height="1080" alt="SQL_Membership_Satisfaction" src="https://github.com/user-attachments/assets/1120884c-df46-44a2-bc91-3a54b2ff537f" />

- **Membership Type vs. Average Spending**

Average spending was compared across membership categories to identify differences in observed customer value.

- **City-Level Spending Analysis**

Average customer spending was compared across cities to identify geographic variation in the dataset.

- **Discount vs. Satisfaction**

Satisfaction patterns were compared between customers who received discounts and those who did not.

#### BUSINESS-ORIENTED ANALYSIS

**Top 10 Customers by Total Spend**

Identified the highest-spending customers using descending ordering and `LIMIT`.
<img width="1920" height="1080" alt="SQL_Top_10_Customers" src="https://github.com/user-attachments/assets/ddeafd91-9788-4251-b328-f456991476cb" />


**High-Value Customer Analysis**

Identified customers with total spending above **1000** as a high-value customer segment.
<img width="1920" height="1080" alt="SQL_High_Value_Customers" src="https://github.com/user-attachments/assets/8e9d231e-9b0b-42bb-8877-d9e68012a07c" />


**Inactive Customer Analysis**

Identified customers with more than **30 days since their last purchase** as a potentially inactive segment.
<img width="1920" height="1080" alt="SQL_Inactive_Customers" src="https://github.com/user-attachments/assets/5c56293f-b883-4562-a884-579682c40380" />


### SQL Techniques Demonstrated

- `SELECT`, `WHERE`,`GROUP BY`, `ORDER BY`,`COUNT()`, `COUNT(DISTINCT)`, `SUM()`,`AVG()`,`MIN()`,`MAX()`,`CASE`,`INNER JOIN`,`LEFT JOIN`, Date and filtering functions,`LIMIT`

SQL results were compared with the Excel analysis to provide **cross-tool validation** and support consistency of the analytical results.

---

## 3. POWER BI — CUSTOMER ANALYTICS DASHBOARD

### Objective

Power BI was used to transform the analytical findings into an interactive dashboard for customer behavior and engagement analysis.

### Dashboard KPIs

- Total Customers
- Average Spend
- Average Rating
- Average Items Purchased
- Average Days Since Last Purchase

### Dashboard Analysis

- Average Spend by Membership Type
- Average Spend by City
- Customer Satisfaction Distribution
- Satisfaction by Discount Status
- Average Rating by Membership Type
- Inactive Customers by Membership Type
- Interactive filtering and segmentation

### DAX Measures

The dashboard includes measures developed for customer-level analytical reporting, including:

- Total Customers
- Average Spend
- Average Rating
- Average Items Purchased
- Average Days Since Purchase

---

<img width="1920" height="1080" alt="Screenshot (2220)" src="https://github.com/user-attachments/assets/e91ca9c6-f54e-4327-87e0-7c366a0550ce" />


# KEY INSIGHTS

## Customer Spending

Gold membership recorded the highest observed average customer spending among the membership categories in the dataset.

## Geographic Variation

Average spending varied considerably across cities, with San Francisco and New York recording the highest observed average spending among the six cities.

## Customer Satisfaction

Satisfaction levels differed across membership categories, with the Gold segment showing a distinct satisfaction pattern compared with Bronze and Silver customers.

## Discount Analysis

Customer satisfaction differed between customers who received discounts and those who did not. However, the observed relationship does not establish that discount application alone determines satisfaction.

## Customer Inactivity

**124 customers** had more than 30 days since their last purchase, providing a potentially useful segment for retention-oriented analysis.

## High-Value Customers

**117 customers** recorded total spending above 1000, identifying a high-value customer segment that may be considered for differentiated retention and loyalty strategies.

---

# BUSINESS INTERPRETATION

The analysis demonstrates how customer-level data can be used to identify segments requiring different forms of managerial attention.

Potential applications include:

- Customer retention strategies
- Loyalty and membership segmentation
- High-value customer identification
- Re-engagement of inactive customers
- Customer experience analysis
- Data-driven marketing and engagement decisions
- Customer performance monitoring through dashboards

The findings are exploratory and describe observed patterns within the dataset. They should not be interpreted as evidence of causal relationships.

---

# RECOMMENDATIONS

Based on the observed patterns, organizations may consider:

1. Developing differentiated retention strategies for high-value customers.
2. Using purchase recency to identify customers who may benefit from re-engagement initiatives.
3. Using membership-based segmentation to tailor customer communication and loyalty strategies.
4. Monitoring customer satisfaction alongside spending and purchasing behavior rather than relying on a single metric.
5. Using analytical dashboards to continuously monitor customer behavior and segment-level performance.
6. Combining customer analytics with broader marketing and customer experience data for more comprehensive decision-making.

---

# PROJECT DELIVERABLES

- **Excel Workbook** — Data preparation, profiling, descriptive statistics, and exploratory analysis
- **SQL Script** — Data exploration, descriptive analysis, and business-oriented customer queries
- **SQLite Database** — Analytical customer dataset
- **Power BI Dashboard** — Interactive customer behavior and engagement dashboard
- **Selected Analysis Screenshots** — Key SQL analytical outputs
- **Academic Report** — Detailed project documentation and analysis

---

## REPOSITORY STRUCTURE

Customer-Behavior-Engagement-Analytics/
│
├── README.md
│
├── Customer Behavior Analysis.xlsx
├── Customer_Analytics.sql
├── Customer_Analytics.db
├── Customer Engagement Analytics.pbix
│
├── SQL_01_Membership_Satisfaction.png
├── SQL_02_Top_Spending_Customers.png
├── SQL_03_Inactive_Customers.png
└── SQL_04_High_Value_Customers.png

---

PROJECT FILES & REPOSITORY STRUCTURE

The repository contains the working analytical files and selected visual evidence from the project.

File	Description
Customer Behavior Analysis.xlsx	Excel workbook containing the working dataset, data profiling, descriptive statistics, PivotTable-based exploratory analysis, and relationship analysis
Customer_Analytics.sql	SQL queries used for data exploration, segmentation, ranking, and business-oriented analysis
Customer_Analytics.db	SQLite database used for the SQL analysis
Customer Engagement Analytics.pbix	Power BI dashboard containing KPIs, DAX measures, visual analysis, and interactive filtering
SQL_01_Membership_Satisfaction.png	Membership type vs. satisfaction analysis
SQL_02_Top_Spending_Customers.png	Top 10 customers ranked by total spending
SQL_03_Inactive_Customers.png	Customers with more than 30 days since their last purchase
SQL_04_High_Value_Customers.png	Customers with total spending above 1000
Repository Structure
Customer-Behavior-Engagement-Analytics/
│
├── README.md
│
├── Customer Behavior Analysis.xlsx
├── Customer_Analytics.sql
├── Customer_Analytics.db
├── Customer Engagement Analytics.pbix
│
├── SQL_01_Membership_Satisfaction.png
├── SQL_02_Top_Spending_Customers.png
├── SQL_03_Inactive_Customers.png
└── SQL_04_High_Value_Customers.png

# SKILLS DEMONSTRATED

### Data Analytics

- Exploratory Data Analysis
- Descriptive Statistics
- Customer Segmentation
- Relationship Analysis
- Business-Oriented Analysis
- Data Interpretation
- Insight Generation

### Excel

- Data Profiling
- Data Preparation
- Power Query
- PivotTables
- PivotCharts
- Descriptive Statistics
- Exploratory Analysis

### SQL

- Data Exploration
- Aggregation
- Filtering
- Grouping
- Ranking
- Business Queries
- Customer Segmentation
- SQLite

### Power BI

- Data Modelling
- DAX Measures
- KPI Development
- Interactive Dashboards
- Data Visualization
- Business Reporting

### Business Skills

- Problem Definition
- Analytical Question Formulation
- Customer Segmentation
- Business Interpretation
- Recommendation Development
- Data-Driven Decision-Making

---

# FUTURE ENHANCEMENTS

Potential extensions of the project could include:

- Larger and more diverse customer datasets
- Time-series customer behavior analysis
- Customer Lifetime Value modelling
- RFM-based customer segmentation using transaction-level purchase history
- Predictive churn analysis
- Marketing campaign and channel-level data
- Advanced statistical and machine learning techniques
- Broader customer experience and engagement metrics

---

## DATASET ATTRIBUTION

**E-Commerce Customer Behavior Dataset — Kaggle**: https://www.kaggle.com/datasets/uom190346a/e-commerce-customer-behavior-dataset?resource=download

---

## ACADEMIC CONTEXT

This analytics project was developed as part of an M.Com academic project, The repository emphasizes the practical analytics workflow, tools, analytical reasoning, and business interpretation demonstrated through the project.

---

## AUTHOR

**Muskan Tayal**

Business Analytics | Data Analytics | Business Intelligence
