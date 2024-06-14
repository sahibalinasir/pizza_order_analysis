#############------6.	Join the necessary tables to find the total quantity of each pizza category ordered

select * from order_details;
select * from orders;
select * from pizzas;
select * from pizza_types;

SELECT pizza_types.category,  sum(order_details.quantity) as quantity 
from
pizza_types
join
pizzas on pizza_types.pizza_type_id=pizzas.pizza_type_id
join
order_details on pizzas.pizza_id=order_details.pizza_id
group by pizza_types.category order by quantity desc;