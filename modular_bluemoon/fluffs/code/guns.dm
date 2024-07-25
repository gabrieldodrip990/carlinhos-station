///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/item/modkit
	name = "modkit"
	desc = "A modkit for making something into something."
	icon = 'modular_splurt/icons/obj/clothing/reinforcekits.dmi'
	w_class = WEIGHT_CLASS_SMALL
	icon_state = "sec_armor_kit"
	var/product //what it makes
	var/list/fromitem = list() //what it needs

/obj/item/modkit/afterattack(obj/O, mob/user as mob)
	if(istype(O, product))
		to_chat(user,"<span class='warning'>[O] is already modified!")
		return
	if(O.type in fromitem) //makes sure O is the right thing
		new product(usr.loc) //spawns the product
		user.visible_message("<span class='warning'>[user] modifies [O]!","<span class='warning'>You modify the [O]!")
		qdel(O) //Gets rid of the baton
		qdel(src) //gets rid of the kit
	else
		to_chat(user, "<span class='warning'> You can't modify [O] with this kit!</span>")

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/item/modkit/Kovac_Kit
	name = "Kovac Gun Kit"
	desc = "A modkit for making a Enforcer Gun into a Kovac Gun."
	product = /obj/item/gun/ballistic/automatic/pistol/enforcer/steyr
	fromitem = list(/obj/item/gun/ballistic/automatic/pistol/enforcer/nomag, /obj/item/gun/ballistic/automatic/pistol/enforcer, /obj/item/gun/ballistic/automatic/pistol/enforcerred, /obj/item/gun/ballistic/automatic/pistol/enforcergold)

/obj/item/gun/ballistic/automatic/pistol/enforcer/steyr
	name = "\improper Steyr MWS"
	desc = "An antique semi-automatic pistol, heavily modified by the MWS defence manufacturing company. Provided with a better ammo cartridge and reinforced parts, it fits perfectly for resolving various security tasks. You can also notice Kovac's family sign drawn on it's handgrip."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	icon_state = "steyr_m1912"
	can_suppress = FALSE
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/steyr_shoot.ogg'

/obj/item/modkit/auto9_kit
	name = "Auto 9 Kit"
	desc = "A modkit for making a WT-550 Gun into a Auto 9 Gun."
	product = /obj/item/gun/ballistic/automatic/wt550/auto9
	fromitem = list(/obj/item/gun/ballistic/automatic/wt550)

/obj/item/gun/ballistic/automatic/wt550/auto9
	name = "\improper Auto 9"
	desc = "Come quitely or there will be troubles."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	icon_state = "auto9"
	item_state = "auto9"
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/auto9_shoot.ogg'
	can_suppress = FALSE
	can_bayonet = FALSE

/obj/item/gun/ballistic/automatic/wt550/auto9/update_icon_state()
	if(magazine)
		icon_state = "auto9"
	else
		icon_state = "auto9-e"

/obj/item/modkit/gewehr550
	name = "Gewehr-550 Kit"
	desc = "A modkit for making a WT-550 Gun into a Gewehr-550 Gun."
	product = /obj/item/gun/ballistic/automatic/wt550/gewehr550
	fromitem = list(/obj/item/gun/ballistic/automatic/wt550)

/obj/item/gun/ballistic/automatic/wt550/gewehr550
	name = "\improper Gewehr-550"
	desc = "A regular shortened assault rifle made in the Catcrin Empire for fighting in narrow spaces in the likeness of stations and shuttles."
	icon = 'modular_bluemoon/fluffs/icons/obj/aa_gewehr550.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	icon_state = "gewehr550"
	item_state = "gewehr550"
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/G-550shot1.ogg'
	pickup_sound = "modular_bluemoon/fluffs/sound/weapon/g-550grab.ogg"
	can_suppress = FALSE
	can_bayonet = TRUE
	knife_x_offset = 30
	knife_y_offset = 7

