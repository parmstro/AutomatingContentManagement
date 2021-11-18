SELECT
  unix_timestamp(national_day) AS "time_sec",
  country_code2 AS metric,
  area
FROM countries
WHERE national_day IS NOT NULL
AND national_day > '1971-01-01'
ORDER BY 1