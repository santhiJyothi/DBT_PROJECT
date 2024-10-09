{{config(materialized='view')}}

{{compare_row_count('DBT_DATA.DBT_Source.STG_CUSTOMERS','DBT_DATA.DBT_Source.STG_ORDERS','DBT_DATA.DBT_Source.STG_PAYMENTS')}}