/obj/item/gun/ballistic/automatic/wt550/gewehr550/update_icon_state()
	icon_state = "gewehr550[magazine ? "-[CEILING(get_ammo(0)/7, 1)*4]" : ""][chambered ? "" : "-e"]"

/obj/item/modkit/a46
	name = "A46 Kit"
	desc = "A modkit for making a WT-550 Gun into a A46 Gun."
	product = /obj/item/gun/ballistic/automatic/wt550/a46
	fromitem = list(/obj/item/gun/ballistic/automatic/wt550)

/obj/item/gun/ballistic/automatic/wt550/a46
	name = "\improper A46-Cord"
	desc = "Сбалансированная и простая в использовании автоматическая винтовка, сделанная на базе АЕК-971 и хоть придумана она была давно, но не получила такую популярность как её аналог AK-12."
	icon = 'modular_bluemoon/fluffs/icons/obj/a46.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	icon_state = "a46"
	item_state = "a46"
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/a46shot1.ogg'
	pickup_sound = "modular_bluemoon/fluffs/sound/weapon/a46grab.ogg"
	can_suppress = FALSE
	can_bayonet = TRUE
	knife_x_offset = 42
	knife_y_offset = 12

/obj/item/gun/ballistic/automatic/wt550/a46/update_icon_state()
	icon_state = "a46[magazine ? "-[CEILING(get_ammo(0)/7, 1)*4]" : ""][chambered ? "" : "-e"]"

/obj/item/modkit/ots18
	name = "OTs-18 Kit"
	desc = "A modkit for making a WT-550 Gun into a OTs-18 Groza Gun."
	product = /obj/item/gun/ballistic/automatic/wt550/ots18
	fromitem = list(/obj/item/gun/ballistic/automatic/wt550)

/obj/item/gun/ballistic/automatic/wt550/ots18
	name = "\improper OTs-18 Groza"
	desc = "Компактный штурмовой стрелково-гранатометный комплекс, сделанный на базе калашникова и переделанный под калибр 4.6x30."
	icon = 'modular_bluemoon/fluffs/icons/obj/groza.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	icon_state = "groza"
	item_state = "groza"
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/groza-shot1.ogg'
	pickup_sound = "modular_bluemoon/fluffs/sound/weapon/groza-grab.ogg"
	can_suppress = FALSE
	can_bayonet = TRUE
	knife_x_offset = 40
	knife_y_offset = 17

/obj/item/gun/ballistic/automatic/wt550/ots18/update_icon_state()
	icon_state = "groza[magazine ? "-[CEILING(get_ammo(0)/7, 1)*4]" : ""][chambered ? "" : "-e"]"

/obj/item/modkit/m240_kit
	name = "M240 Kit"
	desc = "A modkit for making a Flamethrower into a M240."
	product = /obj/item/flamethrower/full/tank/m240
	fromitem = list(/obj/item/flamethrower, /obj/item/flamethrower/full, /obj/item/flamethrower/full/tank)

/obj/item/flamethrower/full/tank/m240
	name = "M240 Flamethrower"
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	icon_state = "m240"
	item_state = "m240_0"
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	create_with_tank = TRUE
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/flamethrower.ogg'

/obj/item/flamethrower/update_icon_state()
	item_state = "m240_[lit]"

/obj/item/modkit/old_kit
	name = "H&K Luftkuss Kit"
	desc = "A modkit for making a hybrid taser into a H&K Luftkuss."
	product = /obj/item/gun/energy/e_gun/advtaser_old
	fromitem = list(/obj/item/gun/energy/e_gun/advtaser)

/obj/item/gun/energy/e_gun/advtaser_old
	name = "H&K Luftkuss"
	desc = "An upgraded hybrid taser gun with several stripes, manufactured by the SolFed H&K arms company."
	icon_state = "old"
	item_state = "taser"
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/old, /obj/item/ammo_casing/energy/electrode/old = FALSE)
	ammo_x_offset = 0
	var/last_altfire = 0
	var/altfire_delay = CLICK_CD_RANGE

