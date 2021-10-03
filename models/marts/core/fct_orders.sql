select {{ref('stg_order')}}.order_id,{{ref('stg_customer')}}.customer_id, {{ref('stg_payment')}}.amount from {{ref('stg_customer')}}
inner join {{ref('stg_order')}}
on {{ref('stg_customer')}}.customer_id = {{ref('stg_order')}}.customer_id
inner join {{ref('stg_payment')}}
on {{ref('stg_payment')}}.orderid = {{ref('stg_order')}}.order_id