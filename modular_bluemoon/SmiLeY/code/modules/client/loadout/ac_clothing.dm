//					ГОЛОВА					//
//					ГОЛОВА					//
//					ГОЛОВА					//

/obj/item/clothing/head/soft/sec/ac
	name = "AC Cap"
	desc = "Special cap for special Mercenaries."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/ac_clothing.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/ac_clothing.dmi'
	icon_state = "acsoft"
	soft_type = "ac"

/obj/item/clothing/head/warden/ac
	name = "AC Officer Cap"
	desc = "Special cap for special Mercenaries."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/ac_clothing.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/ac_clothing.dmi'
	icon_state = "ac_officer"

/obj/item/clothing/head/beret/sec/ac
	name = "AC Beret"
	desc = "Beret for Mercenaries with special reinforced fabric to offer some protection."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/ac_clothing.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/ac_clothing.dmi'
	icon_state = "ac_beret"

/obj/item/clothing/head/helmet/sec/mark45
	name = "Mk. 45 Black Legionnaire helmet"
	desc = "The standard-issue helmet of the Catcrin army. Developed in 2545, it can be worn independently of its accompanying suit by removing a protective cover on the lower section of the helmet, sporting specially designed earpieces to accommodate Catcrin anatomy. Besides maximizing comfort, these earpieces also automaticly swivel towards sound sources thanks to a set of inbuilt servo-motors, designed to pick up background noise while also dampening louder sounds for hearing protection."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/mark45.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/mark45.dmi'
	icon_state = "mark45_helmet"
	item_state = "mark45_helmet"
	lefthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_lefthand.dmi'
	righthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_righthand.dmi'

/obj/item/clothing/head/helmet/sec/mark45_desert
	name = "Mk. 45 Desert Hunter helmet"
	desc = "A modified helmet commonly used by desert Catcrins. Among the most noticeable differences is a layer of fabric designed to minimize the wear-and-tear caused by sandstorms, prolonging its lifespan in desert environments."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/mark45.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/mark45.dmi'
	icon_state = "mark45_helmet_desert"
	item_state = "mark45_helmet_desert"
	lefthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_lefthand.dmi'
	righthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_righthand.dmi'

/obj/item/clothing/head/helmet/sec/mark45_snow
	name = "Mk. 45 Snow Cover helmet"
	desc = "A modified Catcrin helmet optimized for cold-weather operations, differing wildly in appearance from its original form. An additional light plate is attached to the top of the helmet to deflect snow, and the visor itself has been made smaller. The inside of the helmet is lined with wool, with only the ears having been left unaffected."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/mark45.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/mark45.dmi'
	icon_state = "mark45_helmet_snow"
	item_state = "mark45_helmet_snow"
	lefthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_lefthand.dmi'
	righthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_righthand.dmi'

/datum/gear/head/helmet/mark45
	name = "Mk. 45 Black Legionnaire helmet"
	path = /obj/item/clothing/head/helmet/sec/mark45
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/head/helmet/mark45_desert
	name = "Mk. 45 Desert Hunter helmet"
	path = /obj/item/clothing/head/helmet/sec/mark45_desert
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/head/helmet/mark45_snow
	name = "Mk. 45 Snow Cover helmet"
	path = /obj/item/clothing/head/helmet/sec/mark45_snow
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/head/ac_beret
	name = "AC Beret"
	path = /obj/item/clothing/head/beret/sec/ac
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/head/ac_cap
	name = "AC Cap"
	path = /obj/item/clothing/head/soft/sec/ac
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/head/ac_officercap
	name = "AC Officer Cap"
	path = /obj/item/clothing/head/warden/ac
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Blueshield")

//					КОСТЮМЫ					//
//					КОСТЮМЫ					//
//					КОСТЮМЫ					//

/obj/item/clothing/suit/armor/hos/ac
	name = "AC Armored Coat"
	desc = "An coat for a prestigious Mercenaries in the Adamas Cattus PMC."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/ac_clothing.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/ac_clothing.dmi'
	icon_state = "ac_coat"

/obj/item/clothing/suit/armor/mark45_armor
	name = "Mk. 45 Black Legionnaire Armor"
	desc = "The standard-issue armor of the Catcrin army. Developed in 2545. The armor is noticeably light, does not restrict movement and covers most of the body, but does not lose its protective properties, remaining on an equal footing with similar ones."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/mark45.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/mark45.dmi'
	icon_state = "mark45_armor"
	item_state = "mark45_armor"
	lefthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_lefthand.dmi'
	righthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_righthand.dmi'