/obj/item/gun/energy/e_gun/advtaser_old/altafterattack(atom/target, mob/user, proximity_flag, params)
	. = TRUE
	if(last_altfire + altfire_delay > world.time)
		return
	var/current_index = current_firemode_index
	set_firemode_to_type(/obj/item/ammo_casing/energy/electrode/old)
	process_afterattack(target, user, proximity_flag, params)
	set_firemode_index(current_index)
	last_altfire = world.time

/obj/item/ammo_casing/energy/disabler/old
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/disabler.ogg'

/obj/item/ammo_casing/energy/electrode/old
	projectile_type = /obj/item/projectile/energy/electrode
	select_name = "stun"
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/taser.ogg'
	e_cost = 200
	harmful = FALSE


////////////

/obj/item/modkit/dominator_kit
	name = "Dominator Kit"
	desc = "A modkit for making a hybrid taser into a Dominator."
	product = /obj/item/gun/energy/e_gun/advtaser/dominator
	fromitem = list(/obj/item/gun/energy/e_gun/advtaser)

/obj/item/gun/energy/e_gun/advtaser/dominator
	name = "\improper Dominator"
	icon_state = "dominator"
	item_state = "taser"
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	ammo_x_offset = 0

/////////////////

/obj/item/modkit/hwal2572
	name = " H-Wal-2572 Kit"
	desc = "A modkit for making a hybrid taser into a H-Wal-2572."
	product = /obj/item/gun/energy/laser/hwal2572
	fromitem = list(/obj/item/gun/energy/e_gun/advtaser)

/obj/item/gun/energy/laser/hwal2572
	name = "\improper H-Wal-2572"
	desc = "A hybrid taser made by Catcrin's waffenschmied that combines electric and energy shots. There is a small circle on the handle showing the charging level."
	icon_state = "hwal"
	item_state = "hwal"
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	ammo_x_offset = 0
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/hwal2572, /obj/item/ammo_casing/energy/electrode/security/hwal2572 = FALSE)
	pickup_sound = 'modular_bluemoon/fluffs/sound/weapon/H-Wal-2572/DisablerGrab.ogg'
	var/last_altfire = 0
	var/altfire_delay = CLICK_CD_RANGE
	shot_type_overlay = FALSE
	can_flashlight = 1

/obj/item/gun/energy/laser/hwal2572/altafterattack(atom/target, mob/user, proximity_flag, params)
	. = TRUE
	if(last_altfire + altfire_delay > world.time)
		return
	var/current_index = current_firemode_index
	set_firemode_to_type(/obj/item/ammo_casing/energy/electrode)
	process_afterattack(target, user, proximity_flag, params)
	set_firemode_index(current_index)
	last_altfire = world.time

/obj/item/ammo_casing/energy/disabler/hwal2572
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/H-Wal-2572/DisablerOni.ogg'

/obj/item/ammo_casing/energy/electrode/security/hwal2572
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/H-Wal-2572/TaserOni.ogg'

/////////////////

/obj/item/modkit/nue_kit
	name = "Araki Nue Kit"
	desc = "A modkit for making an Enforcer into a Araki Nue."
	product = /obj/item/gun/ballistic/automatic/pistol/enforcer/nue
	fromitem = list(/obj/item/gun/ballistic/automatic/pistol/enforcer/nomag, /obj/item/gun/ballistic/automatic/pistol/enforcer, /obj/item/gun/ballistic/automatic/pistol/enforcerred, /obj/item/gun/ballistic/automatic/pistol/enforcergold)

