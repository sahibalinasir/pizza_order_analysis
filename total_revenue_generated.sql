######   Calculate the total revenue generated from pizza sales.

select * from order_details;
select * from orders;
select * from pizzas;
select * from pizza_types;

select round(sum(order_details.quantity*pizzas.price),2) Total_revenue 
from order_details
join pizzas on order_details.pizza_id=pizzas.pizza_id;
