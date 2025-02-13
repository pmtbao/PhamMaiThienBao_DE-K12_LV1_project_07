WITH location as (
    SELECT ip, country_long, country_short, city, region, current_timestamp() as created_at
    FROM {{ source('staging','location') }}
    )

SELECT ip, country_long, country_short, city, region, created_at FROM location