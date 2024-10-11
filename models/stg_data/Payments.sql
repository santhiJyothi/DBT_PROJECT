{{config(Materialized='Table')}}

with cte1 as (
    select * from {{source("datafeed_shared_schema",'STG_PAYMENTS')}}
)

select * from cte1