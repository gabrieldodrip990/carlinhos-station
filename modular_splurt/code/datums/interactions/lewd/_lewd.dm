/mob/living
	var/has_belly = FALSE

/mob/living/has_anus()
	if(getorganslot(ORGAN_SLOT_ANUS))
		return has_genital(ORGAN_SLOT_ANUS)
	. = ..()

/mob/living/add_lust(add)
	. = ..()
	SEND_SIGNAL(src, COMSIG_MOB_LUST_UPDATED)

/mob/living/set_lust(num)
	. = ..()
	SEND_SIGNAL(src, COMSIG_MOB_LUST_UPDATED)

/mob/living/toggle_anus_always_accessible(accessibility)
	var/obj/item/organ/genital/anus/donut = getorganslot(ORGAN_SLOT_ANUS)
	if(donut)
		return donut.toggle_accessibility(accessibility)
	. = ..()

/mob/living/moan()
	var/moaned = lastmoan
	var/miming = mind ? mind?.miming : FALSE
	. = ..()
	if((moaned == lastmoan) || is_muzzled() || miming || !prob(50))
		return
	var/list/moans
	if(isalien(src))
		moans = list('sound/voice/hiss6.ogg')
	else if(gender == FEMALE)
		moans = list('modular_splurt/sound/voice/moan_f1.ogg', 'modular_splurt/sound/voice/moan_f2.ogg', 'modular_splurt/sound/voice/moan_f3.ogg', 'modular_splurt/sound/voice/moan_f4.ogg', 'modular_splurt/sound/voice/moan_f5.ogg', 'modular_splurt/sound/voice/moan_f6.ogg', 'modular_splurt/sound/voice/moan_f7.ogg')
	else
		moans = list('modular_splurt/sound/voice/moan_m1.ogg', 'modular_splurt/sound/voice/moan_m2.ogg', 'modular_splurt/sound/voice/moan_m3.ogg')
	playlewdinteractionsound(src, pick(moans), 50, 1, 4, 1.2, ignored_mobs = get_unconsenting())

/mob/living/proc/get_refraction_dif() //Got snapped in upstream, may delete later when I figure something out
	var/dif = (refractory_period - world.time)
	if(dif < 0)
		return 0
	else
		return dif

/mob/living/proc/has_belly()
	var/mob/living/carbon/C = src
	if(has_belly || !istype(C))
		return TRUE
	return has_genital(ORGAN_SLOT_BELLY)

