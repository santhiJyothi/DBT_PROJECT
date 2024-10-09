{% macro emp_substring(column1) %}

concat('xxxx xxxx' , substr({{column1}}, -4))

{% endmacro %}