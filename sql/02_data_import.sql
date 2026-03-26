COPY coffee_sales
FROM 'C:\project 1\working data demo.csv'
DELIMITER ',' CSV HEADER;

/*Imports raw sales data from a local CSV file into the 'coffee_sales' staging table.
Note: Uses the COPY command to efficiently load bulk data, skipping the header row to ensure only record data is processed.
*/