import csv
import sys

import environ
import googlemaps

environ.Env.read_env(".env")
env = environ.Env()


api_key = env("GOOGLE_MAPS_API_KEY")
gmaps = googlemaps.Client(key=api_key)

with open(sys.argv[1]) as f:
    reader = csv.DictReader(f)
    fields = reader.fieldnames
    writer = csv.DictWriter(sys.stdout, fields + ["lat", "lng"])
    writer.writeheader()
    for row in reader:

        address_string = f"{row['address']}, {row['city']}, Michigan"
        geocode_result = gmaps.geocode(address_string)
        # Geocode an address
        if geocode_result:
            location = geocode_result[0]["geometry"]["location"]

            row.update({"lat": location["lat"], "lng": location["lng"]})

            writer.writerow(row)
