/* weatcher stations */
SELECT report_code, year, month, day, wind_speed,
CASE
    WHEN wind_speed >= 40 THEN 'HIGH'
    WHEN wind_speed >= 40 AND wind_speed < 40 THEN 'MODERATE'
    ELSE 'LOW' 
END as wind_severity
FROM station_data;

/*  Tuning */
SELECT report_code, year, month, day, wind_speed,
CASE
    WHEN wind_speed >= 40 THEN 'HIGH'
    WHEN wind_speed >= 30 THEN 'MODERATE'
    ELSE 'LOW' 
END as wind_severity
FROM station_data;

SELECT year,
CASE
    WHEN wind_speed >= 40 THEN 'HIGH'
    WHEN wind_speed >= 30 THEN 'MODERATE'
    ELSE 'LOW' 
END as wind_severity
FROM station_data
GROUP BY 1, 2;

SELECT year, month,
sum(
    CASE 
        WHEN tornado = 1 
        THEN precipitation 
        ELSE 0
    END
) AS tornado_precipitation,
sum(
    CASE 
        WHEN tornado = 0
        THEN precipitation 
        ELSE 0
    END
) AS non_tornado_precipitation,
CASE
    WHEN tornado = 0
    THEN 'NT'
    ELSE 'T'
END AS temTornado
FROM station_data
GROUP BY 1, 2;

SELECT year, month,
max(
    CASE 
        WHEN tornado 
        THEN precipitation 
        ELSE null
    END
) AS tornado_precipitation,
max(
    CASE 
        WHEN tornado
        THEN precipitation 
        ELSE null
    END
) AS non_tornado_precipitation,
CASE
    WHEN tornado
    THEN 'NT'
    ELSE 'T'
END AS temTornado
FROM station_data
GROUP BY 1;

SELECT month,
avg(
    CASE
        WHEN rain OR hail 
        THEN temperature 
        ELSE null
    END
) AS avg_precipitation_rain,
avg(
    CASE
        WHEN NOT (rain OR hail) 
        THEN temperature 
        ELSE null
    END
) AS non_avg_precipitation_rain,
CASE
    WHEN rain OR hail
    THEN 'CHOVEU'
    ELSE 'NAO CHOVEU'
END AS choveu
FROM station_data
WHERE year > 2000
GROUP BY 1;