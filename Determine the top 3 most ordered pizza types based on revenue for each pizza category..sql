#########v         3.	Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select category, name, revenue 
from (
select category, name, revenue,
rank() over (partition by category order by revenue desc) as rn
from (
SELECT 
    pizza_types.category,  pizza_types.name, 
    SUM(order_details.quantity * pizzas.price) AS Revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY  pizza_types.category,  pizza_types.name
ORDER BY revenue DESC) as a) as b
where rn<=3;