{% snapshot cust_timestamp1 %}

{{config(Materialized='Table',
    target_schema='snapshot',
    unique_key= 'id',
    strategy= 'timestamp',
    updated_at= 'UPDATED_AT'

)}}

select * from {{source('datafeed_shared_schema','Customers')}}
{% endsnapshot %}