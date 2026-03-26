SELECT 
COUNT(*) AS total_rows,
COUNT(*) - COUNT(transaction_id) AS null_id,
COUNT(*) - COUNT(transaction_date) AS null_date,
COUNT(*) - COUNT(quantity) AS null_qty,
COUNT(*) - COUNT(store_id) AS null_str,
COUNT(*) - COUNT(store_location) AS null_loc,
COUNT(*) - COUNT(product_id) AS null_prd,
COUNT(*) - COUNT(unit_price) AS null_price,
COUNT(*) - COUNT(product_category) AS null_ctg,
COUNT(*) - COUNT(product_type) AS null_type,
COUNT(*) - COUNT(day_name) AS null_day,
COUNT(*) - COUNT(month_name) AS null_month,
COUNT(*) - COUNT(hour) AS null_time,
COUNT(*) - COUNT(time_am_pm) AS null_tm,
COUNT(*) - COUNT(weekend_weekday) AS null_wkd,
COUNT(*) - COUNT(slots) AS null_slot,
COUNT(*) - COUNT(total_sales) AS null_sales
FROM coffee_sales;


SELECT 
    MIN(quantity) AS min_qty,
    MAX(quantity) AS max_qty,
    ROUND(AVG(quantity), 2) AS avg_qty,
    MIN(total_sales) AS min_revenue,
    MAX(total_sales) AS max_revenue,
    ROUND(AVG(total_sales), 2) AS avg_revenue
FROM coffee_sales;

/* Project: Coffee Sales Data Analysis
   Objective: Data Validation and Quality Audit.
   Purpose: 
   1. Completeness Check: Scans for missing values (NULLs) across all columns to ensure data integrity.
   2. Descriptive Statistics: Calculates ranges (Min/Max) and averages for quantity and revenue to identify outliers and typical sales patterns.
*/





