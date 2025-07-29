{# set variable, 1st option. - in the start / end of the statment indicates excluding blank rows#}
{%- set var1 = 'Hello, word'-%}
{{var1}}

{# set var2 second option within the block #}
{%- set var2 -%}
    Hello, word 2
{% endset %}

{{var2}}

{# recieve a list #}
{%- set var3 = ['Hello, world!', 'Hello again!'] -%}
{# working similar to python indexes #}
{{var3[-1]}}
{{var3[0]}}