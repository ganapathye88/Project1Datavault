{% macro generate_hash(column_name) %}

md5(cast({{ column_name }} as varchar))

{% endmacro %}