mkdir osm_motorway osm_trunk osm_primary osm_secondary osm_tertiary osm_stream osm_river osm_railway osm_industrial osm_town osm_forest osm_golfcourse osm_commercial osm_sand osm_construction osm_lake osm_meadow osm_scrub osm_landmass osm_dump osm_grassland osm_lava osm_rock osm_airport osm_cemetery osm_grass osm_shoal osm_scree osm_heath osm_park osm_quarry osm_farm osm_plantnursery osm_brownfield osm_port osm_wetland

ogr2ogr osm_shapefiles $1.osm

#	ROADS
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_motorway/osm_motorway.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_trunk/osm_trunk.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_motorwaylink.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_trunklink.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_primary.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primarylink' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_primary_link.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_secondary.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_secondarylink.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'tertiary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_tertiary.shp osm_shapefiles/lines.shp

#	WATERWAYS
ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'stream'" osm_stream/osm_stream.shp osm_shapefiles/lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'river'" osm_river/osm_river.shp osm_shapefiles/lines.shp

#	RAILWAYS
ogr2ogr -f "ESRI Shapefile"  -where "other_tags LIKE '%railway%'" osm_railway/osm_railway.shp osm_shapefiles/lines.shp

#	AIRPORT
ogr2ogr -f "ESRI Shapefile"  -where "aeroway = 'aerodrome'" osm_airport/osm_airport.shp osm_shapefiles/multipolygons.shp

#	LANDUSE
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'commercial' OR landuse = 'retail'" osm_commercial/osm_commercial.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'residential'" osm_town/osm_town.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'quarry'" osm_quarry/osm_quarry.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'plant_nursery'" osm_plantnursery/osm_plantnursery.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'meadow'" osm_meadow/osm_meadow.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'landfill'" osm_dump/osm_landfill.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'industrial'" osm_industrial/osm_industrial.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'grass' OR landuse = 'flowerbed'" osm_grass/osm_grass.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'forest'" osm_forest/osm_forest.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'farmland' OR landuse = 'farmyard'" osm_farm/osm_farm.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'construction'" osm_construction/osm_costruction.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'cemetery'" osm_cemetery/osm_cemetery.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'brownfield'" osm_brownfield/osm_brownfield.shp osm_shapefiles/multipolygons.shp

#	LEISURE
ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'track'" osm_grass/osm_track.shp osm_shapefiles/multipolygons.shp
#ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'swimming_pool'" osm_lake/osm_swimming_pool.shp osm_shapefiles/multipolygons.shp	disabled to reduce complexity
#ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'playground'" osm_grass/osm_playground.shp osm_shapefiles/multipolygons.shp		disabled to reduce complexity
#ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'pitch'" osm_grass/osm_pitch.shp osm_shapefiles/multipolygons.shp			disabled to reduce complexity
ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'park' OR landuse = 'recreation_ground'" osm_park/osm_park.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'golf_course'" osm_golfcourse/osm_golfcourse.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'beach_resort'" osm_golfcourse/osm_beach_resort.shp osm_shapefiles/multipolygons.shp

#	MAN MADE
ogr2ogr -f "ESRI Shapefile"  -where "man_made = 'pier'" osm_port/osm_pier.shp osm_shapefiles/multipolygons.shp

#	NATURAL
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'wood'" osm_forest/osm_wood.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'wetland'" osm_wetland/osm_wetland.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'water'" osm_lake/osm_lake.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'shoal'" osm_shoal/osm_shoal.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'scrub'" osm_scrub/osm_scrub.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'scree'" osm_scree/osm_scree.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'beach' OR natural = 'sand'" osm_sand/osm_beach.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'bare_rock' OR natural = 'cliff' OR natural = 'rock'" osm_rock/osm_barerock.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'lava'" osm_lava/osm_lava.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'heath'" osm_heath/osm_heath.shp osm_shapefiles/multipolygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'grassland'" osm_grassland/osm_grassland.shp osm_shapefiles/multipolygons.shp

#	COASTLINE / LANDMASS
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'coastline' OR place = 'island' OR place = 'islet' OR ( boundary = 'administrative' AND admin_leve = '6' )" osm_landmass/osm_landmass.shp osm_shapefiles/multipolygons.shp
