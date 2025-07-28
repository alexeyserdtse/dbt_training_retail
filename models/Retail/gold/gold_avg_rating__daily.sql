
with daily_avg_raiting as (
    select 
           br.created_at ::date as date_revies
           , br.product_id
           , sp.product_name
           , avg(br.rating) as avg_raiting
         
      from {{ ref("bronze_reviews") }} as br

      left join {{ ref("silver_product") }} as sp
        on br.product_id = sp.id
     group by all
)

select * from daily_avg_raiting