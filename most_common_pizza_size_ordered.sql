###### ------------ 4.	Identify the most common pizza size ordered.
-- select * from order_details;
-- select * from orders;
-- select * from pizzas;
-- select * from pizza_types;
SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) most_common_pizza_ordered
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY most_common_pizza_ordered DESC
LIMIT 1;
