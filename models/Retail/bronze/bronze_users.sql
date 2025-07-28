{{
    config(
        tags='contailns_pii'
    )
}}
select *
  from {{source('landing', 'users')}}