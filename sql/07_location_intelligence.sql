SELECT 
store_location,
    ROUND(SUM(total_sales)) AS shop_revenue,
    COUNT(DISTINCT transaction_id) AS total_transactions,
    ROUND(AVG(total_sales), 2) AS avg_transaction_value,
    ROUND(SUM(total_sales) * 100.0 / SUM(SUM(total_sales)) OVER(), 2) AS revenue_share_pct
FROM coffee_sales
GROUP BY store_location
ORDER BY shop_revenue DESC;

/* Project: Coffee Sales Data Analysis
   Objective: Store Performance & Location Intelligence.
   Purpose: 
   1. Revenue Benchmarking: Ranks store locations by total sales and transaction volume.
   2. Customer Value Analysis: Calculates the average spend per visit for each location.
   3. Market Share: Determines the 'Revenue Share %' to show how much each store contributes 
      to the company's total bottom line.
*/