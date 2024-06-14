##########3          Analyze the cumulative revenue generated over time.

SELECT
order_date,
sum(revenue) over(order  by order_date) as cumulitive_Revenue
from 
(select orders.order_date, sum(order_details.quantity * pizzas.price)
                                 AS revenue
FROM
	orders
    JOIN
    order_details on orders.order_id=order_details.order_id
    join
    pizzas ON pizzas.pizza_id = order_details.pizza_id
     group by orders.order_date) as sale;
     