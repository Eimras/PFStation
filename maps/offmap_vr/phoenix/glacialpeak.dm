#include "glacialpeak_area.dm"

/datum/map_template/om_ships/glacial1
	name = "Offmap Ship - Glacial Peak deck 1 (New Z)"
	desc = "Offmap spawn ship, The Glacial Peak"
	mappath = 'glacialpeak1.dmm'

/datum/map_template/om_ships/glacial2
	name = "Offmap Ship - Glacial Peak deck 2 (New Z)"
	desc = "Offmap spawn ship, The Glacial Peak"
	mappath = 'glacialpeak2.dmm'

/obj/effect/landmark/map_data/glacial_peak
	height = 2

/obj/effect/overmap/visitable/ship/glace
	name = "spacecraft"
	desc = "Spacefaring vessel. Friendly IFF detected."
	scanner_name = "PES Glacial Peak"
	scanner_desc = @{"[i]Registration[/i]: PES Glacial Pea
[i]Class[/i]: Frigate
[i]Transponder[/i]: Transmitting (CIV)
[b]Notice[/b]: Centeral Command Vessal"}
	color = "#aacccc"
	vessel_mass = 10000
	vessel_size = SHIP_SIZE_LARGE
	initial_generic_waypoints = list("glacial_fore", "glacial_aft")
	initial_restricted_waypoints = list("The IceBreaker" = list("omship_ship_icebreak"))



/obj/structure/faker_stairs
	name = "stairs"
	icon = 'icons/obj/stairs.dmi'
	density = 0
	opacity = 0
	anchored = 1
	plane = TURF_PLANE
	layer = ABOVE_TURF_LAYER
	appearance_flags = PIXEL_SCALE|KEEP_TOGETHER

/obj/structure/faker_stairs/top
	color = "#B0B0B0"


/area/shuttle/glacialboat
	name = "IceBreaker"
	requires_power = 1
	dynamic_lighting = 1
/*
// The shuttle's 'shuttle' computer
/obj/machinery/computer/shuttle_control/explore/aroboat2
	name = "boat control console"
	shuttle_tag = "The IceBreaker"
	req_one_access = list(access_cent_general)
*/
// A shuttle lateloader landmark
/obj/effect/shuttle_landmark/shuttle_initializer/glacialboat
	name = "The IceBreaker Hanger"
	base_area = /area/glace/deckone/hanger
	base_turf = /turf/simulated/floor/tiled/monotile
	landmark_tag = "omship_ship_icebreak"
//	docking_controller = "aroship2_boatbay"
	shuttle_type = /datum/shuttle/autodock/overmap/glacialboat

// The 'shuttle'
/datum/shuttle/autodock/overmap/glacialboat
	name = "The IceBreaker"
	current_location = "omship_ship_icebreak"
	docking_controller_tag = "icebreaker_docker"
	shuttle_area = /area/shuttle/glacialboat
	fuel_consumption = 1
	defer_initialisation = TRUE

/obj/effect/overmap/visitable/ship/landable/glacialboat
	name = "The Ice Breaker"
	desc = "Droppy is a dumb"
	vessel_mass = 3000
	vessel_size = SHIP_SIZE_SMALL
	shuttle = "The IceBreaker"

/obj/machinery/computer/shuttle_control/explore/icebreaker
	name = "short jump console"
	shuttle_tag = "The IceBreaker"
	req_one_access = list()