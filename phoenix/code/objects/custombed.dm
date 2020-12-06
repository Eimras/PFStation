//Giant Beds
/obj/structure/bed/double/big
	icon_scale_x = 2
	icon_scale_y = 2

/obj/structure/bed/double/huge
	icon_scale_x = 3
	icon_scale_y = 3

/obj/structure/bed/double/big/New(var/newloc)
	..(newloc,"wood","cotton")
	update_transform()

/obj/structure/bed/double/huge/New(var/newloc)
	..(newloc,"wood","cotton")
	update_transform()

/obj/structure/bed/double/big/post_buckle_mob(mob/living/M as mob)
	if(M.buckled == src)
		M.pixel_y = 25
		M.old_y = 25
	else
		M.pixel_y = 0
		M.old_y = 0

/obj/structure/bed/double/huge/post_buckle_mob(mob/living/M as mob)
	if(M.buckled == src)
		M.pixel_y = 37
		M.old_y = 37
	else
		M.pixel_y = -5
		M.old_y = -5

// Bedsheets
/obj/item/weapon/bedsheet/New()
	update_transform()


/obj/item/weapon/bedsheet/double/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/bluedouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/greendouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/orangedouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/purpledouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/rainbowdouble/big //all the way across the sky.
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/reddouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/yellowdouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/mimedouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/clowndouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/captaindouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/rddouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/hosdouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/hopdouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/cedouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/browndouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/iandouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/cosmosdouble/big
	icon_state = "dobulesheetcosmos"
	icon_scale_x = 2.2
	icon_scale_y = 2.2

/obj/item/weapon/bedsheet/piratedouble/big
	icon_scale_x = 2.2
	icon_scale_y = 2.2

//Huge Bedsheets
/obj/item/weapon/bedsheet/double/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/bluedouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/greendouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/orangedouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/purpledouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/rainbowdouble/huge //all the way across the sky.
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/reddouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/yellowdouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/mimedouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/clowndouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/captaindouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/rddouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/hosdouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/hopdouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/cedouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/browndouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/iandouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/cosmosdouble/huge
	icon_state = "dobulesheetcosmos"
	icon_scale_x = 3.3
	icon_scale_y = 3.3

/obj/item/weapon/bedsheet/piratedouble/huge
	icon_scale_x = 3.3
	icon_scale_y = 3.3