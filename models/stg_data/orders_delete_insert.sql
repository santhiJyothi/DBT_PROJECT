{{config(materialized='incremental',
         transient=false,
         unique_key='id',
         incremental_strategy='delete+insert')}}

select * from {{source('datafeed_shared_schema','STG_ORDERS')}}