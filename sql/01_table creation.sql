CREATE TABLE coffee_sales (
    transaction_id INTEGER PRIMARY KEY,
    transaction_date DATE,
    transaction_time TIME,
    quantity INTEGER,
    store_id INTEGER,
    store_location VARCHAR(100),
    product_id INTEGER,
    unit_price_raw VARCHAR(20), -- Raw input to handle $ signs
    product_category VARCHAR(100),
    product_type VARCHAR(100),
    product_detail VARCHAR(255),
    total_sales_raw VARCHAR(20), -- Raw input to handle $ signs
    day_name VARCHAR(20),
    month_name VARCHAR(20),
    hour INTEGER,
    time_am_pm VARCHAR(20),
    weekend_weekday VARCHAR(10),
    slots VARCHAR(50)
);

/* Project: Coffee Sales Data Analysis
   Objective: Define the initial table structure for importing raw sales data.
   Note: Financial columns (unit_price, total_sales) are intentionally set as VARCHAR 
   to safely capture raw input that may include currency symbols (e.g., '$'). 
   These will be cleaned and converted to numeric formats in the next processing stage.
*/