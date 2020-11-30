/datum/trait/endurance_glass
	name = "Glass Endurance"
	desc = "Your body is very fragile. Reduces your maximum hitpoints to 25. Beware sneezes."
	cost = -4
	var_changes = list("total_health" = 25)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)

/datum/trait/reduced_biocompat
	name = "Reduced Biocompatibility"
	desc = "For whatever reason, you're one of the unlucky few who don't get as much benefit from modern-day chemicals. Remember to note this down in your medical records!"
	cost = -1
	var_changes = list("chem_strength_heal" = 0.8)

/datum/trait/sensitive_biochem
	name = "Sensitive Biochemistry"
	desc = "Your biochemistry is a little delicate, rendering you more susceptible to both deadly toxins and the more subtle ones. You'll probably want to list this in your medical records, and perhaps in your exploitable info as well."
	cost = -1
	var_changes = list("chem_strength_tox" = 1.25)

/datum/trait/alcohol_intolerance_advanced
	name = "Liver of Air"
	desc = "The only way you can hold a drink is if it's in your own two hands, and even then you'd best not inhale too deeply near it. Drinks hit thrice as hard. You may wish to note this down in your medical records, and perhaps your exploitable info as well."
	cost = -1
	var_changes = list("alcohol_mod" = 3)

/datum/trait/pain_intolerance_basic
	name = "Pain Intolerant"
	desc = "You are frail and sensitive to pain. You experience 25% more pain from all sources."
	cost = -1
	var_changes = list("pain_mod" = 1.25)

/datum/trait/pain_intolerance_advanced
	name = "High Pain Intolerance"
	desc = "You are highly sensitive to all sources of pain, and experience 50% more pain."
	cost = -2
	var_changes = list("pain_mod" = 1.5) //this makes you extremely vulnerable to most sources of pain, a stunbaton bop or shotgun beanbag will do around 90 agony, almost enough to drop you in one hit

/datum/trait/light_sensitivity
	name = "Photosensitivity"
	desc = "You have trouble dealing with sudden flashes of light, taking some time for you to recover. The effects of flashes from cameras and security equipment leaves you stunned for some time."
	cost = -1
	var_changes = list("flash_mod" = 1.5)

/datum/trait/light_sensitivity_plus
	name = "Extreme Photosensitivity"
	desc = "You have trouble dealing with sudden flashes of light, taking quite a long time for you to be able to recover. The effects of flashes from cameras and security equipment leave you stunned for some time."
	cost = -2
	var_changes = list("flash_mod" = 2.0)

/datum/trait/haemophilia
	name = "Haemophilia"
	desc = "Some say that when it rains, it pours.  Unfortunately, this is also true for yourself if you get cut. You bleed much faster than average"
	cost = -3

/datum/trait/haemophilia/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.add_modifier(/datum/modifier/trait/haemophilia)