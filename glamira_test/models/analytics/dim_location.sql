WITH dim_location AS (
    SELECT DISTINCT ip, country_long, country_short, city, region , created_at
    FROM {{ ref('stg_location') }}
)

SELECT ip, country_long, country_short, city, region, created_at FROM dim_location