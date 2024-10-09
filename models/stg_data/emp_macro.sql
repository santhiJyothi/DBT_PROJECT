{{config(materialized='table',
        transient=false)}}

select id,
       emp_name as employee_nm,
       {{emp_substring('Aadhar_no')}} as Aadharno
       from {{source("datafeed_shared_schema",'EMP')}}
