with daily_sales as (
    select 
        -- orders data
        o.order_date
        
        -- products data
        , p.product_name, p.category, p.vendor
        
        -- users data
        , u.city, u.state, u.sales_channel

        -- calulated metrics
        , sum(o.order_amount) as total_revenue
    from {{ref("silver_orders")}} as o
    
    left join {{ref("silver_product")}} as p
        on o.product_id = p.id
    
    left join {{ref("silver_users")}} as u
        on o.user_id = u.id

    group by all 
)

select * from daily_sales