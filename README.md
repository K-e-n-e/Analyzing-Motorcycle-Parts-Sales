# Analyzing Motorcycle Parts Sales
Working on behalf of a company that sells motorcycle parts. Helped them understand their revenue streams, built up a query to find out how much net revenue they are generating across their product lines, segregating by date and warehouse.

## Business Question
Which product lines drive the most net revenue, and how does that vary by month and by warehouse?
Answering this helps the company see where its money is coming from and which warehouses and product lines deserve the most attention.

## Dataset
The data covers 1,000 orders placed between 1 June 2021 and 28 August 2021 across three warehouses. It contains no missing values.

## Column	Description
<p>order_number: Unique ID for each order</p>
<p>date:	Date the order was placed</p>
<p>warehouse:	Warehouse that fulfilled the order (North, Central, West)</p>
<P>client_type:	Retail or Wholesale</p>
<p>product_line:	Braking system, Electrical system, Engine, Frame & body, Suspension & traction, Miscellaneous</p>
<p>quantity:	Number of units sold</p>
<p>unit_price:	Price per unit</p>
<p>total: Order value before fees (quantity × unit price)</p>
<p>payment:	Payment method (Cash, Credit card, Transfer)</p>
<p>payment_fee:	Fee charged on the payment, as a proportion of the order total</p>

Source: DataCamp project dataset, loaded into a PostgreSQL database. The raw data is not redistributed in this repository.

## Approach
Explored the sales table to understand its columns and values.
Calculated net revenue by subtracting the payment fee from each order's total.
Aggregated net revenue by product line, month, and warehouse.
Sorted the results so the highest-earning groups appear first.

The full query, with comments, is in motorcycle_parts_sales.sql.

## Key Findings
Top product line by net revenue: Frame & Body
Highest-earning warehouse: Central
Month with the most revenue: August

## Sample Output
<img width="1128" height="549" alt="image" src="https://github.com/user-attachments/assets/11e76408-ede5-4c70-a453-7bca1efb216c" />


## Tools Used
PostgreSQL
SQL (aggregation, grouping, date functions)

## Repository Contents
 <p>README.md</p>
 <p>motorcycle_parts_sales.sql</p>
 <p>motorcycle_parts_sales_csv.csv</p>
 
## About
Completed as a portfolio project to practice SQL for data analysis.