/obj/item/gun/ballistic/automatic/pistol/enforcer/nue
	name = "\improper Araki Nue"
	desc = "Semi-automatic, double-action pistol that was engineered to fit any hand. The handle is decorated with orange-colored ergonomic rubber with a Vulpkanin muzzle on it. It's looks familiar."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	icon_state = "nue"
	can_suppress = FALSE
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/nue_shoot.ogg'

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/item/modkit/malorian_kit
	name = "Malorian Kit"
	desc = "A modkit for making an Enforcer into a Araki Malorian."
	product = /obj/item/gun/ballistic/automatic/pistol/enforcer/malorian
	fromitem = list(/obj/item/gun/ballistic/automatic/pistol/enforcer/nomag, /obj/item/gun/ballistic/automatic/pistol/enforcer, /obj/item/gun/ballistic/automatic/pistol/enforcerred, /obj/item/gun/ballistic/automatic/pistol/enforcergold)

/obj/item/modkit/malorian_mag_kit
	name = "Malorian Mag Kit"
	desc = "A modkit for making an Enforcer mag into a Malorian mag."
	product = /obj/item/ammo_box/magazine/e45/malorian
	fromitem = list(/obj/item/ammo_box/magazine/e45, /obj/item/ammo_box/magazine/e45/taser, /obj/item/ammo_box/magazine/e45/lethal, /obj/item/ammo_box/magazine/e45/stun, /obj/item/ammo_box/magazine/e45/hydra)

/obj/item/gun/ballistic/automatic/pistol/enforcer/malorian
	name = "\improper Araki Arms 3516"
	desc = "Unique heavy pistol manufactured by Araki Arms. Taking already successful design of previous Araki Nue, this one was designed to the personal specifications of Shiro."
	icon = 'modular_bluemoon/fluffs/icons/obj/64x64.dmi'
	icon_state = "arakiarms"
	can_suppress = FALSE
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/nue_shoot.ogg'
	mag_type = /obj/item/ammo_box/magazine/e45/malorian

/obj/item/ammo_box/magazine/e45/malorian
	name = "Araki Arms magazine"
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	//icon_state = "mag"
	desc = "An Araki Arms magazine. Can be loaded with .45 ammo."

/obj/item/storage/box/malorian_mag

/obj/item/storage/box/malorian_mag/PopulateContents()
	new /obj/item/modkit/malorian_mag_kit(src)
	new /obj/item/modkit/malorian_mag_kit(src)
	new /obj/item/modkit/malorian_mag_kit(src)
	new /obj/item/modkit/malorian_mag_kit(src)
	new /obj/item/modkit/malorian_mag_kit(src)
	new /obj/item/modkit/malorian_mag_kit(src)
	new /obj/item/modkit/malorian_mag_kit(src)

/////////////////////////////////////////////////////////////////////////////////////

/obj/item/gun/ballistic/revolver/r45l/rt46
	name = "\improper RT-46 The Tempest"
	desc = "The Tempest belongs to the museum as a benchmark of Soviet design. Is it beautiful to look at? No. Comfortable to use? No. Safe? No. But effective? Damn effective."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	icon_state = "rt46"
	item_state = "rt46"
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'

/obj/item/modkit/rt46
	name = "RT-46 The Tempest Kit"
	desc = "A modkit for making a Revolver into a RT-46."
	product = /obj/item/gun/ballistic/revolver/r45l/rt46
	fromitem = list (/obj/item/gun/ballistic/revolver/r45l)

//////////////////// AM4 уже есть в лодауте донатеров. Это лишь его рескин.

/obj/item/gun/ballistic/automatic/AM4B_pchelik
	name = "GFYS"
	desc = "На донк-софт оружии видна гравировка: 'Coopie'. Предназначено для нетравмирующего выкидывания существ из бара и самозащиты от приставал."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	icon_state = "coopie"
	item_state = "arifle-wielded"
	mag_type = /obj/item/ammo_box/magazine/toy/AM4B
	can_suppress = 0
	casing_ejector = 0
	spread = 30		//Assault Rifleeeeeee
	w_class = WEIGHT_CLASS_NORMAL
	burst_size = 1	//Shh.
	fire_delay = 15
	automatic_burst_overlay = FALSE

