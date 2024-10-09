{{
    config(
        materialized='table'
    )
}}

with customer as(
    select id as customer_id,
           first_name,
           last_name
           from {{ref('customers')}}),

order_data as(
    select id as order_id,
           user_id as customer_id,
           order_date,
           status
           from {{ref('orders')}}),

customer_order as(
    select customer_id,
           min(order_date) as First_order_dt,
           max(order_date) as recent_order_dt,
           count(order_id) as No_of_orders
           from order_data
           group by 1
           ),

final as(
    select customer.customer_id,
           customer.first_name,
           customer.last_name,
           First_order_dt,
           recent_order_dt,
           coalesce(No_of_orders,0) as no_of_orders
    from customer  left join customer_order on customer.customer_id =customer_order.customer_id)

select * from final


           



