{% snapshot Orders_check_delete %}

{{config(materialized='snapshot',
         strategy='check',
         unique_key='id',
         check_cols=['user_id','status'],
         invalidate_hard_deletes=true)}}

select * from {{source("datafeed_shared_schema",'STG_ORDERS')}}

{% endsnapshot %}