{% snapshot cust_timestamp_deletes %}
{{config(
    unique_key='ID',
    strategy='timestamp',
    updated_at='UPDATED_AT',
    invalidate_hard_deletes=true
)}}

select * from {{source("datafeed_shared_schema",'Customers')}}
{% endsnapshot %}