/mob/living/cum(mob/living/partner, target_orifice)
	var/message //if this doesn't exist it calls ..()
	//var/u_His = p_their()
	//var/u_He = p_they()
	//var/u_S = p_s()
	//var/t_His = partner?.p_their()
	var/cumin = FALSE
	var/obj/item/organ/genital/target_gen
	var/mob/living/carbon/c_partner
	//Carbon checks
	if(iscarbon(partner))
		c_partner = partner

	if(src != partner)
		if(!last_genital)
			if(has_penis())
				if(!istype(partner))
					target_orifice = null
				switch(target_orifice)
					if(CUM_TARGET_NIPPLE)
						cumin = TRUE
						if(partner.has_breasts())
							message = "cums inside \the <b>[partner]</b>'s nipple!."
							target_gen = partner.getorganslot(ORGAN_SLOT_BREASTS)
						else
							message = "cums on \the <b>[partner]</b>'s chest and neck."
							if((partner.client?.prefs.cit_toggles & BREAST_ENLARGEMENT) && c_partner)
								target_gen = new /obj/item/organ/genital/breasts
								target_gen.Insert(c_partner)
						if(target_gen)
							target_gen.climax_modify_size(src, getorganslot(ORGAN_SLOT_PENIS))
					if(CUM_TARGET_URETHRA)
						cumin = TRUE
						message = "cums down \the <b>[partner]</b>'s [pick(GLOB.dick_nouns + list("[pick("cock", "dick")]hole", "urethra"))]!"
						if(c_partner)
							target_gen = partner.getorganslot(ORGAN_SLOT_PENIS)
							target_gen.climax_modify_size(src, getorganslot(ORGAN_SLOT_PENIS))
					if(CUM_TARGET_THIGHS)
						if(partner.has_legs() >= 2)
							message = "cums right into \the <b>[partner]</b>'s thighs!"
						else
							message = "cums... somehow..."
					if(CUM_TARGET_BELLY)
						cumin = TRUE
						if(partner.has_belly() == HAS_EXPOSED_GENITAL)
							message = "cums into the <b>[partner]</b>'s navel, [pick(list("making it into a massive pond of jizz", "[p_their()] spunk drooling out of it"))]."
							if(c_partner)
								target_gen = c_partner.getorganslot(ORGAN_SLOT_BELLY)
						else
							message = "cums on the <b>[partner]</b>'s midsection."
						if(c_partner)
							if(partner.client?.prefs.cit_toggles & BELLY_INFLATION)
								var/obj/item/organ/genital/belly/gut = partner.getorganslot(ORGAN_SLOT_BELLY)
								if(!gut)
									gut = new
									gut.Insert(partner)
								gut.climax_modify_size(src, getorganslot(ORGAN_SLOT_PENIS), target_orifice)

					if(CUM_TARGET_ARMPIT)
						message = "cums under \the <b>[partner]</b>'s armpit!"

					if(CUM_TARGET_MOUTH, CUM_TARGET_THROAT, CUM_TARGET_VAGINA, CUM_TARGET_ANUS)
						if(c_partner)
							if(partner.client?.prefs.cit_toggles & BELLY_INFLATION)
								var/obj/item/organ/genital/belly/gut = partner.getorganslot(ORGAN_SLOT_BELLY)
								if(!gut)
									gut = new
									gut.Insert(partner)
								gut.climax_modify_size(src, getorganslot(ORGAN_SLOT_PENIS), target_orifice)
							else if((partner.client?.prefs.cit_toggles & BUTT_ENLARGEMENT) && target_orifice == CUM_TARGET_ANUS)
								var/obj/item/organ/genital/butt/ass = partner.getorganslot(ORGAN_SLOT_BUTT)
								if(!ass)
									ass = new
									ass.Insert(partner)
								ass.climax_modify_size(src, getorganslot(ORGAN_SLOT_PENIS))

		else
			switch(last_genital.type)
				if(/obj/item/organ/genital/penis)
					if(!istype(partner))
						target_orifice = null
					switch(target_orifice)
						if(CUM_TARGET_NIPPLE)
							cumin = TRUE
							if(partner.has_breasts())
								message = "cums inside \the <b>[partner]</b>'s nipple!."
								target_gen = partner.getorganslot(ORGAN_SLOT_BREASTS)
							else
								message = "cums on \the <b>[partner]</b>'s chest and neck."
								if((partner.client?.prefs.cit_toggles & BREAST_ENLARGEMENT) && c_partner)
									target_gen = new /obj/item/organ/genital/breasts
									target_gen.Insert(partner)

							if(target_gen)
								target_gen.climax_modify_size(src, last_genital)
						if(CUM_TARGET_URETHRA)
							cumin = TRUE
							message = "cums down \the <b>[partner]</b>'s [pick(GLOB.dick_nouns + list("[pick("cock", "dick")]hole", "urethra"))]!"
							if(c_partner)
								target_gen = partner.getorganslot(ORGAN_SLOT_PENIS)
								target_gen.climax_modify_size(src, last_genital)
						if(CUM_TARGET_THIGHS)
							if(partner.has_legs() >= 2)
								message = "cums right into \the <b>[partner]</b>'s thighs!"
							else
								message = "cums... somehow..."
						if(CUM_TARGET_BELLY)
							cumin = TRUE
							if(partner.has_belly() == HAS_EXPOSED_GENITAL)
								message = "cums into the <b>[partner]</b>'s navel, [pick(list("making it into a massive pond of jizz", "[p_their()] spunk drooling out of it"))]."
								if(c_partner)
									target_gen = c_partner.getorganslot(ORGAN_SLOT_BELLY)
							else
								message = "cums on the <b>[partner]</b>'s midsection."
							if(c_partner)
								if(partner.client?.prefs.cit_toggles & BELLY_INFLATION)
									var/obj/item/organ/genital/belly/gut = partner.getorganslot(ORGAN_SLOT_BELLY)
									if(!gut)
										gut = new
										gut.Insert(partner)
									gut.climax_modify_size(src, last_genital, target_orifice)
								else if((partner.client?.prefs.cit_toggles & BUTT_ENLARGEMENT) && target_orifice == CUM_TARGET_ANUS)
									var/obj/item/organ/genital/butt/ass = partner.getorganslot(ORGAN_SLOT_BUTT)
									if(!ass)
										ass = new
										ass.Insert(partner)
									ass.climax_modify_size(src, last_genital)

						if(CUM_TARGET_MOUTH, CUM_TARGET_THROAT, CUM_TARGET_VAGINA, CUM_TARGET_ANUS)
							if(c_partner)
								if(partner.client?.prefs.cit_toggles & BELLY_INFLATION)
									var/obj/item/organ/genital/belly/gut = partner.getorganslot(ORGAN_SLOT_BELLY)
									if(!gut)
										gut = new
										gut.Insert(partner)
									gut.climax_modify_size(src, last_genital, target_orifice)
								else if((partner.client?.prefs.cit_toggles & BUTT_ENLARGEMENT) && target_orifice == CUM_TARGET_ANUS)
									var/obj/item/organ/genital/butt/ass = partner.getorganslot(ORGAN_SLOT_BUTT)
									if(!ass)
										ass = new
										ass.Insert(partner)
									ass.climax_modify_size(src, last_genital)
		if(iswendigo(partner) && partner.pulling == src)
			var/mob/living/carbon/wendigo/W = partner
			W.slaves |= src
			to_chat(src, "<font color='red'> You are now [W]'s slave! Serve your master properly! </font>")
	if(!message)
		return ..()
	if(gender == MALE)
		playlewdinteractionsound(loc, pick('modular_sand/sound/interactions/final_m1.ogg',
							'modular_sand/sound/interactions/final_m2.ogg',
							'modular_sand/sound/interactions/final_m3.ogg',
							'modular_sand/sound/interactions/final_m4.ogg',
							'modular_sand/sound/interactions/final_m5.ogg'), 70, 1, 0)
	else if(gender == FEMALE)
		playlewdinteractionsound(loc, pick('modular_sand/sound/interactions/final_f1.ogg',
							'modular_sand/sound/interactions/final_f2.ogg',
							'modular_sand/sound/interactions/final_f3.ogg'), 70, 1, 0)
	else
		playlewdinteractionsound(loc, pick('modular_sand/sound/interactions/final_f1.ogg',
							'modular_sand/sound/interactions/final_f2.ogg',
							'modular_sand/sound/interactions/final_f3.ogg'), 70, 1, 0)
	visible_message(message = span_userlove("<b>\The [src]</b> [message]"), ignored_mobs = get_unconsenting())
	multiorgasms += 1

	if(get_sexual_potency() == -1 || multiorgasms > (get_sexual_potency() * 0.34)) //AAAAA, WE DONT WANT NEGATIVES HERE, RE
		refractory_period = world.time + rand(300, 900) //sex cooldown
		// set_drugginess(rand(20, 30))
	else
		refractory_period = world.time + rand(300, 900) - get_sexual_potency()
		// set_drugginess(rand(5, 10))
	if(get_sexual_potency() == -1 || multiorgasms < get_sexual_potency()) // Climax limit | SPLURT EDIT: -1 sexual potency = no limit
		if(ishuman(src))
			var/mob/living/carbon/human/H = src
			if(!partner)
				H.mob_climax(TRUE, "masturbation", "none")
			else
				H.mob_climax(TRUE, "sex", partner, !cumin, target_gen)
	set_lust(0)

	SEND_SIGNAL(src, COMSIG_MOB_POST_CAME, target_orifice, partner, cumin, last_genital)

	return TRUE

