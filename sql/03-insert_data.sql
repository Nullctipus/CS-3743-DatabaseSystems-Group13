USE Project;

--Insert region dataa
INSERT INTO region(Region_ID, Region_Name)
VALUES
(1, 'North'),
(2, 'South'),
(3, 'East'),
(4, 'West'),
(5, 'Central');

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
(1, 5, NULL, '8839 SW Loop 410', '78252', 'TX', 'San Antonio', 'Truck', NULL),
(2, 5, NULL, '43 US Highway 87', '78013', 'TX', 'Comfort', 'Truck', NULL),
(3, 5, NULL, '1842 N Foster Rd', '78244', 'TX', 'San Antonio', 'Truck', NULL),
(4, 5, NULL, '13745 N Ih 35', '76537', 'TX', 'Jarrell', 'Gas', NULL),
(5, 5, NULL, 'Cotton Gin Rd', '76579', 'TX', 'Troy', 'Truck', NULL),
(6, 5, NULL, '2537 TX-21', '78659', 'TX', 'Paige', 'Truck', NULL),
(7, 1, NULL, '8055 I 35 S', '76706', 'TX', 'Waco', 'Truck', NULL),
(8, 4, NULL, '3880 Loop 467', '76950', 'TX', 'Sonora', 'Truck', NULL),
(9, 4, NULL, '1501 US-287 N Bus', '76065', 'TX', 'Midlothian', 'Truck', NULL),
(10, 1, NULL, '2105 S Goliad St', '75032', 'TX', 'Rockwall', 'Truck', NULL),
(11, 1, NULL, '7425 Bonnie View Rd', '75241', 'TX', 'Dallas', 'Truck', NULL),
(12, 3, NULL, '15919 North Fwy', '77090', 'TX', 'Houston', 'Truck', NULL),
(13, 3, NULL, '12210 Galveston Rd', '77034', 'TX', 'Houston', 'Gas', NULL),
(14, 2, NULL, '1101 Uniroyal Dr', '78045', 'TX', 'Laredo', 'Truck', NULL),
(15, 2, NULL, '1451 US-77 Bus', '78363', 'TX', 'Kingsville', 'Truck', NULL),
(16, 4, NULL, '1333 US-283 N', '79504', 'TX', 'Baird', 'Truck', NULL),
(17, 4, NULL, '5200 Cholla Rd', '79706', 'TX', 'Midland', 'Truck', NULL),
(18, 4, NULL, '4221 N Interstate 27', '79403', 'TX', 'Lubbock', 'Truck', NULL),
(19, 4, NULL, '6930 E Interstate 40', '79118', 'TX', 'Amarillo', 'Truck', NULL),
(20, 4, NULL, '1295 Horizon Blvd', '79927', 'TX', 'El Paso', 'Truck', NULL),
(21, 4, NULL, '581 Vinton Rd', '79821', 'TX', 'Vinton', 'Truck', NULL),
(22, 4, NULL, '3002 US-57 N', '78852', 'TX', 'Eagle Pass', 'Truck', NULL),
(23, 1, NULL, '1124 Central Fwy', '76301', 'TX', 'Wichita Falls', 'Truck', NULL),
(24, 1, NULL, '10101 Jacksboro Hwy', '76135', 'TX', 'Fort Worth', 'Truck', NULL),
(25, 4, NULL, '202 20 Frontage Rd', '76437', 'TX', 'Cisco', 'Truck', NULL);
