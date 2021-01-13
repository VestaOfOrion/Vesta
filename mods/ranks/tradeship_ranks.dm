/datum/job/submap
	branch = /datum/mil_branch/civilian
	rank =   /datum/mil_rank/civ/civ
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	required_language = null

/datum/map/tradeship
	branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/civilian
	)

	spawn_branch_types = list(
		/datum/mil_branch/expeditionary_corps,
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
