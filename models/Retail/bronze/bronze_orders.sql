{{
    config(
        materialized='incremental',
        incremental_strategy = 'merge',
        unique_key = 'id'
    )
}}

select * 
  from {{ source('landing', 'orders') }} 
  