/mob/living/get_unconsenting(extreme, list/ignored_mobs, var/unholy)
	for(var/mob/M in range(7, src))
		if(M.client)
			var/client/cli = M.client
			if(unholy && (cli.prefs.unholypref == "No"))
				LAZYADD(ignored_mobs, M)
	. = ..()

/mob/living/proc/has_legs(nintendo = REQUIRE_ANY)
	var/legs = has_left_leg() + has_right_leg()
	if(legs)
		switch(nintendo)
			if(REQUIRE_EXPOSED)
				if(is_bottomless())
					return legs
			if(REQUIRE_UNEXPOSED)
				if(!is_bottomless())
					return legs
			if(REQUIRE_ANY)
				return legs
	return FALSE

// Interaction Procs

/*

/mob/living/proc/remove_equipment(mob/living/carbon/target)
	var/obj/item/organ/genital/holder = pick_receiving_organ(target, HAS_EQUIPMENT, "Remove equipment", "What genital?")
	if(!holder)
		to_chat(src, "<span class='warning'> You need exposed genitals!</b>")
		return
	if(!LAZYLEN(holder.equipment))
		to_chat(src, span_warning("You'll have to put something in it first, since it seems to be clean"))
		return

	var/obj/item/gimme = input(src, "What do you want to remove?", "Remove equipment", null) as null|anything in holder.equipment
	if(gimme)
		holder.remove_equipment(src, gimme)

*/

