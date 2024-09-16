/* weatcher stations */
SELECT count(*) AS quantidade
FROM station_data;

SELECT count(*) AS quantidade
FROM station_data
WHERE tornado = 1;

SELECT year, count(*) AS quantidade
FROM station_data
WHERE tornado = 1
GROUP BY year;

SELECT year, month, count(*) AS quantidade
FROM station_data
WHERE tornado = 1
GROUP BY year, month;

SELECT year, month, count(*) AS quantidade
FROM station_data
WHERE tornado = 1
GROUP BY 1, 2;

SELECT year, month, count(*) AS quantidade
FROM station_data
WHERE tornado = 1
GROUP BY 2, 1;

SELECT year, month, count(*) AS quantidade
FROM station_data
WHERE tornado = 1
GROUP BY 1, 2
ORDER BY year, month;

SELECT year, month, count(*) AS quantidade
FROM station_data
WHERE tornado = 1
GROUP BY 1, 2
ORDER BY year DESC, month;

SELECT count(snow_depth) AS quantidade
FROM station_data;

SELECT month, avg(temperature) AS mediaTemp
FROM station_data
WHERE year >= 2000
GROUP BY 1;

SELECT month, round(avg(temperature)) AS mediaTemp
FROM station_data
WHERE year >= 2000
GROUP BY 1;

SELECT year, sum(snow_depth) AS sumSnowDepth
FROM station_data
WHERE year >= 2000
GROUP BY 1;

SELECT year, sum(snow_depth) AS sumSnowDepth,
sum(precipitation) AS total_precip,
max(precipitation) AS max_precip
FROM station_data
WHERE year >= 2000
GROUP BY 1;

SELECT year, month,
sum(snow_depth) AS sumSnowDepth,
sum(precipitation) AS total_precip,
max(precipitation) AS max_precip
FROM station_data
WHERE year >= 2000
GROUP BY year, month
ORDER BY year ASC, month;

SELECT station_number
FROM station_data;

SELECT DISTINCT station_number
FROM station_data;
