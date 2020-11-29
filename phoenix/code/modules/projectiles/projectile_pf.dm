//bayadd arf
#define SEGMENT_DELETION_DELAY 5

/obj/item/projectile/proc/launch(atom/target, var/target_zone, var/x_offset=0, var/y_offset=0, var/angle_offset=0)
    var/turf/curloc = get_turf(src)
    var/turf/targloc = get_turf(target)
    if (!istype(targloc) || !istype(curloc))
        return 1

    if(targloc == curloc) //Shooting something in the same turf
        target.bullet_act(src, target_zone)
        on_impact(target)
        qdel(src)
        return 0

    original = target
    def_zone = target_zone

    addtimer(CALLBACK(src, .proc/finalize_launch, curloc, targloc, x_offset, y_offset, angle_offset),0)
    return 0

/obj/item/projectile/proc/finalize_launch(var/turf/curloc, var/turf/targloc, var/x_offset, var/y_offset, var/angle_offset)
	setup_trajectory(curloc, targloc, x_offset, y_offset, angle_offset) //plot the initial trajectory
	process()
	spawn(SEGMENT_DELETION_DELAY) //running this from a proc wasn't working.
		QDEL_NULL_LIST(segments)

/obj/item/projectile/proc/setup_trajectory(turf/startloc, turf/targloc, var/x_offset = 0, var/y_offset = 0)
	// setup projectile state
	starting = startloc
	current = startloc
	yo = round(targloc.y - startloc.y + y_offset, 1)
	xo = round(targloc.x - startloc.x + x_offset, 1)

