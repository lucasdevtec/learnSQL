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
