{{config(materialized='table',
         transient=false)}}

select  id from {{source('datafeed_shared_schema','STG_CUSTOMERS')}}