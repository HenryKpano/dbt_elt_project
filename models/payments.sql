with payment as (
    select
        id,
        orderid,
        paymentmethod,
        status,
        amount,
        created
    from dbt-tutorial.stripe.payment
),

customer_order as (
    select
        id,
        user_id,
        order_date,
        status as order_status
    from dbt-tutorial.jaffle_shop.orders
),

customers as (
    select
        id,
        first_name,
        last_name
    from dbt-tutorial.jaffle_shop.customers
),

final as (
    select 
        payment.id as payment_id,
        payment.paymentmethod,
        payment.status as payment_status,
        payment.amount,
        payment.created as payment_date,
        customer_order.user_id as user_id,
        customer_order.order_date,
        customer_order.order_status,
        customers.first_name,
        customers.last_name
    from payment
    left join customer_order
        on payment.orderid = customer_order.id
    left join customers
        on customer_order.user_id = customers.id
)

select
    *
from final