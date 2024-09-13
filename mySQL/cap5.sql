/* weatcher stations */
SELECT * FROM station_data;

SELECT count(station_number) AS quantidade
FROM station_data;

SELECT *
FROM station_data
WHERE year = 2010;

SELECT count(year) AS quantidade
FROM station_data
WHERE year = 2010;

SELECT *
FROM station_data
WHERE year != 2010;


SELECT count(year) AS quantidade
FROM station_data
WHERE year != 2010;

SELECT *
FROM station_data
WHERE year BETWEEN 2005 AND 2010;

SELECT * 
FROM station_data
WHERE year >= 2005 AND year <= 2010;

SELECT count(year) AS quantidade 
FROM station_data
WHERE year >= 2005 AND year <= 2010;

SELECT * 
FROM station_data
WHERE month = 3
OR month = 6
OR month = 12;

SELECT * 
FROM station_data
WHERE month IN (3, 6, 12);

SELECT count(year) AS quantidade  
FROM station_data
WHERE month = 3
OR month = 6
OR month = 12;

SELECT count(year) AS quantidade 
FROM station_data
WHERE month IN (3, 6, 12);


SELECT * 
FROM station_data
WHERE month NOT IN (3, 6, 12);

SELECT count(year) AS quantidade 
FROM station_data
WHERE month NOT IN (3, 6, 12);

SELECT * 
FROM station_data
WHERE month % 3 = 0;

SELECT count(year) AS quantidade 
FROM station_data
WHERE month % 3 = 0;

SELECT * 
FROM station_data
WHERE report_code = '513A63';

SELECT count(report_code)
FROM station_data
WHERE length(report_code) != 6;

SELECT count(report_code)
FROM station_data
WHERE report_code LIKE 'A%';

SELECT *
FROM station_data
WHERE report_code LIKE '%FC%';

SELECT *
FROM station_data
WHERE tornado = 1 AND hail = 1;

SELECT *
FROM station_data
WHERE tornado AND hail;

SELECT *
FROM station_data
WHERE NOT rain AND hail;


SELECT *
FROM station_data
WHERE snow_depth IS NULL;

SELECT *
FROM station_data
WHERE snow_depth IS NOT NULL;

SELECT *
FROM station_data
WHERE snow_depth;

SELECT *
FROM station_data
WHERE precipitation <= 0.5;

SELECT *
FROM station_data
WHERE precipitation IS NULL OR precipitation <= 0.5;

SELECT *
FROM station_data
WHERE coalesce(precipitation, 0) <= 0.5;

SELECT coalesce(precipitation, 'Not Af') AS rainfall
FROM STATION_DATA;

SELECT *
FROM station_data
WHERE rain = 1 AND temperature <= 32 OR snow_depth > 0;

SELECT *
FROM station_data
WHERE (rain = 1 AND temperature <= 32) OR snow_depth > 0;