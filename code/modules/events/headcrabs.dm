#define HEADCRAB_NORMAL 0
#define HEADCRAB_FASTMIX 1
#define HEADCRAB_FAST 2
#define HEADCRAB_POISONMIX 3
#define HEADCRAB_POISON 4
#define HEADCRAB_SPAWNER 5

/datum/round_event_control/headcrabs
	name = "Headcrabs"
	typepath = /datum/round_event/headcrabs
	weight = 10
	max_occurrences = 1
	category = EVENT_CATEGORY_ENTITIES
	description = "Насылает кучу Мозгососов на Космическую Станцию."

/datum/round_event/headcrabs
	announce_when = 10
	end_when = 11
	var/locstring
	var/headcrab_type

/datum/round_event/headcrabs/start()
	var/list/availableareas = list()
	for(var/area/maintenance/A in world)
		availableareas += A
	for(var/turf/X in GLOB.xeno_spawn)
		availableareas += X
	var/list/spawn_types = list()
	var/max_number
	headcrab_type = rand(0, 5)
	switch(headcrab_type)
		if(HEADCRAB_NORMAL)
			spawn_types = list(/mob/living/simple_animal/hostile/headcrab)
			max_number = 18
		if(HEADCRAB_FASTMIX)
			spawn_types = list(/mob/living/simple_animal/hostile/headcrab, /mob/living/simple_animal/hostile/headcrab/fast)
			max_number = 16
		if(HEADCRAB_FAST)
			spawn_types = list(/mob/living/simple_animal/hostile/headcrab/fast)
			max_number = 12
		if(HEADCRAB_POISONMIX)
			spawn_types = list(/mob/living/simple_animal/hostile/headcrab, /mob/living/simple_animal/hostile/headcrab/poison)
			max_number = 8
		if(HEADCRAB_POISON)
			spawn_types = list(/mob/living/simple_animal/hostile/headcrab/poison)
			max_number = 6
		if(HEADCRAB_SPAWNER)
			spawn_types = list(/obj/structure/spawner/headcrab)
			max_number = 4


	var/num = rand(2,max_number)

	while(availableareas.len > 0 && num > 0)
		var/turf/open/floor/T = pick(availableareas)
		availableareas.Remove(T)
		num--
		var/spawn_type = pick(spawn_types)
		new spawn_type(T)


/datum/round_event/headcrabs/announce()
	priority_announce("Биосканеры фиксируют размножение хедкрабов на борту станции. Избавьтесь от них, прежде чем это начнет влиять на продуктивность станции", "ВНИМАНИЕ: НЕОПОЗНАННЫЕ ФОРМЫ ЖИЗНИ.")

#undef HEADCRAB_NORMAL
#undef HEADCRAB_FASTMIX
#undef HEADCRAB_FAST
#undef HEADCRAB_POISONMIX
#undef HEADCRAB_POISON
#undef HEADCRAB_SPAWNER