/////////////////////////////////////////////////////////////////////////////////////

/obj/item/modkit/stunblade_kit
	name = "Stunblade Kit"
	desc = "A modkit for making an stunbaton into a stunblade."
	product = /obj/item/melee/baton/stunblade
	fromitem = list(/obj/item/melee/baton, /obj/item/melee/baton/loaded)

/obj/item/melee/baton/stunblade
	name = "folding stunblade"
	desc = "A stunblade made of several segments collapse into each other much like a spyglass, thus it can fit inside of the handle entirely. This utility combined with its dense metal makes it perfect for defensive maneuvers."
	item_state = "stunblade"
	icon_state = "stunblade"
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'

/obj/item/melee/baton/stunblade/switch_status(new_status = FALSE, silent = FALSE)
	if(turned_on != new_status)
		turned_on = new_status
		if(!silent)
			playsound(loc, 'modular_bluemoon/fluffs/sound/weapon/stunblade.ogg', 75, 1, -1)
		if(turned_on)
			START_PROCESSING(SSobj, src)
		else
			STOP_PROCESSING(SSobj, src)
	update_icon()

/obj/item/melee/baton/stunblade/update_icon_state()
	if(turned_on)
		icon_state = "stunblade_active"
		item_state = "stunblade_active"
	else if(!cell)
		icon_state = "stunblade_nocell"
		item_state = "stunblade"
	else
		icon_state = "stunblade"
		item_state = "stunblade"

/obj/item/melee/baton/stunblade/get_worn_belt_overlay(icon_file)
	return mutable_appearance('icons/obj/clothing/belt_overlays.dmi', "-stunblade")


/////////////////////////////////////////////////////////////////////////////////////

/obj/item/modkit/stunspear_kit
	name = "Stunspear Kit"
	desc = "A modkit for making an stunbaton into a stunspear."
	product = /obj/item/melee/baton/stunspear
	fromitem = list(/obj/item/melee/baton, /obj/item/melee/baton/loaded)

/obj/item/melee/baton/stunspear
	name = "One-handed stun spear"
	desc = "A standard non-lethal spear used by Catcrin's law enforcement agencies."
	item_state = "stunspear"
	icon_state = "stunspear"
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'

/obj/item/melee/baton/stunspear/switch_status(new_status = FALSE, silent = FALSE)
	if(turned_on != new_status)
		turned_on = new_status
		if(!silent)
			playsound(loc, 'modular_bluemoon/fluffs/sound/weapon/stunspear.ogg', 75, 1, -1)
		if(turned_on)
			START_PROCESSING(SSobj, src)
		else
			STOP_PROCESSING(SSobj, src)
	update_icon()

/obj/item/melee/baton/stunspear/update_icon_state()
	if(turned_on)
		icon_state = "stunspear_active"
		item_state = "stunspear_active"
	else if(!cell)
		icon_state = "stunspear_nocell"
		item_state = "stunspear"
	else
		icon_state = "stunspear"
		item_state = "stunspear"

/obj/item/melee/baton/stunspear/get_worn_belt_overlay(icon_file)
	return mutable_appearance('icons/obj/clothing/belt_overlays.dmi', "-stunspear")


////////////////////////////////////////////////////////////////////////////////////////

/obj/item/modkit/ntcane_kit
	name = "Harness Armor Kit"
	desc = "A modkit for making an Fancy Cane into a Old Luxury Cane."
	product = /obj/item/melee/baton/stunntcane
	fromitem = list(/obj/item/melee/classic_baton/ntcane)

/obj/item/melee/baton/stunntcane
	name = "Old Luxury Cane"
	desc = "На вид потрепанная временем трость которая украшена золотом с не раз отреставрированным деревом и на ручке еле поблескивал алмаз. Такие имеют на некоторых станция Представители НТ как показатель статуса, этот же видимо скорее как память раз уж не заменялся владельцем видимо годами."
	item_state = "cane_nt"
	icon_state = "cane_nt"
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'

