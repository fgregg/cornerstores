# cornerstores
Are there any food establishments in residentially zoned areas in Ann Arbor.

## Analysis Steps
1. Submit a [public records request to the the Washtenaw County Health Department for licensed food establishments](https://www.muckrock.com/foi/washtenaw-county-16744/food-establishment-licenses-188216/#).
2. They responded with a [PDF](./raw/RESTAURANT_LISTING.pdf). I used the Gemini 2.5 Pro model to extract the [data into a spreasheet](./processed/establishments.csv).
3. Spotchecked 30 row at random for accurate extraction
4. Geocoded the addresses with the Google MAPS Geocoder
5. Download the zoning districts
6. Do a spatial join to find the [zoning of geocoded Ann Arbor establishments](https://www.google.com/maps/place/42%C2%B016'56.6%22N+83%C2%B044'13.4%22W/@42.2822057,-83.7370509,3a,75y,0.45h,90t/data=!3m7!1e1!3m5!1sP9j9QAiTqm1qeKIfxYRe1w!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D0%26panoid%3DP9j9QAiTqm1qeKIfxYRe1w%26yaw%3D0.45236358!7i16384!8i8192!4m4!3m3!8m2!3d42.282378!4d-83.7370491?entry=ttu&g_ep=EgoyMDI1MDYyMy4yIKXMDSoASAFQAw%3D%3Do)

Use only as a preliminary indicator. The PDF extraction and geocoding can go awry.
