/datum/job/submap
	branch = /datum/mil_branch/civilian
	rank =   /datum/mil_rank/civ/civ
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fed_armsmen
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fed_armsmen
	)
	required_language = null

/datum/map/tradeship
	branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fed_armsmen,
		/datum/mil_branch/civilian
	)

	spawn_branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fed_armsmen,
		/datum/mil_branch/civilian
	)

	species_to_branch_blacklist = list()

	species_to_branch_whitelist = list()

	species_to_rank_blacklist = list()

	species_to_rank_whitelist = list()

/*
 *  Branches
 *  ========
 */

/datum/mil_branch/expeditionary_corps
	name = "Expeditionary Corps"
	name_short = "SCGEC"

	rank_types = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/ec/o6
	)

	spawn_rank_types = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/ec/o6
	)

	min_skill = list()

/datum/mil_branch/civilian
	name = "Civilian"
	name_short = "Civ"

	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/synthetic
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/synthetic
	)

/datum/mil_branch/fed_armsmen
	name = "Federation Armsmen"
	name_short = "Armsmen"

	rank_types = list(
		/datum/mil_rank/arm/e1,
		/datum/mil_rank/arm/e2,
		/datum/mil_rank/arm/e3,
		/datum/mil_rank/arm/e4,
		/datum/mil_rank/arm/e5,
		/datum/mil_rank/arm/e6,
		/datum/mil_rank/arm/e7,
		/datum/mil_rank/arm/e8,
		/datum/mil_rank/arm/e9,
		/datum/mil_rank/arm/e10
	)

	spawn_rank_types = list(
		/datum/mil_rank/arm/e1,
		/datum/mil_rank/arm/e2,
		/datum/mil_rank/arm/e3,
		/datum/mil_rank/arm/e4,
		/datum/mil_rank/arm/e5,
		/datum/mil_rank/arm/e6,
		/datum/mil_rank/arm/e7,
		/datum/mil_rank/arm/e8,
		/datum/mil_rank/arm/e9,
		/datum/mil_rank/arm/e10
	)	

/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/civ
	name = "Civilian"

/datum/mil_rank/civ/contractor
	name = "Contractor"

/datum/mil_rank/civ/synthetic
	name = "Synthetic"

/*
 *  EC
 *  =====
 */
/datum/mil_rank/ec/e1
	name = "Crewman Recruit"
	name_short = "AXPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted)
	sort_order = 1

/datum/mil_rank/ec/e3
	name = "Crewman"
	name_short = "XPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e3)
	sort_order = 3

/datum/mil_rank/ec/e5
	name = "Petty Officer"
	name_short = "SXPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e5)
	sort_order = 5

/datum/mil_rank/ec/e7
	name = "Chief Petty Officer"
	name_short = "CXPL"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/enlisted/e7)
	sort_order = 7

/datum/mil_rank/ec/o1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer)
	sort_order = 11

/datum/mil_rank/ec/o3
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o3)
	sort_order = 13

/datum/mil_rank/ec/o5
	name = "Commander"
	name_short = "CDR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o5)
	sort_order = 15

/datum/mil_rank/ec/o6
	name = "Captain"
	name_short = "CAPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o6)
	sort_order = 16

/datum/mil_rank/ec/o8
	name = "Admiral"
	name_short = "ADM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/ec/officer/o8)
	sort_order = 18

/*
 *  Armsmen
 *  =====
 */
 /datum/mil_rank/arm/e1
	name = "Junior Armsman"
	name_short = "JARM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted)
	sort_order = 1

 /datum/mil_rank/arm/e2
 	name = "Armsman Basic"
	name_short = "ARMB"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e2)
	sort_order = 2

 /datum/mil_rank/arm/e3
	name = "Armsman"
	name_short = "ARM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e3)
	sort_order = 3

 /datum/mil_rank/arm/e4
	name = "Senior Armsman"
	name_short = "SARM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e4)
	sort_order = 4

 /datum/mil_rank/arm/e5
 	name = "Staff Armsman"
	name_short = "STARM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e5)
	sort_order = 5

 /datum/mil_rank/arm/e6
 	name = "Chief Armsman"
	name_short = "CARM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e6)
	sort_order = 6

 /datum/mil_rank/arm/e7
 	name = "Master Armsman"
	name_short = "MARM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e7)
	sort_order = 7

 /datum/mil_rank/arm/e8
 	name = "Chief Master Armsman"
	name_short = "CHMARM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e8)
	sort_order = 8

 /datum/mil_rank/arm/e9
 	name = "Command Master Armsman"
	name_short = "COMARM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e9)
	sort_order = 9

 /datum/mil_rank/arm/e10
 	name = "Command Master Armsman of the Federation"
	name_short = "COMAOF"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/arm/enlisted/e10)
	sort_order = 10

//reminder to do officer ranks tommorow cause holy fuck//