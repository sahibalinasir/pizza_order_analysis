###------3.	Identify the highest-priced pizza.

select * from order_details;
select * from orders;
select * from pizzas;
select * from pizza_types;

select pizza_types.name, pizzas.price
from
pizzas
join
pizza_types
on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by pizzas.price desc limit 1;
