##  ----- List the top 5 most ordered pizza types along with their quantities.
-- select * from order_details;
-- select * from orders;
-- select * from pizzas;
-- select * from pizza_types;
SELECT 
    pizza_types.name, SUM(order_details.quantity) AS quantities
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY quantities DESC
LIMIT 5;
