###4.	Group the orders by date and 
###calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(quantity), 2)
FROM
    (SELECT 
        orders.order_date, SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date) AS total_quantity_per_day;
