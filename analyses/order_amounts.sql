
with cte1 as(
     select o.id as order_id, sum(amount) as total_amount
     from {{ref("orders")}} o join  {{ref('Payments')}} p on o.id=p.order_id group by o.id)

select max(total_amount) ,min(total_amount), avg(total_amount) from cte1