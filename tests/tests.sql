select order_id as id,
       sum(amount) as total_amount
       from {{ref("payments")}}
       group by 1
       having total_amount<=0