/obj/item/clothing/suit/armor/mark45_armor_desert
	name = "Mk. 45 Desert Hunter Armor"
	desc = "A modified armor commonly used by desert Catcrins. Among the most noticeable differences is a layer of fabric designed to minimize the wear-and-tear caused by sandstorms, prolonging its lifespan in desert environments."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/mark45.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/mark45.dmi'
	icon_state = "mark45_armor_desert"
	item_state = "mark45_armor_desert"
	lefthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_lefthand.dmi'
	righthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_righthand.dmi'

/obj/item/clothing/suit/armor/mark45_armor_snow
	name = "Mk. 45 Snow Cover Аrmor"
	desc = "A modified Catcrin armor optimized for cold-weather operations. A layer of warm wool is visible inside the armor to preserve the warmth of the wearer."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/mark45.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/mark45.dmi'
	icon_state = "mark45_armor_snow"
	item_state = "mark45_armor_snow"
	lefthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_lefthand.dmi'
	righthand_file = 'modular_bluemoon/SmiLeY/icons/mob/inhands/items/mark45_righthand.dmi'

/datum/gear/suit/mark45_armor
	name = "Mk. 45 Black Legionnaire Armor"
	path = /obj/item/clothing/suit/armor/mark45_armor
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/suit/mark45_armor_snow
	name = "Mk. 45 Snow Cover Аrmor set"
	path = /obj/item/clothing/suit/armor/mark45_armor_snow
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/suit/mark45_armor_desert
	name = "Mk. 45 Desert Hunter Armor"
	path = /obj/item/clothing/suit/armor/mark45_armor_desert
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/suit/ac_armoredcoat
	name = "AC Armored Coat"
	path = /obj/item/clothing/suit/armor/hos/ac
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Blueshield")

//					УНИФОРМА					//
//					УНИФОРМА					//
//					УНИФОРМА					//

/obj/item/clothing/under/rank/security/officer/ac
	name = "AC Tanktop Uniform"
	desc= "An uniform for very special Mercenaries, sometimes they prefer to drink beer more then water."
	icon = 'modular_bluemoon/SmiLeY/icons/obj/clothing/ac_clothing.dmi'
	mob_overlay_icon = 'modular_bluemoon/SmiLeY/icons/mob/clothing/ac_clothing.dmi'
	icon_state = "ac_tanktop"
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_NO_ANTHRO_ICON
	can_adjust = FALSE

/obj/item/clothing/under/rank/security/officer/ac/ac_combatuni
	name = "AC Combat Uniform"
	desc= "Standart tactical uniform for Mercencary in Catcrin PMC Adamas Cattus."
	icon_state = "ac_turtleneck"

/obj/item/clothing/under/rank/security/officer/ac/ac_combatski
	name = "AC Combat Skirt"
	desc= "Standart tactical skirt for Mercenary in Catcrin PMC Adamas Cattus."
	icon_state = "ac_turtleneck_skirt"

/obj/item/clothing/under/rank/security/officer/ac/ac_cassuit
	name = "AC Casual Uniform"
	desc= "Casual suit for special operations for Mercenaries in Adamas Cattus."
	icon_state = "ac_uni"

/obj/item/clothing/under/rank/security/officer/ac/ac_casski
	name = "AC Casual Skirt"
	desc= "Casual skirt for special operations for Mercenaries in Adamas Cattus."
	icon_state = "ac_uni_skirt"

/datum/gear/uniform/ac_tanktopuni
	name = "AC Tanktop Uniform"
	path = /obj/item/clothing/under/rank/security/officer/ac
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/uniform/ac_combatuni
	name = "AC Combat Uniform"
	path = /obj/item/clothing/under/rank/security/officer/ac/ac_combatuni
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/uniform/ac_combatski
	name = "AC Combat Skirt"
	path = /obj/item/clothing/under/rank/security/officer/ac/ac_combatski
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/uniform/ac_cassuit
	name = "AC Casual Uniform"
	path = /obj/item/clothing/under/rank/security/officer/ac/ac_cassuit
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")

/datum/gear/uniform/ac_casski
	name = "AC Casual Skirt"
	path = /obj/item/clothing/under/rank/security/officer/ac/ac_casski
	subcategory = LOADOUT_SUBCATEGORY_UNIFORM_JOBS
	restricted_desc = "Head of Security, Warden, Detective, Security Officer, Brig Physician, Peacekeeper, Blueshield."
	restricted_roles = list("Head of Security", "Warden", "Detective", "Security Officer", "Brig Physician", "Peacekeeper", "Blueshield")
