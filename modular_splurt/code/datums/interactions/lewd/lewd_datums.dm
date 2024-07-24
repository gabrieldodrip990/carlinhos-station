//Sandstorm edits

/datum/interaction/lewd/display_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(!(isclownjob(target) && type == /datum/interaction/lewd))
		return

	if(prob(50))
		target.visible_message(span_lewd("\The <b>[target]</b>'s ass honks!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/titgrope/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(target))
		return

	var/list/honks = list(
		"\The <b>[target]</b>'s honkers produce a loud squeak!",
		"\The <b>[user]</b>'s grope squeezes a honk out of \the <b>[target]</b>'s [pick(GLOB.breast_nouns)]!"
	)
	if(prob(50))
		target.visible_message(span_lewd("[pick(honks)]"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/oral/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(target))
		return

	if(prob(50))
		target.visible_message(span_lewd("\The <b>[target]</b>'s clussy honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/oral/blowjob/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(target))
		return

	if(prob(50))
		var/genital_name = target.get_penetrating_genital_name(TRUE)
		target.visible_message(span_lewd("\The <b>[target]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/fuck/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!(isclownjob(target) || isclownjob(user)))
		return

	if(prob(50) && isclownjob(target))
		target.visible_message(span_lewd("\The <b>[target]</b>'s clussy honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/fuck/anal/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!(isclownjob(target) || isclownjob(user)))
		return

	if(prob(50) && isclownjob(target))
		target.visible_message(span_lewd("\The <b>[target]</b>'s fun hole honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/finger/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(target))
		return

	if(prob(50))
		target.visible_message(span_lewd("\The <b>[target]</b>'s clussy honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/fingerass/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(target))
		return

	if(prob(50))
		target.visible_message(span_lewd("\The <b>[target]</b>'s fun hole honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/facefuck/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		var/genital_name = target.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/throatfuck/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(istype(target, /mob/living) && user.is_fucking(target, CUM_TARGET_THROAT))
		var/stat_before = target.stat
		target.adjustOxyLoss(3)
		if(target.stat == UNCONSCIOUS && stat_before != UNCONSCIOUS)
			target.visible_message(message = "<font color=red><b>\The [target]</b> passes out on <b>\The [user]</b>'s cock.</span>", ignored_mobs = user.get_unconsenting())
	if(!isclownjob(user))
		return

	if(prob(50))
		var/genital_name = user.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/handjob/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(target))
		return

	if(prob(50))
		var/genital_name = user.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/breastfuck/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!(isclownjob(target) || isclownjob(user)))
		return

	if(prob(50) && isclownjob(target))
		target.visible_message(span_lewd("\The <b>[target]</b>'s [pick(GLOB.breast_nouns)] honk[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/mount/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!(isclownjob(target) || isclownjob(user)))
		return

	if(prob(50) && isclownjob(user))
		user.visible_message(span_lewd("\The <b>[user]</b>'s clussy honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/mountass/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!(isclownjob(target) || isclownjob(user)))
		return

	if(prob(50) && isclownjob(user))
		target.visible_message(span_lewd("\The <b>[user]</b>'s fun hole honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/mountface/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		user.visible_message(span_lewd("\The <b>[user]</b>'s fun hole honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/footfuck/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		var/genital_name = user.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/footfuck/double/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		var/genital_name = user.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/footjob/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(target))
		return

	if(prob(50))
		var/genital_name = target.get_penetrating_genital_name(TRUE)
		target.visible_message(span_lewd("\The <b>[target]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/footjob/double/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(target))
		return

	if(prob(50))
		var/genital_name = target.get_penetrating_genital_name(TRUE)
		target.visible_message(span_lewd("\The <b>[target]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/nuts/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		user.visible_message(span_lewd("\The <b>[user]</b>'s balls honk[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/nut_smack/display_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(!(isclownjob(target) && type == /datum/interaction/lewd/nut_smack))
		return

	if(prob(50))
		target.visible_message(span_lewd("\The <b>[target]</b>'s balls honk[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/earfuck/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		var/genital_name = user.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/eyefuck/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		var/genital_name = user.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/frotting/display_interaction(mob/living/user, mob/living/target)
	. = ..()
	if(!(isclownjob(target) || isclownjob(user)))
		return

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/do_breastfeed/display_interaction(mob/living/user, mob/living/target)
	var/obj/item/organ/genital/breasts/milkers = user.getorganslot(ORGAN_SLOT_BREASTS)
	var/blacklist = target.client?.prefs.gfluid_blacklist
	var/cached_fluid
	if((milkers?.get_fluid_id() in blacklist) || ((/datum/reagent/blood in blacklist) && ispath(milkers?.get_fluid_id(), /datum/reagent/blood)))
		cached_fluid = milkers?.get_fluid_id()
		milkers?.set_fluid_id(milkers?.default_fluid_id)

	. = ..()

	if(cached_fluid)
		milkers.set_fluid_id(cached_fluid)

	if(!isclownjob(user))
		return

	if(prob(50))
		user.visible_message(span_lewd("\The <b>[user]</b>'s [pick(GLOB.breast_nouns)] honk[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/jack/display_interaction(mob/living/carbon/human/user)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		var/genital_name = user.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/fingerass_self/display_interaction(mob/living/carbon/human/user)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		user.visible_message(span_lewd("\The <b>[user]</b>'s fun hole honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/finger_self/display_interaction(mob/living/carbon/human/user)
	. = ..()
	if(!isclownjob(user))
		return

	if(prob(50))
		user.visible_message(span_lewd("\The <b>[user]</b>'s clussy honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/titgrope_self/display_interaction(mob/living/carbon/human/user)
	. = ..()
	if(!isclownjob(user))
		return

	var/u_His = user.p_their()
	var/list/honks = list(
		"\The <b>[user]</b>'s honkers produce a loud squeak!",
		"\The <b>[user]</b>'s grope squeezes a honk out of [u_His] own [pick(GLOB.breast_nouns)]!"
	)
	if(prob(50))
		user.visible_message(span_lewd("[pick(honks)]"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/self_nipsuck/display_interaction(mob/living/user, mob/living/target)
	var/obj/item/organ/genital/breasts/milkers = user.getorganslot(ORGAN_SLOT_BREASTS)
	var/blacklist = target.client?.prefs.gfluid_blacklist
	var/cached_fluid
	if((milkers?.get_fluid_id() in blacklist) || ((/datum/reagent/blood in blacklist) && ispath(milkers?.get_fluid_id(), /datum/reagent/blood)))
		cached_fluid = milkers?.get_fluid_id()
		milkers?.set_fluid_id(milkers?.default_fluid_id)

	. = ..()

	if(cached_fluid)
		milkers.set_fluid_id(cached_fluid)

	if(!isclownjob(user))
		return

	var/u_His = user.p_their()
	var/list/honks = list(
		"\The <b>[user]</b>'s honkers produce a loud squeak!",
		"\The <b>[user]</b>'s suck squeezes a honk out of [u_His] own [pick(GLOB.breast_nouns)]!"
	)
	if(prob(50))
		user.visible_message(span_lewd("[pick(honks)]"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/nipsuck/display_interaction(mob/living/carbon/human/user, mob/living/carbon/human/target)
	var/obj/item/organ/genital/breasts/milkers = target.getorganslot(ORGAN_SLOT_BREASTS)
	var/blacklist = user.client?.prefs.gfluid_blacklist
	var/cached_fluid
	if((milkers?.get_fluid_id() in blacklist) || ((/datum/reagent/blood in blacklist) && ispath(milkers?.get_fluid_id(), /datum/reagent/blood)))
		cached_fluid = milkers?.get_fluid_id()
		milkers?.set_fluid_id(milkers?.default_fluid_id)

	. = ..()

	if(cached_fluid)
		milkers.set_fluid_id(cached_fluid)

	if(!isclownjob(target) || !milkers)
		return

	var/list/honks = list(
		"\The <b>[target]</b>'s honkers produce a loud squeak!",
		"\The <b>[user]</b>'s suck squeezes a honk out of \the <b>[target]</b>'s [pick(GLOB.breast_nouns)]!"
	)
	if(prob(50))
		user.visible_message(span_lewd("[pick(honks)]"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/kiss/post_interaction(mob/living/user, mob/living/partner)
	. = ..()

	//SPLURT EDIT START:
	// Check if user has TRAIT_KISS_SLUT and increase their lust
	if(HAS_TRAIT(user, TRAIT_KISS_SLUT))
		user.handle_post_sex(NORMAL_LUST, null, partner)

	// Check if partner has TRAIT_KISS_SLUT and increase their lust
	if(HAS_TRAIT(partner, TRAIT_KISS_SLUT))
		partner.handle_post_sex(NORMAL_LUST, null, user)
	//SPLURT EDIT END

/datum/interaction/lewd/kiss/display_interaction(mob/living/user, mob/living/partner)
	. = ..()
	playlewdinteractionsound(partner, pick(
		'modular_splurt/sound/interactions/kiss/kiss1.ogg',
		'modular_splurt/sound/interactions/kiss/kiss2.ogg',
		'modular_splurt/sound/interactions/kiss/kiss3.ogg',
		'modular_splurt/sound/interactions/kiss/kiss4.ogg',
		'modular_splurt/sound/interactions/kiss/kiss5.ogg'), 50, 1, -1, ignored_mobs = user.get_unconsenting())

/datum/interaction/lewd/do_breastsmother
	description = "Smother them in your breasts."
	required_from_target_exposed = NONE
	required_from_target_unexposed = NONE
	required_from_user_exposed = INTERACTION_REQUIRE_BREASTS
	required_from_user_unexposed = NONE
	max_distance = 1
	interaction_sound = null
	write_log_target = "got breast smothered by"
	write_log_user = "breast smothered"

/datum/interaction/lewd/do_breastsmother/display_interaction(mob/living/user, mob/living/target)
	user.do_breastsmother(target)

	if(!isclownjob(user))
		return

	if(prob(50))
		user.visible_message(span_lewd("\The <b>[user]</b>'s [pick(GLOB.breast_nouns)] honk[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/do_boobjob
	description = "Give them a boobjob."
	required_from_target_exposed = INTERACTION_REQUIRE_PENIS
	required_from_target_unexposed = NONE
	required_from_user_exposed = INTERACTION_REQUIRE_BREASTS
	required_from_user_unexposed = NONE
	interaction_sound = null
	max_distance = 1
	write_log_target = "Got a boobjob from"
	write_log_user = "gave a boobjob to"

/datum/interaction/lewd/do_boobjob/display_interaction(mob/living/user, mob/living/target)
	user.do_boobjob(target)

	if(!isclownjob(user))
		return

	if(prob(50))
		user.visible_message(span_lewd("\The <b>[user]</b>'s [pick(GLOB.breast_nouns)] honk[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/lick_nuts
	description = "Lick their balls."
	required_from_target_exposed = INTERACTION_REQUIRE_BALLS
	required_from_target_unexposed = NONE
	required_from_user_exposed = INTERACTION_REQUIRE_MOUTH
	required_from_user_unexposed = NONE
	interaction_sound = null
	max_distance = 1
	write_log_target = "Got their nuts sucked by"
	write_log_user = "sucked the nuts of"

/datum/interaction/lewd/lick_nuts/display_interaction(mob/living/user, mob/living/target)
	user.lick_nuts(target)

/datum/interaction/lewd/grope_ass
	description = "Grope their ass."
	simple_message = "USER gropes TARGET's ass!"
	required_from_target_exposed = NONE
	required_from_target_unexposed = NONE
	required_from_user_exposed = INTERACTION_REQUIRE_HANDS
	required_from_user_unexposed = NONE
	max_distance = 1
	interaction_sound = null
	write_log_target = "Got their ass groped by"
	write_log_target = "ass-groped"

/datum/interaction/lewd/fuck_thighs
	description = "Fuck their thighs."
	require_target_legs = REQUIRE_ANY
	require_target_num_legs = 2
	required_from_target_exposed = NONE
	required_from_target_unexposed = NONE
	required_from_user_exposed = INTERACTION_REQUIRE_PENIS
	required_from_user_unexposed = NONE
	write_log_user = "fucked thighs"
	write_log_target = "got their thighs fucked by"
	interaction_sound = null
	max_distance = 1

/datum/interaction/lewd/fuck_thighs/display_interaction(mob/living/user, mob/living/target)
	user.do_thighfuck(target)

	if(!isclownjob(user))
		return

	if(prob(50))
		var/genital_name = user.get_penetrating_genital_name(TRUE)
		user.visible_message(span_lewd("\The <b>[user]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(user, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/do_thighjob
	description = "Give them a thighjob."
	require_user_legs = REQUIRE_ANY
	require_user_num_legs = 2
	required_from_target_exposed = INTERACTION_REQUIRE_PENIS
	required_from_target_unexposed = NONE
	required_from_user_exposed = NONE
	required_from_user_unexposed = NONE
	write_log_user = "Gave a thighjob"
	write_log_target = "Got a thighjob from"
	interaction_sound = null
	max_distance = 1

/datum/interaction/lewd/do_thighjob/display_interaction(mob/living/user, mob/living/target)
	user.do_thighjob(target)

	if(!isclownjob(target))
		return

	if(prob(50))
		var/genital_name = target.get_penetrating_genital_name(TRUE)
		target.visible_message(span_lewd("\The <b>[target]</b>'s [genital_name] honks[pick(" loudly", "")]!"))

	playlewdinteractionsound(target, 'sound/items/bikehorn.ogg', 40, 1, -1)

/datum/interaction/lewd/clothesplosion
	description = "Explode out of your clothes"
	interaction_flags = INTERACTION_FLAG_ADJACENT | INTERACTION_FLAG_OOC_CONSENT | INTERACTION_FLAG_USER_IS_TARGET
	interaction_sound = null
	max_distance = 0
	write_log_user = "Exploded out of their clothes"

/datum/interaction/lewd/clothesplosion/display_interaction(mob/living/carbon/user, mob/living/carbon/target)
	if(!istype(user))
		return

	user.clothing_burst(FALSE)
//Espero que quem tenha feito os verbs unholy seja estuprado por 4 elefantes violentamente e morra de sangramento interno por perfuração intestinal.
