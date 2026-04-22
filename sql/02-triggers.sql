DELIMITER //

-- Cleans related data
CREATE TRIGGER on_stop_removed
BEFORE DELETE
ON truck_stop
FOR EACH ROW
BEGIN
	-- Clean distances with stop
	DELETE FROM distance
    WHERE distance.stop_id = old.stop_id;
    -- Clean Police stations not referenced anymore
    DELETE FROM police_station
    WHERE police_station.police_station_id IN (
		SELECT p.police_station_id
        FROM police_station p
        WHERE NOT EXISTS (
			SELECT 1
            FROM distance d
            WHERE d.police_station_id = p.police_station_id
        )
    );
END //

-- Create a human readable name for a stop if one is not supplied
CREATE TRIGGER on_truck_stop_added
BEFORE INSERT
ON truck_stop
FOR EACH ROW
BEGIN
	IF NEW.human_readable IS NULL THEN
    
		SET NEW.human_readable = CONCAT((SELECT s.human_readable FROM stops s WHERE s.stops_id = NEW.ts_type), " at ", NEW.ts_address_line," ", NEW.ts_city);
    END IF;
END //

-- If a police station get a new road or a road is blocked
CREATE TRIGGER on_distance_update_risk
AFTER UPDATE
ON distance
FOR EACH ROW
BEGIN
	UPDATE truck_stop ts
    SET ts.ts_risk = f_calculate_stop_risk(ts.stop_id)
    WHERE ts.stop_id = NEW.stop_id;
END //

-- if a new connection made
CREATE TRIGGER on_distance_insert_risk
AFTER INSERT
ON distance
FOR EACH ROW
BEGIN
	UPDATE truck_stop ts
    SET ts.ts_risk = f_calculate_stop_risk(ts.stop_id)
    WHERE ts.stop_id = NEW.stop_id;
END //
-- if a connection is removed
CREATE TRIGGER on_distance_delete_risk
AFTER DELETE
ON distance
FOR EACH ROW
BEGIN
	UPDATE truck_stop ts
    SET ts.ts_risk = f_calculate_stop_risk(ts.stop_id)
    WHERE ts.stop_id = OLD.stop_id;
END //

-- If a crime occurs
CREATE TRIGGER on_new_crime_risk
AFTER INSERT
ON crime
FOR EACH ROW
BEGIN
	UPDATE truck_stop ts
    SET ts.ts_risk = f_calculate_stop_risk(ts.stop_id)
    WHERE ts.stop_id = NEW.stop_id;
END //
-- TODO: Find more cases where risk should be updated
DELIMITER ;