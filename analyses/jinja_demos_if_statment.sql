{% set temperature = -5 %}

{%- if temperature >20 %}
{{- "it's hot" -}}

{%elif temperature < 0%}
{{- "it's freezing" -}}

{%else%}
{{- "it's not"-}}

{%endif%}