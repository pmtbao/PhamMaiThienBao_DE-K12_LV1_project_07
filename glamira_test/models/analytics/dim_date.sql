WITH dim_date AS (
    SELECT *
    FROM {{ ref('stg_date') }}
)

SELECT * FROM dim_date