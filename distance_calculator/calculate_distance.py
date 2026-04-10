#!/bin/env python3
import json

from geopy.distance import geodesic

from_addrs = [
    "8839 SW Loop 410, San Antonio Texas",
    "43 US Highway 87, Comfort Texas",
    "1842 N Foster Rd, San Antonio Texas",
    "13745 N Ih 35, Jarrell Texas",
    "Cotton Gin Rd, Troy Texas",
    "2537 TX-21, Paige Texas",
    "8055 I 35 S, Waco Texas",
    "3880 Loop 467, Sonora Texas",
    "1501 US-287 N Bus, Midlothian Texas",
    "2105 S Goliad St, Rockwall Texas",
    "7425 Bonnie View Rd, Dallas Texas",
    "15919 North Fwy, Houston Texas",
    "12210 Galveston Rd, Houston Texas",
    "1101 Uniroyal Dr, Laredo Texas",
    "1451 US-77 Bus, Kingsville Texas",
    "1333 US-283 N, Baird Texas",
    "5200 Cholla Rd, Midland Texas",
    "4221 N Interstate 27, Lubbock Texas",
    "6930 E Interstate 40, Amarillo Texas",
    "1295 Horizon Blvd, El Paso Texas",
    "581 Vinton Rd, Vinton Texas",
    "3002 US-57 N, Eagle Pass Texas",
    "1124 Central Fwy, Wichita Falls Texas",
    "10101 Jacksboro Hwy, Fort Worth Texas",
    "202 20 Frontage Rd, Cisco Texas",
]

to_addrs = [
    "911 N Raynor St, El Paso Texas",
    "9600 Dyer St, El Paso Texas",
    "4712 Maher Ave, Laredo Texas",
    "2600 W Travis St, Sherman Texas",
    "505 W Felix St, Ft Worth Texas",
    "8755 N Riverside Dr, Ft Worth Texas",
    "1400 Botham Jean Blvd, Dallas Texas",
    "725 N Jim Miller Rd, Dallas Texas",
    "334 S Hall St, Dallas Texas",
    "620 W Division St, Arlington Texas",
    "1030 SW Green Oaks Blvd, Arlington Texas",
    "2060 W Green Oaks Blvd, Arlington Texas",
    "1200 Travis St, Houston Texas",
    "3635 E Houston St, San Antonio Texas",
    "61 Riesner St, Houston Texas",
    "1400 Boston Ave, Nederland Texas",
    "2600 W Travis St, Sherman Texas",
    "217 E Market St, Sinton Texas",
    "2004 N Cleveland St, Dayton Texas",
    "5020 Prue Rd, San Antonio Texas",
    "8600 Wurzbach Rd, San Antonio Texas",
    "5555 Airport Blvd, Austin Texas",
    "5805 N Lamar Blvd, Austin Texas",
    "4201 Ed Bluestein Blvd, Austin Texas",
]


with open("coords_cache.json") as f:
    cache = json.load(f)

from_coords = [cache[addr] for addr in from_addrs]
to_coords = [cache[addr] for addr in to_addrs]

print("INSERT INTO distances(stop_id,police_station_id,miles)\nVALUES\n")

for i, f in enumerate(from_coords):
    if f is None:
        continue

    for j, t in enumerate(to_coords):
        if t is None:
            continue

        miles = geodesic(f, t).miles
        print(f"({i+1},{j+1},{miles}),")
