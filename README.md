# Analyzing-Motorcycle-Parts-Sales
Working on behalf of a company that sells motorcycle parts, you'll dig into their data to help them understand their revenue streams. You'll build up a query to find out how much net revenue they are generating across their product lines, segregating by date and warehouse.

## Business Question
Which product lines drive the most net revenue, and how does that vary by month and by warehouse?
Answering this helps the company see where its money is coming from and which warehouses and product lines deserve the most attention.

## Dataset
The data covers 1,000 orders placed between 1 June 2021 and 28 August 2021 across three warehouses. It contains no missing values.

## Column	Description
order_number	Unique ID for each order
date	Date the order was placed
warehouse	Warehouse that fulfilled the order (North, Central, West)
client_type	Retail or Wholesale
product_line	Braking system, Electrical system, Engine, Frame & body, Suspension & traction, Miscellaneous
quantity	Number of units sold
unit_price	Price per unit
total	Order value before fees (quantity × unit price)
payment	Payment method (Cash, Credit card, Transfer)
payment_fee	Fee charged on the payment, as a proportion of the order total

## Source: DataCamp project dataset, loaded into a PostgreSQL database. The raw data is not redistributed in this repository.

## Approach
Explored the sales table to understand its columns and values.
Calculated net revenue by subtracting the payment fee from each order's total.
Aggregated net revenue by product line, month, and warehouse.
Sorted the results so the highest-earning groups appear first.

## The full query, with comments, is in motorcycle_parts_sales.sql.

## Key Findings
Top product line by net revenue: add here
Highest-earning warehouse: add here
Month with the most revenue: add here
Sample Output
<!-- Add a screenshot of your query result, e.g. ![Query result](images/result.png) -->

## Tools Used
PostgreSQL
SQL (aggregation, grouping, date functions)

## Repository Contents
 README.md
 motorcycle_parts_sales.sql
 motorcycle_parts_sales_csv.csv
 
## About
Completed as a portfolio project to practice SQL for data analysis.
