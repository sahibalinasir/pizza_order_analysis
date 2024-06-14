#######---------2.	Determine the distribution of orders by hour of the day.

select * from orders;
select hour(orders.order_time), count(order_id)
from orders group by hour(orders.order_time) ;