USE Project;

-- Insert region data
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
(24, 5, '4201 Ed Bluestein Blvd', 78721, 'TX', 'Austin'),
(25, 4, '601 N Loraine St', 79701, 'TX', 'Midland' ),
(26, 4,  '911 S 1st St W', 79510, 'TX', 'Cylde');

-- Insert crime data
-- NOTE:
-- The crime CSV provides Crime_ID, City, State, County, Offense, and Location,
-- but the crime table also requires police_station_id, stop_id, crime_date,
-- and crime_severity. Replace the TODO values below with the correct IDs/dates/severity.

INSERT INTO crime (
    crime_id,
    police_station_id,
    stop_id,
    crime_type,
    crime_date,
    crime_severity
)
VALUES
(1,  20, 2, 1, '2020-12-03', 5),
(2,  14, 3, 1, '2025-02-27', 3),
(3,  26, 17, 1, '2024-06-30', 2),
(4,  6, 24, 1, '2023-05-12', 5),
(5, 2, 21, 1, '2022-10-11', 1),
(6,  13, 13, 1, '2020-06-02', 2),
(7,  21, 3, 2, '2021-11-11', 3),
(8,  23, 4, 2, '2026-01-20', 2),
(9,  22, 5, 2, '2025-12-06', 4),
(10, 8, 10, 1, '2023-04-09', 1),
(11, 7, 11, 1, '2020-03-23', 1),
(12, 20, 1, 1, '2024-09-16', 3),
(13, 26, 17, 1, '2020-05-06', 2),
(14, 22, 4, 1, '2023-02-28', 2),
(15, 2, 21, 1, '2023-06-13', 1),
(16, 24, 6, 1, '2023-12-21', 5),
(17, 14, 2, 1, '2024-03-30', 2),
(18, 14, 3, 1, '2025-09-13', 3),
(19, 15, 12, 1, '2022-02-02', 4),
(20, 13, 12, 2, '2021-05-05', 4),
(21, 26, 17, 2, '2021-08-11', 2),
(22, 1, 21, 2, '2020-11-01', 1),
(23, 24, 6, 1, '2022-01-18', 3),
(24, 5, 9,1, '2022-03-11', 3),
(25, 3, 14, 1, '2021-07-19', 2),
(26, 11, 7, 2, '2022-09-03', 3),
(27, 18, 22, 1, '2023-01-14', 4),
(28, 9, 8, 2, '2020-12-30', 1),
(29, 5, 25, 1, '2024-05-22', 5),
(30, 16, 18, 2, '2025-08-10', 2),
(31, 21, 2, 1, '2023-03-17', 3),
(32, 4, 6, 2, '2022-11-25', 1),
(33, 12, 13, 1, '2024-07-04', 4),
(34, 25, 20, 2, '2021-02-08', 2),
(35, 6, 24, 1, '2025-10-19', 5),
(36, 14, 15, 2, '2020-08-27', 1),
(37, 8, 11, 1, '2023-06-06', 3),
(38, 19, 19, 2, '2022-04-12', 2),
(39, 2, 21, 1, '2021-09-29', 4),
(40, 23, 4, 2, '2026-02-11', 2),
(41, 10, 9, 1, '2024-01-01', 3),
(42, 7, 11, 2, '2023-08-18', 1),
(43, 17, 16, 1, '2025-06-23', 5),
(44, 1, 23, 2, '2020-10-05', 2),
(45, 13, 12, 1, '2022-12-14', 3),
(46, 20, 1, 2, '2024-03-09', 4),
(47, 24, 6, 1, '2021-05-30', 2),
(48, 22, 5, 2, '2025-11-07', 3),
(49, 15, 12, 1, '2023-07-21', 1),
(50, 26, 17, 2, '2022-06-16', 2),
(51, 18, 19, 1, '2023-09-14', 3),
(52, 4, 19, 2, '2024-02-22', 2),
(53, 25, 19, 1, '2025-07-11', 4),
(54, 1, 23, 2, '2022-06-05', 1),
(55, 10, 23, 1, '2023-11-30', 5),
(56, 7, 23, 2, '2021-03-18', 2),
(57, 11, 7, 1, '2024-08-09', 3),
(58, 6, 7, 2, '2022-12-01', 2),
(59, 3, 8, 1, '2025-04-27', 4);
