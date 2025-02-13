WITH products AS (
    SELECT product_id AS id, product_name AS name, current_timestamp() AS created_at
    FROM {{ source('staging','product') }}
    )
SELECT id, name, created_at FROM products