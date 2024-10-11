{{config(materialized='table')}}

with cte1 as (
     select * from {{ref("Orders_check_delete")}}
)

select * from cte1 where  dbt_valid_to is null