/obj/item/melee/baton/stunntcane/switch_status(new_status = FALSE, silent = FALSE)
	if(turned_on != new_status)
		turned_on = new_status
		if(!silent)
			playsound(loc, 'modular_bluemoon/fluffs/sound/weapon/stunblade.ogg', 75, 1, -1)
		if(turned_on)
			START_PROCESSING(SSobj, src)
		else
			STOP_PROCESSING(SSobj, src)
	update_icon()

/obj/item/melee/baton/stunntcane/update_icon_state()
	if(turned_on)
		icon_state = "cane_nt_active"
		item_state = "cane_nt_active"
	else if(!cell)
		icon_state = "cane_nt_nocell"
		item_state = "cane_nt"
	else
		icon_state = "cane_nt"
		item_state = "cane_nt"

/obj/item/melee/baton/stunntcane/get_worn_belt_overlay(icon_file)
	return mutable_appearance('icons/obj/clothing/belt_overlays.dmi', "cane_nt")

////////////////////////////////////////////////////////////////////////////////////////

/obj/item/modkit/pf940_kit
	name = "PF940 Kit"
	desc = "A modkit for making an Enforcer into a PF940."
	product = /obj/item/gun/ballistic/automatic/pistol/enforcer/pf940
	fromitem = list(/obj/item/gun/ballistic/automatic/pistol/enforcer/nomag, /obj/item/gun/ballistic/automatic/pistol/enforcer, /obj/item/gun/ballistic/automatic/pistol/enforcerred, /obj/item/gun/ballistic/automatic/pistol/enforcergold)

/obj/item/modkit/pf940_kit_g22
	name = "PF940 G22 Kit"
	desc = "A modkit for making a G22 into a PF940."
	product = /obj/item/gun/ballistic/automatic/pistol/enforcer/pf940
	fromitem = list(/obj/item/gun/ballistic/automatic/pistol/enforcer/nomag, /obj/item/gun/ballistic/automatic/pistol/enforcer, /obj/item/gun/ballistic/automatic/pistol/enforcerred, /obj/item/gun/ballistic/automatic/pistol/enforcergold)

/obj/item/gun/ballistic/automatic/pistol/enforcer/pf940
	name = "\improper PF940"
	desc = "A heavily modified Glock 21 pistol with some ergonomic parts and a caliber converted to .45, making it easy to find ammo at Edem stations. Your team is down, you're the only fella left. You- You'll just have to figure it out."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	icon_state = "pf940"
	can_suppress = FALSE
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/pf940_shoot.ogg'

/obj/item/gun/ballistic/automatic/pistol/g22/pf940
	name = "\improper PF940"
	desc = "A heavily modified Glock 21 pistol with some ergonomic parts and a caliber converted to .45, making it easy to find ammo at Edem stations. Your team is down, you're the only fella left. You- You'll just have to figure it out."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	icon_state = "pf940"
	can_suppress = FALSE
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/pf940_shoot.ogg'

/obj/item/modkit/ks23_kit
	name = "KS-23 Shotgun Kit"
	desc = "A modkit for making a Shotgun into a KS-23."
	product = /obj/item/gun/ballistic/shotgun/riot/ks_23
	fromitem = list(/obj/item/gun/ballistic/shotgun, /obj/item/gun/ballistic/shotgun/riot, /obj/item/gun/ballistic/shotgun/riot/syndicate)

/obj/item/gun/ballistic/shotgun/riot/ks_23
	name = "\improper KS-23"
	desc = "Карабин Специальный-23М - ружьё с нарезным стволом. Многофункциональное полицейское оружие, предназначенное для пресечения массовых беспорядков, избирательного силового, психического и химического воздействия на правонарушителей."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	//chosen_icon = 'icons/mob/clothing/back.dmi'
	icon_state = "KS-23M"
	can_suppress = FALSE
	fire_sound = 'modular_bluemoon/fluffs/sound/shoot.ogg'

