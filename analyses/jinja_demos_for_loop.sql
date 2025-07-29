{%- set names = ['id', 'quantity', 'unit_price'] -%}

select 
{%- for name in names %}
    {{name}}
    {%- if not loop.last -%}
    {{','}}
    {%- endif -%}
{%-endfor%}
from table