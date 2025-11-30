-- monthly_aggregates

-- Monthly revenue and order volume (year-month)
SELECT strftime('%Y-%m', order_date) AS year_month,
       SUM(amount) AS total_revenue,
       COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year_month
ORDER BY year_month;


-- monthly_aggregates_limited

-- Monthly aggregates for 2023 only (example of limiting time period)
SELECT strftime('%Y-%m', order_date) AS year_month,
       SUM(amount) AS total_revenue,
       COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
WHERE strftime('%Y', order_date) = '2023'
GROUP BY year_month
ORDER BY year_month;


-- top_3_months

-- Top 3 months by sales
SELECT year_month, total_revenue, order_volume FROM (
  SELECT strftime('%Y-%m', order_date) AS year_month,
         SUM(amount) AS total_revenue,
         COUNT(DISTINCT order_id) AS order_volume
  FROM online_sales
  GROUP BY year_month
) ORDER BY total_revenue DESC
LIMIT 3;


