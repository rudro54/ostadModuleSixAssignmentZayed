/*
 The database contains the following tables:
 Customers: Contains information about the customers, such as customer ID, name, email, and location.
 Orders: Contains information about the orders placed by customers, such as order ID, customer ID, order date, and total amount.
 Products: Contains information about the products available for purchase, such as product ID, name, description, and price.
 Categories: Contains information about the different categories of products, such as category ID and name.
 Order_Items: Contains information about the individual items included in each order, such as order item ID, order ID, product ID, quantity, and unit price.
 
 taskFour : Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount. Display the customer name along with the total purchase amount in descending order of the purchase amount.
 */

SELECT
    c.name AS customer_name,
    SUM(oi.unit_price * oi.quantity) AS total_purchase_amount
FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY c.name
ORDER BY
    total_purchase_amount DESC
LIMIT 5;