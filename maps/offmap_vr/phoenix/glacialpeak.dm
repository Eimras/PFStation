#include "glacialpeak_area.dm"

/datum/map_template/tether_lateload/offmap/glacial
	name = "Offmap Ship - Glacial Peak"
	desc = "Offmap spawn ship, The Glacial Peak"
	mappath = 'maps/offmap_vr/phoenix/glacialpeak.dmm'
	associated_map_datum = /datum/map_z_level/tether_lateload/glacial

/datum/map_z_level/tether_lateload/glacial
	name = "Glacial Peak"
	flags = MAP_LEVEL_PLAYER


/obj/effect/landmark/map_data/glacial_peak
	height = 2

/obj/effect/overmap/visitable/ship/glace
	scanner_name = "ITV Talon"
	scanner_desc = @{"[i]Registration[/i]: PES Glacial Pea
[i]Class[/i]: Frigate
[i]Transponder[/i]: Transmitting (CIV)
[b]Notice[/b]: Centeral Command Vessal"}
	color = "#aacccc"
	vessel_mass = 10000
	vessel_size = SHIP_SIZE_LARGE
//	initial_generic_waypoints = list("talon_fore", "talon_aft", "talon_port", "talon_starboard")
//	initial_restricted_waypoints = list("Talon's boat" = list("offmap_spawn_talonboat"), "Talon lifeboat" = list("offmap_spawn_talon_lifeboat"))
