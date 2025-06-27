zoning.csv : layers.sqlite
	ogr2ogr -sql "select * from zoning inner join geocoded_establishments on St_Intersects(zoning.geometry, geocoded_establishments.geometry)" -dialect SQLITE $@ $<

layers.sqlite : layers.vrt
	ogr2ogr -f SQLite $@ $< -dsco SPATIALITE=YES

layers.vrt : layers_raw.vrt
	# manually add the geometry defintion to the CSV

layers_raw.vrt : zoning.geojson processed/geocoded_establishments.csv
	vectors2vrt $^ -o $@

zoning.geojson :
	esri2geojson https://utility.arcgis.com/usrsvcs/servers/6173e81c20e349dbb37e0271f63eae04/rest/services/CommunityPlanningSymbols/MapServer/8/ $@

processed/geocoded_establishments.csv : processed/establishments.csv
	python scripts/geocode.py $< > $@
