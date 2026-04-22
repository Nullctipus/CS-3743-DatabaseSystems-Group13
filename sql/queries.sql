-- regional crimes
SELECT 
    r.human_readable AS region_name, 
    COUNT(c.crime_id) AS total_crimes
FROM region r
JOIN truck_stop ts ON r.region_id = ts.region_id
JOIN crime c ON ts.stop_id = c.stop_id
GROUP BY r.region_id;

-- number of crimes in a city
SELECT 
    ps.ps_city, 
    COUNT(c.crime_id) AS crime_count
FROM police_station ps
LEFT JOIN crime c ON ps.police_station_id = c.police_station_id
GROUP BY ps.ps_city;

-- truck stops with high risk and distance from nearest station
SELECT 
    ts.human_readable AS stop_name, 
    ts.ts_risk, 
    d.miles AS distance_to_station
FROM truck_stop ts
JOIN distance d ON ts.stop_id = d.stop_id
WHERE ts.ts_risk > 0.70 AND d.miles > 10;

-- 10 truck stops with lowest risk scores
SELECT 
    ts_city,
    human_readable AS stop_name,
    ts_type,
    ts_risk
FROM truck_stop
ORDER BY ts_risk ASC
LIMIT 10;

-- orders regions by the highest number of police stations
SELECT 
    r.human_readable AS region_name, 
    COUNT(ps.police_station_id) AS station_count
FROM region r
LEFT JOIN police_station ps ON r.region_id = ps.region_id
GROUP BY r.region_id, r.human_readable
ORDER BY station_count DESC;

-- shows unique cities with truck stops across Texas 
SELECT
    DISTINCT ts_city AS station_city
FROM truck_stop ts;

-- reflects all truck stops with no crimes reported
SELECT
    ts.stop_id AS truck_ID
FROM truck_stop ts
WHERE ts.stop_id NOT IN (
    SELECT DISTINCT c.stop_id
FROM crime c
);
