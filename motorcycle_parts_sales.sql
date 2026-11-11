-- ============================================================
-- Project: Analyzing Motorcycle Parts Sales
-- Purpose: Calculate net revenue from wholesale clients,
--          broken down by product line, month, and warehouse.
-- Table:   sales
-- Net revenue = total sales amount minus payment processing fees
-- ============================================================

SELECT product_line, CASE WHEN EXTRACT(month FROM date) = 1
	THEN 'January'
	WHEN EXTRACT(month FROM date) = 2
	THEN 'Febuary'
	WHEN EXTRACT(month FROM date) = 3
	THEN 'March'
	WHEN EXTRACT(month FROM date) = 4
	THEN 'April'
	WHEN EXTRACT(month FROM date) = 5
	THEN 'May'
	WHEN EXTRACT(month FROM date) = 6
	THEN 'June'
	WHEN EXTRACT(month FROM date) = 7
	THEN 'July'
	WHEN EXTRACT(month FROM date) = 8
	THEN 'August'
	WHEN EXTRACT(month FROM date) = 9
	THEN 'September'
	WHEN EXTRACT(month FROM date) = 10
	THEN 'October'
	WHEN EXTRACT(month FROM date) = 11
	THEN 'November'
	ELSE 'December' END AS month,
	warehouse, SUM(total - payment_fee) AS net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY product_line, EXTRACT(month FROM date), warehouse
ORDER BY product_line, month ASC, net_revenue DESC
