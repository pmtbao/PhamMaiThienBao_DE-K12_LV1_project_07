WITH dim_product AS (
    SELECT id, name , created_at
    FROM {{ref('stg_product')}}
)
SELECT id, name, created_at FROM dim_product