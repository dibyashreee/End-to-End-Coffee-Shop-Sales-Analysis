SELECT EXTRACT(
        HOUR
        FROM transaction_time
    ) AS hour_of_day,
    ROUND(SUM(total_sales)) AS hourly_revenue,
    COUNT(transaction_id) AS transaction_count
FROM coffee_sales
GROUP BY hour_of_day
ORDER BY hourly_revenue DESC;


SELECT 
    CASE 
        WHEN EXTRACT(DOW FROM transaction_date) IN (0, 6) THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    SUM(total_sales) AS total_rev,
    ROUND(AVG(total_sales), 2) AS avg_trans_value,
    COUNT(transaction_id) AS total_transactions
FROM coffee_sales
GROUP BY day_type
ORDER BY total_rev DESC;


SELECT 
EXTRACT(MONTH FROM transaction_date) AS month_num,
TO_CHAR(transaction_date, 'Month') AS month_nam,
SUM(total_sales) AS total_rev
FROM coffee_sales
GROUP BY 1, 2
ORDER BY total_rev DESC;

/* Project: Coffee Sales Data Analysis
   Objective: Sales Trend & Performance Analysis.
   Purpose: 
   1. Peak Hour Analysis: Identifies the busiest times of day by revenue and volume.
   2. Day-Type Comparison: Compares sales performance between Weekdays and Weekends.
   3. Monthly Growth Tracking: Ranks months by total revenue to identify seasonal trends.
*/