/obj/item/clothing/under/armsmen
	name = "master armsmen uniform"
	desc = "You shouldn't be seeing this."
	icon = 'mods/military/icons/obj_uniform_armsmen.dmi'
	item_icons = list(slot_w_uniform_str = 'mods/military/icons/mob/onmob_uniform_armsmen.dmi')
	siemens_coefficient = 0.8
	gender_icons = 1

//Utility

/obj/item/clothing/under/armsmen/utility
	name = "armsmen utility uniform"
	desc = "Armsmen utility uniform, reminds you of days of old."
	icon_state = "armsman"
	item_state = "armsman"
	worn_state = "armsman"
	sprite_sheets = list()
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		energy = ARMOR_ENERGY_MINOR
		)