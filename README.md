# Sales Data Analysis - SQL & Aggregations

## Overview

This project analyzes online sales data using SQL to generate monthly insights, identify trends, and extract key business metrics such as revenue and order volume. The results are exported into CSV files and visualized for better interpretation.

## Objectives

* Calculate monthly revenue and order volume
* Analyze sales trends over time
* Filter and analyze specific time periods
* Identify top-performing months

## Dataset

* online_sales.csv: Raw transactional sales data
* sales.db: SQLite database used for querying

## Analysis Performed

### 1. Monthly Aggregates

* Aggregated total revenue and number of orders per month
* Used SQL functions:

  * SUM(amount) → total revenue
  * COUNT(DISTINCT order_id) → order volume
* Grouped data by year and month

### 2. Monthly Aggregates (Limited - 2023)

* Filtered data for the year 2023 only
* Provided a focused analysis on recent performance

### 3. Top 3 Months by Revenue

* Ranked months based on total revenue
* Selected top 3 highest-performing months using:

  * ORDER BY total_revenue DESC
  * LIMIT 3

## Key Insights

* Revenue fluctuates across months with noticeable peaks
* Certain months consistently generate higher order volumes
* 2023 shows variation in both revenue and order count
* Top-performing months highlight potential seasonal trends

## SQL Queries Used

* Monthly aggregation query using GROUP BY
* Time filtering using strftime('%Y', order_date)
* Ranking using ORDER BY and LIMIT

## Files Included

* online_sales.csv: Raw dataset
* sales.db: SQLite database
* task6_queries.sql: All SQL queries used
* monthly_aggregates.csv: Full monthly results
* monthly_aggregates.png: Visualization of monthly data
* monthly_aggregates_limited.csv: 2023 filtered data
* monthly_aggregates_limited.png: Visualization for 2023
* top_3_months.csv: Top 3 months by revenue
* top_3_months.png: Visualization of top months

## Tools and Technologies

* SQL (SQLite)
* Python (optional for visualization)
* Pandas
* Matplotlib

## Conclusion

This project demonstrates how SQL can be used to transform raw transactional data into meaningful business insights. By aggregating and filtering data, we can easily identify trends, evaluate performance, and support data-driven decision-making.

## Author

Mohamed Moustafa
