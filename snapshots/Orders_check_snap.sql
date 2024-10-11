{% snapshot Orders_check_snap %}

{{config(materialized='snapshot',
         strategy='check',
         unique_key='id',
         check_cols=['user_id','status'])}}

select * from {{source("datafeed_shared_schema",'STG_ORDERS')}}

{% endsnapshot %}