/mob/living/proc/do_breastsmother(mob/living/target)
	var/message
	var/u_His = p_their()
	var/list/lines = list(
		"squishes <b>[target]</b>'s face [pick(list("in between", "with"))] [u_His] [pick(GLOB.breast_nouns)].",
		"presses [u_His] [pick(GLOB.breast_nouns)] into \the <b>[target]</b>'s face.",
		"shoves \the <b>[target]</b>'s whole head into [u_His] cleavage."
		)

	message = span_lewd("\The <b>[src]</b> [pick(lines)]")
	visible_message(message, ignored_mobs = get_unconsenting())
	playlewdinteractionsound(loc, pick('modular_sand/sound/interactions/bang1.ogg',
						'modular_sand/sound/interactions/bang2.ogg',
						'modular_sand/sound/interactions/bang3.ogg'), 70, 1, -1)

/mob/living/proc/do_boobjob(mob/living/target)
	var/message
	var/u_His = p_their()
	var/genital_name = target.get_penetrating_genital_name()
	var/list/lines

	if(target.is_fucking(src, CUM_TARGET_BREASTS))
		lines = list(
			"slides [u_His] [pick(GLOB.breast_nouns)], up and down through \the <b>[target]</b>'s throbbing [genital_name].",
			"squeezes [u_His] [pick(GLOB.breast_nouns)] through all of \the <b>[target]</b>'s length.",
			"jerks \the <b>[target]</b> off lustfully with [u_His] supple [pick(GLOB.breast_nouns)]."
		)
	else
		lines = list(
			"clamps [u_His] [pick(GLOB.breast_nouns)] around \the <b>[target]</b>'s throbbing [genital_name], wrapping it in their sheer warmth.",
			"envelops \the <b>[target]</b>'s hard member with [u_His] soft [pick(GLOB.breast_nouns)], giving it a tight and sloshing squeeze.",
			"lets [u_His] [pick(GLOB.breast_nouns)] fall into \the <b>[target]</b>'s fat [genital_name], smothering it in [u_His] cleavage."
		)
		target.set_is_fucking(src, CUM_TARGET_BREASTS, getorganslot(ORGAN_SLOT_PENIS))

	message = span_lewd("\The <b>[src]</b> [pick(lines)]")
	visible_message(message, ignored_mobs = get_unconsenting())
	playlewdinteractionsound(loc, pick('modular_sand/sound/interactions/bang1.ogg',
						'modular_sand/sound/interactions/bang2.ogg',
						'modular_sand/sound/interactions/bang3.ogg'), 70, 1, -1)
	if(target.can_penetrating_genital_cum())
		target.handle_post_sex(NORMAL_LUST, CUM_TARGET_BREASTS, src, ORGAN_SLOT_PENIS)

/mob/living/proc/lick_nuts(mob/living/target)
	var/message
	var/u_His = p_their()
	var/t_His = target.p_their()
	var/lust_increase = 1
	var/list/balls = list("balls", "nuts", "[pick(list("cum", "spunk", "nut", "jizz", "seed"))] [pick(list("orbs", "spheres", "tanks", "holders", "churners"))]")
	var/list/lines

	if(target.is_fucking(src, NUTS_TO_FACE))
		lines = list(
			"worships \the <b>[target]</b>'s [pick(balls)] with [u_His] tongue.",
			"takes a huff of \the <b>[target]</b>'s heavy ball musk and proceeds to lap the sweat off [t_His] [pick(balls)].",
			"plants smooches all over \the <b>[target]</b>'s heavy [pick(balls)], tasting [t_His] nutsack and massaging it with [u_His] lips."
		)
	else
		lines = list(
			"opens [u_His] maw and proceeds to bring \the <b>[target]</b>'s [pick(balls)] right in.",
			"uses [u_His] tongue to fit \the <b>[target]</b>'s balls in [u_His] mouth, deeply huffing their scent.",
			"willingly lets \the <b>[target]</b>'s [pick(balls)] fall into and fill [u_His] mouth, lustfully sucking into them."
		)
		target.set_is_fucking(src, NUTS_TO_FACE, getorganslot(ORGAN_SLOT_PENIS))

	message = span_lewd("\The <b>[src]</b> [pick(lines)]")
	visible_message(message, ignored_mobs = get_unconsenting())
	target.handle_post_sex(lust_increase, CUM_TARGET_MOUTH, src, ORGAN_SLOT_TESTICLES)

