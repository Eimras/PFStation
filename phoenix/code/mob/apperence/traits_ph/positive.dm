/datum/trait/improved_biocompat
	name = "Improved Biocompatibility"
	desc = "Your body is naturally (or artificially) more receptive to healing chemicals without being vulnerable to the 'bad stuff'. You heal more efficiently from most chemicals, with no other drawbacks. Remember to note this down in your medical records!"
	cost = 2
	var_changes = list("chem_strength_heal" = 1.2)

/datum/trait/alcohol_tolerance_advanced
	name = "Liver of Steel"
	desc = "Drinks tremble before your might! You can hold your alcohol twice as well as those blue-bellied barnacle boilers! You may wish to note this down in your medical records."
	cost = 1
	var_changes = list("alcohol_mod" = 0.5)

/datum/trait/alcohol_immunity
	name = "Liver of Durasteel"
	desc = "You've drunk so much that most booze doesn't even faze you. It takes something like a Pan-Galactic or a pint of Deathbell for you to even get slightly buzzed. You may wish to note this down in your medical records."
	cost = 2
	var_changes = list("alcohol_mod" = 0.25)

/datum/trait/pain_tolerance_basic
	name = "Pain Tolerant"
	desc = "You're a little more resistant to pain than most, and experience 10% less pain from from all sources."
	cost = 1
	var_changes = list("pain_mod" = 0.9)

/datum/trait/pain_tolerance_advanced
	name = "High Pain Tolerance"
	desc = "You are noticeably more resistant to pain than most, and experience 20% less pain from all sources."
	cost = 2
	var_changes = list("pain_mod" = 0.8)

/datum/trait/bloodsucker_plus
	name = "Evolved Bloodsucker"
	desc = "Makes you able to gain nutrition by draining blood as well as eating food. To compensate, you get fangs that can be used to drain blood from prey."
	cost = 1
	var_changes = list("gets_food_nutrition" = 0.5) // Hopefully this works???
	excludes = list(/datum/trait/bloodsucker)

/datum/trait/bloodsucker_plus/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.verbs |= /mob/living/carbon/human/proc/bloodsuck

/datum/trait/sonar
	name="Perceptive Hearing"
	desc = "You can hear slight vibrations in the air very easily, if you focus."
	cost = 1
/datum/trait/sonar/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.verbs |= /mob/living/carbon/human/proc/sonar_ping

/datum/trait/coldadapt
	name = "Cold-Adapted"
	desc = "You are able to withstand much colder temperatures than other species, and can even be comfortable in extremely cold environments. You are also more vulnerable to hot environments as a consequence of these adaptations."
	cost = 2
	var_changes = list("cold_level_1" = 180,  "cold_level_2" = 130, "cold_level_3" = 70, "breath_cold_level_1" = 180, "breath_cold_level_2" = 100, "breath_cold_level_3" = 60, "cold_discomfort_level" = 180, "heat_level_1" = 320, "heat_level_2" = 370, "heat_level_3" = 600, "breath_heat_level_1" = 350, "breath_heat_level_2" = 400, "breath_heat_level_3" = 800, "heat_discomfort_level" = 295, "body_temperature" = 270)
	excludes = list(/datum/trait/hotadapt)

/datum/trait/hotadapt
	name = "Heat-Adapted"
	desc = "You are able to withstand much hotter temperatures than other species, and can even be comfortable in extremely hot environments. You are also more vulnerable to cold environments as a consequence of these adaptations."
	cost = 2
	var_changes = list("heat_level_1" = 420, "heat_level_2" = 460, "heat_level_3" = 1100, "breath_heat_level_1" = 440, "breath_heat_level_2" = 510, "breath_heat_level_3" = 1500, "heat_discomfort_level" = 390, "cold_level_1" = 280, "cold_level_2" = 220, "cold_level_3" = 140, "breath_cold_level_1" = 260, "breath_cold_level_2" = 240, "breath_cold_level_3" = 120, "cold_discomfort_level" = 280)
	excludes = list(/datum/trait/coldadapt)