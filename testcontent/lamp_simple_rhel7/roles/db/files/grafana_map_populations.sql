SELECT unix_timestamp(STR_TO_DATE(CONCAT(CS.year, "-01-01"), '%Y-%m-%d')) as "time_sec", 
C.country_code2 AS metric, 
CS.population
FROM countries C 
INNER JOIN country_stats CS
ON C.country_id = CS.country_id 
WHERE CS.year > '1970'
ORDER BY 1