/obj/item/gun/ballistic/shotgun/riot/ks_23/update_icon_state()
	. = ..()
	icon_state = "KS-23M[chambered ? "" : "-e"]"

/obj/item/modkit/g36_kit
	name = "G36 Kit"
	desc = "A modkit for making a AK-12 into a G36."
	product = /obj/item/gun/ballistic/automatic/ak12/g36
	fromitem = list(/obj/item/gun/ballistic/automatic/ak12, /obj/item/gun/ballistic/automatic/ak12/r)

/obj/item/gun/ballistic/automatic/ak12/g36
	name = "\improper G-36"
	desc = "Heckler & Koch Gewehr 36, G36 - семейство стрелкового оружия, разработанное в начале 1990-х немецкой компанией Heckler & Koch, под внутрифирменным обозначением HK 50, для замены хорошо известной автоматической винтовки HK G3."
	icon = 'modular_bluemoon/fluffs/icons/obj/guns.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	mag_type = /obj/item/ammo_box/magazine/ak12/r
	//chosen_icon = 'icons/mob/clothing/back.dmi'
	icon_state = "G36"
	fire_delay = 3
	fire_sound = 'modular_bluemoon/fluffs/sound/shoot.ogg'

/obj/item/gun/ballistic/automatic/ak12/g36/update_icon_state()
	if(magazine)
		icon_state = "G36"
		item_state = "G36"
	else
		icon_state = "G36_e"
		item_state = "G36_e"

/obj/item/modkit/legax
	name = "Legax Gravpulser Kit"
	desc = "Модифицирует стандартную лазерную винтовку в эксперментальный гравпульсер."
	product = /obj/item/gun/energy/taser/legax
	fromitem = list(/obj/item/gun/energy/laser)

//////////////////////////Модкиты на мультифазку

/obj/item/gun/energy/e_gun/hos/karabiner_m13
	name = "\improper Karabiner-M13"
	desc = "The development of the Catcrin army. It is used extremely rarely and only by the highest ranks. It has several different shooting modes."
	icon = 'modular_bluemoon/fluffs/icons/obj/aa_multiphasecarabinb.dmi'
	lefthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_left.dmi'
	righthand_file = 'modular_bluemoon/fluffs/icons/mob/guns_right.dmi'
	icon_state = "multiphasecarabin"
	ammo_type = list(/obj/item/ammo_casing/energy/disabler/karabiner_m13, /obj/item/ammo_casing/energy/laser/hos/karabiner_m13, /obj/item/ammo_casing/energy/ion/hos/karabiner_m13, /obj/item/ammo_casing/energy/electrode/hos/karabiner_m13)
	ammo_x_offset = 0
	pickup_sound = "modular_bluemoon/flaffs/sound/weapon/Karabiner-M13/GrabCarabine.ogg"

/obj/item/ammo_casing/energy/disabler/karabiner_m13
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/Karabiner-M13/DisablerOni.ogg'

/obj/item/ammo_casing/energy/laser/hos/karabiner_m13
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/Karabiner-M13/LaserOni.ogg'

/obj/item/ammo_casing/energy/ion/hos/karabiner_m13
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/Karabiner-M13/IonOni.ogg'

/obj/item/ammo_casing/energy/electrode/hos/karabiner_m13
	fire_sound = 'modular_bluemoon/fluffs/sound/weapon/Karabiner-M13/TaserOni.ogg'

/obj/item/modkit/karabiner_kit
	name = "Karabiner-M13 Kit"
	desc = "A modkit for making a MultiPhase Energy Gun into Karabiner-M13."
	product = /obj/item/gun/energy/e_gun/hos/karabiner_m13
	fromitem = list(/obj/item/gun/energy/e_gun/hos)
