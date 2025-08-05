

{% macro multiply_columns(col_list) -%}
  {{- col_list | join(' * ') }}
{% endmacro %}