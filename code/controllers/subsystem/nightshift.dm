SUBSYSTEM_DEF(nightshift)
	name = "Night Shift"
	wait = 600
	flags = SS_NO_TICK_CHECK

	var/nightshift_active = FALSE
	var/nightshift_start_time = 702000		//7:30 PM, station time
	var/nightshift_end_time = 270000		//7:30 AM, station time
	var/nightshift_first_check = 30 SECONDS

	var/high_security_mode = FALSE

/datum/controller/subsystem/nightshift/Initialize()
	if(!CONFIG_GET(flag/enable_night_shifts))
		can_fire = FALSE
	return ..()

/datum/controller/subsystem/nightshift/fire(resumed = FALSE)
	if(world.time - SSticker.round_start_time < nightshift_first_check)
		return
	check_nightshift()

/datum/controller/subsystem/nightshift/proc/announce(message)
	priority_announce(message, sound='sound/misc/notice2.ogg', sender_override="Объявление об Автоматической Системе Освещения")

/datum/controller/subsystem/nightshift/proc/check_nightshift()
	var/emergency = GLOB.security_level >= SEC_LEVEL_RED
	var/announcing = TRUE
	var/time = STATION_TIME(FALSE, world.time)
	var/night_time = (time < nightshift_end_time) || (time > nightshift_start_time)
	if(high_security_mode != emergency)
		high_security_mode = emergency
		if(night_time)
			announcing = FALSE
			if(!emergency)
				announce("Восстановление нормальной работы конфигурации ночного освещения.")
			else
				announce("Отключение ночного освещения: станция находится в аварийном состоянии.")
	if(emergency)
		night_time = FALSE
	if(nightshift_active != night_time)
		update_nightshift(night_time, announcing)

/datum/controller/subsystem/nightshift/proc/update_nightshift(active, announce = TRUE, max_level_override)
	set waitfor = FALSE
	nightshift_active = active
	if(announce)
		if (active)
			announce("Добрый вечер, Экипаж Космической Станции. Чтобы снизить потребление энергии и стимулировать Биоритмы некоторых видов, все осветительные приборы на борту станции были приглушены на ночь.")
		else
			announce("Доброе утро, Экипаж Космической Станции. Поскольку сейчас дневное время, все осветительные приборы на борту станции были восстановлены до их прежней яркости.")
	var/max_level
	var/configured_level = CONFIG_GET(number/night_shift_public_areas_only)
	if(isnull(max_level_override))
		max_level = active? configured_level : INFINITY		//by default, deactivating shuts off nightshifts everywhere.
	else
		max_level = max_level_override
	for(var/A in GLOB.apcs_list)
		var/obj/machinery/power/apc/APC = A
		if(APC.area?.type in GLOB.the_station_areas)
			var/their_level = APC.area.nightshift_public_area
			if(!max_level || (their_level <= max_level))		//if max level is 0, it means public area-only config is disabled so hit everything. if their level is 0, it means they have nightshift forced.
				APC.set_nightshift(active)
				CHECK_TICK
