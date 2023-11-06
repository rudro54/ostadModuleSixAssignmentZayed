/*
 The database contains the following tables:
 Customers: Contains information about the customers, such as customer ID, name, email, and location.
 Orders: Contains information about the orders placed by customers, such as order ID, customer ID, order date, and total amount.
 Products: Contains information about the products available for purchase, such as product ID, name, description, and price.
 Categories: Contains information about the different categories of products, such as category ID and name.
 Order_Items: Contains information about the individual items included in each order, such as order item ID, order ID, product ID, quantity, and unit price.
 
 taskTwo : Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.
 */

SELECT
    o.order_id,
    p.name AS product_name,
    oi.quantity,
    --order item
    oi.unit_price * oi.quantity AS total_amount
FROM Order_Items oi
    JOIN Orders o ON oi.order_id = o.order_id
    JOIN Products p ON oi.product_id = p.product_id
ORDER BY o.order_id ASC;