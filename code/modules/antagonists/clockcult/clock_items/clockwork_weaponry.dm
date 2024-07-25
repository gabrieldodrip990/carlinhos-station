//This is the base type for clockwork melee weapons.
/obj/item/clockwork/weapon
	name = "clockwork weapon"
	desc = "Weaponized brass. Whould've thunk it?"
	clockwork_desc = "This shouldn't exist. Report it to a coder."
	icon = 'icons/obj/clockwork_objects.dmi'
	lefthand_file = 'icons/mob/inhands/antag/clockwork_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/antag/clockwork_righthand.dmi'
	wound_bonus = 10
	bare_wound_bonus = 5
	var/datum/action/innate/call_weapon/action //Some melee weapons use an action that lets you return and dismiss them

/obj/item/clockwork/weapon/Initialize(mapload, new_action)
	. = ..()
	if(new_action)
		action = new_action
		action.weapon = src

/obj/item/station_clock_curse
	name = "Проклятая Сфера"
	desc = "Эта сфера хранит в себе первородное зло и, наверное, это недопустимо ронять или даже ломать..."
	icon = 'icons/effects/clockwork_effects.dmi'
	icon_state ="ratvars_flame"
	var/static/curselimit = 0

/obj/item/station_clock_curse/attack_self(mob/living/user)
	if(!is_servant_of_ratvar(user, TRUE))
		user.dropItemToGround(src, TRUE)
		user.DefaultCombatKnockdown(100)
		to_chat(user, "<span class='warning'>Мощная сила отталкивает вас от [src]!</span>")
		return
	if(curselimit >= 1)
		to_chat(user, "<span class='notice'>Мы исчерпали свою способность проклинать Космическую Станцию.</span>")
		return
	if(locate(/obj/structure/destructible/clockwork/massive/ratvar) in GLOB.poi_list)
		to_chat(user, "<span class='warning'>Ratvar is already on this plane, there is no delaying the end of all things.</span>")
		return

	to_chat(user, "<span class='danger'>Вы разбиваете сферу! Бронзовая сущность поднимается в воздух, затем исчезает.</span>")
	playsound(user.loc, 'sound/effects/glassbr1.ogg', 50, 1)
	qdel(src)
	sleep(pick(100, 200, 400, 800, 1200))
	var/datum/round_event_control/portal_storm_clock/portal_storm_clock = new/datum/round_event_control/portal_storm_clock
	portal_storm_clock.runEvent()
	curselimit++
