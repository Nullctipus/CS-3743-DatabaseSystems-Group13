DELIMITER //

CREATE FUNCTION f_calculate_stop_risk(stop_id_param INT)
RETURNS DECIMAL(10,4)
READS SQL DATA
BEGIN
    DECLARE avg_severity DECIMAL(10,4) DEFAULT 0;
    DECLARE avg_date DATE;
    DECLARE crime_count INT DEFAULT 0;
    DECLARE crime_stat DECIMAL(10,4) DEFAULT 0;

    DECLARE min_dist DECIMAL(10,4) DEFAULT 0;
    DECLARE avg_dist DECIMAL(10,4) DEFAULT 0;
    DECLARE station_count INT DEFAULT 0;

    -- Crime stats
    SELECT 
        AVG(c.crime_severity),
        AVG(c.crime_date),
        COUNT(*)
    INTO avg_severity, avg_date, crime_count
    FROM crime c
    WHERE c.stop_id = stop_id_param;

    -- Avoid division by zero
    IF crime_count > 0 AND avg_date IS NOT NULL THEN
        SET crime_stat = SQRT(crime_count) * avg_severity * avg_severity /
                         GREATEST(DATEDIFF(NOW(), avg_date), 1);
    END IF;

    -- Distance stats
    -- TODO: factor in personnel
    SELECT 
        AVG(d.miles),
        MIN(d.miles),
        COUNT(*)
    INTO avg_dist, min_dist, station_count
    FROM distance d
    WHERE d.stop_id = stop_id_param;

    -- Avoid division by zero
    IF station_count = 0 THEN
        RETURN crime_stat*crime_stat;
    END IF;

    RETURN (min_dist / station_count) * avg_dist * crime_stat;
END //

-- Set a maximum distance between areas 
CREATE PROCEDURE p_prune_references_to_distance(IN distance INT)
BEGIN
	-- Delete police station stop references
	DELETE FROM distance d
    WHERE d.miles < distance;
    -- Delete crimes where the station and stop no longer interact
    DELETE FROM crime c
    WHERE NOT EXISTS (
		SELECT 1
        FROM distance d
        WHERE d.police_station_id = c.police_station_id and d.stop_id = c.stop_id
    );
END //

DELIMITER ;