/mob/living/proc/do_thighfuck(mob/living/target)
	var/message
	var/list/lines
	var/u_His = p_their()
	var/genital_name = get_penetrating_genital_name()
	var/t_His = target.p_their()

	if(is_fucking(target, CUM_TARGET_THIGHS))
		lines = list(
			"thrusts in and out of \the <b>[target]</b>'s [pick("pudgy ", "soft ", "")]thighs, making them jiggle",
			"lustfully rolls [u_His] [genital_name] back and forth between \the <b>[target]</b>'s thighs",
			"vigorously fucks \the <b>[target]</b>'s legs, making [u_His] tip pop in and out of [t_His] supple thighs"
		)
	else
		lines = list(
			"presses [u_His] tip against \the <b>[target]</b>'s [pick("pudgy ", "soft ", "")]thighs, soon shoving [u_His] whole length right in between them",
			"presents [u_His] [genital_name] to \the <b>[target]</b>'s legs, ramming its full size right into [t_His] thigh lock",
			"smooches \the <b>[target]</b>'s crotch with [u_His] throbbing tip, right before piercing between [t_His] thighs with [u_His] full [genital_name]"
		)
		set_is_fucking(target, CUM_TARGET_THIGHS, getorganslot(ORGAN_SLOT_PENIS))

	message = span_lewd("\The <b>[src]</b> [pick(lines)]!")
	visible_message(message, ignored_mobs = get_unconsenting())
	playlewdinteractionsound(loc, pick('modular_sand/sound/interactions/bang1.ogg',
						'modular_sand/sound/interactions/bang2.ogg',
						'modular_sand/sound/interactions/bang3.ogg'), 70, 1, -1)
	if(can_penetrating_genital_cum())
		handle_post_sex(NORMAL_LUST, CUM_TARGET_THIGHS, target, ORGAN_SLOT_PENIS)
	target.handle_post_sex(LOW_LUST, CUM_TARGET_PENIS, src)

/mob/living/proc/do_thighjob(mob/living/target)
	var/message
	var/list/lines
	var/u_His = p_their()
	var/genital_name = target.get_penetrating_genital_name()
	var/t_He = target.p_they()
	var/t_His = target.p_their()

	if(target.is_fucking(src, CUM_TARGET_THIGHS))
		lines = list(
			"grinds and presses [u_His] thighs [pick("deeply ", "")] against \the <b>[target]</b>'s [genital_name], massaging it all over with [u_His] thighs",
			"squeezes \the <b>[target]</b>'s [genital_name] between [u_His] supple thighs, smothering it deep under [u_His] crotch",
			"rides \the <b>[target]</b>'s [genital_name] with [u_His] [pick("pudgy ", "soft ", "")]thighs, [t_He] can feel [u_His] flesh smothering it down"
		)
	else
		lines = list(
			"presents [u_His] [pick("pudgy ", "soft ", "")] thighs to \the <b>[target]</b>'s [genital_name], slamming them right into it[pick(" with a [pick("wet ", "")]smack", "")]!",
			"grinds \the <b>[target]</b>'s tip against [u_His] supple thighs, before slamming them right down into [t_His] [genital_name]!",
			"forces \the <b>[target]</b>'s [genital_name] right into the tight hold of [u_His] thighs, giving it a deep and lewd squeeze!"
		)
		target.set_is_fucking(src, CUM_TARGET_THIGHS, target.getorganslot(ORGAN_SLOT_PENIS))

	message = span_lewd("\The <b>[src]</b> [pick(lines)]!")
	visible_message(message, ignored_mobs = get_unconsenting())
	playlewdinteractionsound(loc, pick('modular_sand/sound/interactions/bang1.ogg',
						'modular_sand/sound/interactions/bang2.ogg',
						'modular_sand/sound/interactions/bang3.ogg'), 70, 1, -1)
	handle_post_sex(LOW_LUST, CUM_TARGET_PENIS, target)
	if(target.can_penetrating_genital_cum())
		target.handle_post_sex(NORMAL_LUST, CUM_TARGET_THIGHS, src, ORGAN_SLOT_PENIS)
