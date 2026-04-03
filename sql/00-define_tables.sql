CREATE TABLE IF NOT EXISTS region (
	region_id INT PRIMARY KEY,
    human_readable VARCHAR(128)
);

CREATE TABLE IF NOT EXISTS truck_stop (
	stop_id INT PRIMARY KEY,
    region_id INT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES region(region_id),
    human_readable VARCHAR(128),
    
    ts_address_line VARCHAR(128) NOT NULL,
    ts_zipcode int NOT NULL,
    ts_state VARCHAR(64) NOT NULL,
    ts_city VARCHAR(64) NOT NULL,
    ts_type VARCHAR(64) NOT NULL -- TODO: change to foreign table key might be wanted
);


CREATE TABLE IF NOT EXISTS police_station (
	police_station_id INT PRIMARY KEY,
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES region(region_id),
    -- Address
    ps_address_line VARCHAR(128) NOT NULL,
    ps_zipcode int NOT NULL,
    ps_state VARCHAR(64) NOT NULL,
    ps_city VARCHAR(64) NOT NULL,
    
    ps_personnel INT NOT NULL DEFAULT(0)
);

CREATE TABLE IF NOT EXISTS crime (
	crime_id INT PRIMARY KEY,
    police_station_id INT NOT NULL,
    stop_id INT NOT NULL,
    FOREIGN KEY (police_station_id) REFERENCES police_station(police_station_id),
    FOREIGN KEY (stop_id) REFERENCES truck_stop(stop_id),
    
    crime_type VARCHAR(64) NOT NULL,  -- TODO: change to foreign table key might be wanted
    crime_date date NOT NULL,
    crime_severity VARCHAR(64) NOT NULL  -- TODO: change to foreign table key might be wanted
);

CREATE TABLE IF NOT EXISTS distance (
    police_station_id INT NOT NULL,
    stop_id INT NOT NULL,
    FOREIGN KEY (police_station_id) REFERENCES police_station(police_station_id),
    FOREIGN KEY (stop_id) REFERENCES truck_stop(stop_id),
    
	miles INT
);