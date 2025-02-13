WITH date AS (
    SELECT *
    FROM {{ source('staging','date') }}
    )
SELECT * FROM date