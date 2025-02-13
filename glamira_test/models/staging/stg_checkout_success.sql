WITH stg_checkout_success AS(
    SELECT 
    time_stamp, 
    ip, 
    user_id_db AS user_id, 
    store_id, 
    local_time, 
    email_address,
    collection, 
    order_id, 
    cart_products[SAFE_OFFSET(0)].product_id AS product_id, 
    cart_products[SAFE_OFFSET(0)].amount AS amount, 
    cart_products[SAFE_OFFSET(0)].price AS price, 
    cart_products[SAFE_OFFSET(0)].currency AS currency
    FROM {{ source('staging','raw_layer') }}
)

SELECT * FROM stg_checkout_success