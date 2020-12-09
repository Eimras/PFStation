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
//	initial_generic_waypoints = list("talon_fore", "talon_aft", "talon_port", "talon_starboard")
//	initial_restricted_waypoints = list("Talon's boat" = list("offmap_spawn_talonboat"), "Talon lifeboat" = list("offmap_spawn_talon_lifeboat"))



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