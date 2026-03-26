ALTER TABLE coffee_sales ADD COLUMN unit_price DECIMAL(10, 2);
ALTER TABLE coffee_sales ADD COLUMN total_sales DECIMAL(10, 2);

UPDATE coffee_sales 
SET unit_price = CAST(REPLACE(REPLACE(unit_price_raw, '$', ''), ' ', '') AS DECIMAL),
    total_sales = CAST(REPLACE(REPLACE(total_sales_raw, '$', ''), ' ', '') AS DECIMAL);


/* 
   Purpose: Converts raw string-based currency data into numeric DECIMAL formats.
   Details: 
   1. Adds new structured columns for financial calculations.
   2. Cleans raw input by removing '$' symbols and whitespace before casting to DECIMAL.
*/