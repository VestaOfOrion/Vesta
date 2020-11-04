/datum/species/machine
	name = SPECIES_IPC
	name_plural = "Machines"

	description = "(Generation 2 IPC. Placeholder description)"
	cyborg_noun = null

	//preview_icon = 'icons/species/ipc/preview.dmi'

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch
	)

	rarity_value = 2
	strength = STR_HIGH

	min_age = 1
	max_age = 200

	warning_low_pressure = 50
	hazard_low_pressure = -1

	cold_level_1 = SYNTH_COLD_LEVEL_1
	cold_level_2 = SYNTH_COLD_LEVEL_2
	cold_level_3 = SYNTH_COLD_LEVEL_3

	heat_level_1 = SYNTH_HEAT_LEVEL_1		// Gives them about 25 seconds in space before taking damage
	heat_level_2 = SYNTH_HEAT_LEVEL_2
	heat_level_3 = SYNTH_HEAT_LEVEL_3

	body_temperature = null
	passive_temp_gain = 5  // This should cause IPCs to stabilize at ~80 C in a 20 C environment.

	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_POISON
	spawn_flags = SPECIES_CAN_JOIN  // | SPECIES_IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_EYE_COLOR //IPCs can wear undies too :(
	bodytype = BODYTYPE_HUMANOID

	blood_color = "#1f181f"
	flesh_color = "#575757"

	has_organ = list(
		BP_POSIBRAIN = /obj/item/organ/internal/posibrain,
		BP_EYES = /obj/item/organ/internal/eyes/robot
		)

	heat_discomfort_level = 373.15
	heat_discomfort_strings = list(
		"Your CPU temperature probes warn you that you are approaching critical heat levels!"
		)
	genders = list(NEUTER)

	available_cultural_info = list(
		TAG_CULTURE = list(CULTURE_SYNTHETIC)
	)

	brute_mod =      1.1
	burn_mod =       1.5

/datum/species/machine/handle_death(var/mob/living/carbon/human/H)
	..()
	if(istype(H.wear_mask,/obj/item/clothing/mask/monitor))
		var/obj/item/clothing/mask/monitor/M = H.wear_mask
		M.monitor_state_index = "blank"
		M.update_icon()

/datum/species/machine/post_organ_rejuvenate(var/obj/item/organ/org, var/mob/living/carbon/human/H)
	var/obj/item/organ/external/E = org
	if(istype(E) && !BP_IS_PROSTHETIC(E))
		E.robotize("Morpheus")

/datum/species/machine/get_blood_name()
	return "oil"

/datum/species/machine/disfigure_msg(var/mob/living/carbon/human/H)
	var/datum/gender/T = gender_datums[H.get_gender()]
	return "<span class='danger'>[T.His] faceplate is dented and cracked!</span>\n"
