{% macro compare_row_count(tbl1, tbl2, tbl3)%}

select '{{tbl1}}' as tabl_nm,
       count(*) AS Total_count from {{tbl1}}
union 
select '{{tbl2}}' as tabl_nm,
       count(*) AS Total_count from {{tbl2}}
union
select '{{tbl3}}' as tbl_nm,
        count(*) AS Total_count from {{tbl2}}
{% endmacro %}