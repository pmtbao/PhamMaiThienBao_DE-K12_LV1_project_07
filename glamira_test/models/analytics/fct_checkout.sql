WITH fct_checkout_success AS (
    SELECT time_stamp, 
    checkout_success.ip, 
    user_id, 
    store_id, 
    local_time, 
    email_address,
    order_id,
    product_id,
    amount,
    price,
    currency,
    dim_location.country_long,
    dim_location.country_short,
    dim_location.city,
    dim_location.region,
    dim_product.name AS product_name
    FROM {{ ref('stg_checkout_success') }} AS checkout_success
    JOIN {{ ref('dim_location') }} AS dim_location ON checkout_success.ip = dim_location.ip
    JOIN {{ ref('dim_product') }} AS dim_product ON checkout_success.product_id = dim_product.id
    WHERE collection = 'checkout_success'
)

SELECT * FROM fct_checkout_success
