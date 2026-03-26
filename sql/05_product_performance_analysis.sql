SELECT 
ROUND(SUM(total_sales)) AS total_revenue
FROM coffee_sales;


SELECT
product_category,
COUNT(transaction_id) AS total_trs,
ROUND(SUM(total_sales) * 100.0 / SUM(SUM(total_sales)) OVER(), 2) AS rev_per
FROM coffee_sales
GROUP BY product_category
ORDER BY rev_per DESC;


SELECT
product_type,
product_category,
ROUND(SUM(total_sales)) AS total_revenue,
SUM(quantity) AS unit_sold
FROM coffee_sales
GROUP BY product_type, product_category
ORDER BY total_revenue DESC
LIMIT 5;


SELECT
product_type,
product_category,
ROUND(SUM(total_sales)) AS total_revenue,
SUM(quantity) AS unit_sold
FROM coffee_sales
GROUP BY product_type, product_category
ORDER BY total_revenue ASC
LIMIT 5;


SELECT
product_category,
ROUND(AVG(total_sales),2) AS avg_category_sales,
ROUND(AVG(quantity),2) AS avg_units_per_transaction
FROM coffee_sales
GROUP BY product_category
ORDER BY avg_category_sales DESC;

/* Project: Coffee Sales Data Analysis
   Objective: Product Performance & Revenue Benchmarking.
   Purpose: 
   1. Sales Overview: Calculates total revenue and category-wise market share.
   2. Product Ranking: Identifies the top 5 and bottom 5 products to highlight bestsellers and slow-movers.
   3. Efficiency Metrics: Analyzes average transaction value and units sold per category to measure customer buying habits.
*/

