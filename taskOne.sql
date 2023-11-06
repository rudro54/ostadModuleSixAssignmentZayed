/*
 The database contains the following tables:
 Customers: Contains information about the customers, such as customer ID, name, email, and location.
 Orders: Contains information about the orders placed by customers, such as order ID, customer ID, order date, and total amount.
 Products: Contains information about the products available for purchase, such as product ID, name, description, and price.
 Categories: Contains information about the different categories of products, such as category ID and name.
 Order_Items: Contains information about the individual items included in each order, such as order item ID, order ID, product ID, quantity, and unit price.
 
 taskOne :  Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders.
 */

SELECT
    c.customer_id,
    c.name,
    c.email,
    c.location,
    COUNT(o.order_id) AS total_num_of_orders
FROM Customers c
    LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.name,
    c.email,
    c.location
ORDER BY
    total_num_of_orders DESC;