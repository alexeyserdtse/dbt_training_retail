select
       id,
       created_at::date as order_date,
       user_id,
       product_id,
       quantity,
       unit_price,
       quantity * unit_price as order_amount,
       {{ multiply_columns(['quantity', 'unit_price']) }} as order_amount_macro
from {{ ref("bronze_orders") }}