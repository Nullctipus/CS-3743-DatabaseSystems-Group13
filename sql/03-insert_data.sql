USE Project;

--Insert region data
INSERT INTO region(Region_ID, human_readable)
VALUES
(1, 'North'),
(2, 'South'),
(3, 'East'),
(4, 'West'),
(5, 'Central');

-- Insert severity
INSERT INTO severity(severity_id, human_readable)
	VALUES
	(1, 'Low'),
	(2, 'Medium-Low'),
	(3, 'Medium'),
	(4, 'Medium-High'),
	(5, 'High');

-- Insert Stop types
INSERT INTO stops(stops_id,human_readable)
	VALUES
	(1, 'Truck'),
	(2, 'Gas');

-- Crime types
INSERT INTO crimes(crime_type_id, human_readable)
	VALUES
	(1, 'Theft'),
	(2, 'Larceny');

-- Insert truck stop data
INSERT INTO truck_stop (
    stop_id,
    region_id,
    human_readable,
    ts_address_line,
    ts_zipcode,
    ts_state,
    ts_city,
    ts_type,
    ts_risk
)
VALUES
(1, 5, NULL, '8839 SW Loop 410', '78252', 'TX', 'San Antonio', 1, NULL),
(2, 5, NULL, '43 US Highway 87', '78013', 'TX', 'Comfort', 1, NULL),
(3, 5, NULL, '1842 N Foster Rd', '78244', 'TX', 'San Antonio', 1, NULL),
(4, 5, NULL, '13745 N Ih 35', '76537', 'TX', 'Jarrell', 2, NULL),
(5, 5, NULL, 'Cotton Gin Rd', '76579', 'TX', 'Troy', 1, NULL),
(6, 5, NULL, '2537 TX-21', '78659', 'TX', 'Paige', 1, NULL),
(7, 1, NULL, '8055 I 35 S', '76706', 'TX', 'Waco', 1, NULL),
(8, 4, NULL, '3880 Loop 467', '76950', 'TX', 'Sonora', 1, NULL),
(9, 4, NULL, '1501 US-287 N Bus', '76065', 'TX', 'Midlothian', 1, NULL),
(10, 1, NULL, '2105 S Goliad St', '75032', 'TX', 'Rockwall', 1, NULL),
(11, 1, NULL, '7425 Bonnie View Rd', '75241', 'TX', 'Dallas', 1, NULL),
(12, 3, NULL, '15919 North Fwy', '77090', 'TX', 'Houston', 1, NULL),
(13, 3, NULL, '12210 Galveston Rd', '77034', 'TX', 'Houston', 2, NULL),
(14, 2, NULL, '1101 Uniroyal Dr', '78045', 'TX', 'Laredo', 1, NULL),
(15, 2, NULL, '1451 US-77 Bus', '78363', 'TX', 'Kingsville', 1, NULL),
(16, 4, NULL, '1333 US-283 N', '79504', 'TX', 'Baird', 1, NULL),
(17, 4, NULL, '5200 Cholla Rd', '79706', 'TX', 'Midland', 1, NULL),
(18, 4, NULL, '4221 N Interstate 27', '79403', 'TX', 'Lubbock', 1, NULL),
(19, 4, NULL, '6930 E Interstate 40', '79118', 'TX', 'Amarillo', 1, NULL),
(20, 4, NULL, '1295 Horizon Blvd', '79927', 'TX', 'El Paso', 1, NULL),
(21, 4, NULL, '581 Vinton Rd', '79821', 'TX', 'Vinton', 1, NULL),
(22, 4, NULL, '3002 US-57 N', '78852', 'TX', 'Eagle Pass', 1, NULL),
(23, 1, NULL, '1124 Central Fwy', '76301', 'TX', 'Wichita Falls', 1, NULL),
(24, 1, NULL, '10101 Jacksboro Hwy', '76135', 'TX', 'Fort Worth', 1, NULL),
(25, 4, NULL, '202 20 Frontage Rd', '76437', 'TX', 'Cisco', 1, NULL);

-- Insert police station data
INSERT INTO police_station (
    police_station_id,
    region_id,
    ps_address_line,
    ps_zipcode,
    ps_state,
    ps_city
)
VALUES
(1, 4, '911 N Raynor St', 79903, 'TX', 'El Paso'),
(2, 4,'9600 Dyer St', 79924, 'TX', 'El Paso'),
(3, 2, '4712 Maher Ave', 78041, 'TX', 'Laredo'),
(4, 1,'2600 W Travis St', 75092, 'TX', 'Sherman'),
(5, 1, '505 W Felix St', 76115, 'TX', 'Ft Worth'),
(6, 1, '8755 N Riverside Dr', 76244, 'TX', 'Ft Worth'),
(7, 1, '1400 Botham Jean Blvd', 75215, 'TX', 'Dallas'),
(8, 1, '725 N Jim Miller Rd', 75217, 'TX', 'Dallas'),
(9, 1, '334 S Hall St', 75226, 'TX', 'Dallas'),
(10, 1, '620 W Division St', 76011, 'TX', 'Arlington'),
(11, 1, '1030 SW Green Oaks Blvd', 76017, 'TX', 'Arlington'),
(12, 1, '2060 W Green Oaks Blvd', 76013, 'TX', 'Arlington'),
(13, 3, '1200 Travis St', 77002, 'TX', 'Houston'),
(14, 5, '3635 E Houston St', 78219, 'TX', 'San Antonio'),
(15, 3, '61 Riesner St', 77002, 'TX', 'Houston'),
(16, 3, '1400 Boston Ave', 77627, 'TX', 'Nederland'),
(17, 1, '2600 W Travis St', 75092, 'TX', 'Sherman'),
(18, 2, '217 E Market St', 78387, 'TX', 'Sinton'),
(19, 3, '2004 N Cleveland St', 77535, 'TX', 'Dayton'),
(20, 5, '5020 Prue Rd', 78240, 'TX', 'San Antonio'),
(21, 5, '8600 Wurzbach Rd', 78240, 'TX', 'San Antonio'),
(22, 5, '5555 Airport Blvd', 78751, 'TX', 'Austin'),
(23, 5, '5805 N Lamar Blvd', 78752, 'TX', 'Austin'),
(24, 5, '4201 Ed Bluestein Blvd', 78721, 'TX', 'Austin');
