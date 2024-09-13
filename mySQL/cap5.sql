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