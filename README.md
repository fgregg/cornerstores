# cornerstores
Are there any food establishments in residentially zoned areas in Ann Arbor.

## Analysis Steps
1. Submit a [public records request to the the Washtenaw County Health Department for licensed food establishments](https://www.muckrock.com/foi/washtenaw-county-16744/food-establishment-licenses-188216/#).
2. They responded with a [PDF](./raw/RESTAURANT_LISTING.pdf). I used the Gemini 2.5 Pro model to extract the [data into a spreasheet](./processed/establishments.csv).
3. Spotchecked 30 row at random for accurate extraction
4. Geocoded the addresses with the Google MAPS Geocoder
5. Download the zoning districts
6. Do a spatial join to find the zoning of geocoded Ann Arbor establishments
