/datum/nifsoft/sizechange/macro
	name = "Extreme Mass Alteration"
	desc = "A system that allows one to change their size, through drastic mass rearrangement. Causes significant wear when installed."
	list_pos = NIF_SIZECHANGE
	cost = 10000
	wear = 0
	illegal = TRUE

	activate()
		if((. = ..()))
			var/new_size = input("Put the desired size (25-300%)", "Set Size", 300) as num

			if (!ISINRANGE(new_size,25,300))
				to_chat(nif.human,"<span class='notice'>The safety features of the NIF Program prevent you from choosing this size.</span>")
				return
			else
				nif.human.resize(new_size/100)
				to_chat(nif.human,"<span class='notice'>You set the size to [new_size]%</span>")

			nif.human.visible_message("<span class='warning'>Swirling grey mist envelops [nif.human] as they change size!</span>","<span class='notice'>Swirling streams of nanites wrap around you as you change size!</span>")

			spawn(0)
				deactivate()

	deactivate()
		if((. = ..()))
			return TRUE

	stat_text()
		return "Change Size"

/obj/item/weapon/disk/nifsoft/sizechange/macro

	name = "NIFSoft Uploader - Extreme Mass Alteration"

	desc = "Contains a specialized Mass Alteration NIFSoft.\n\

	It has a small label: \n\

	\"Portable NIFSoft Installation Media. \n\

	Align ocular port with eye socket and depress red plunger.\""


	icon_state = "engineering"

	stored = /datum/nifsoft/sizechange/macro