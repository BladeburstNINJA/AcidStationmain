
/obj/item/weapon/gun/projectile/pistol
	load_method = MAGAZINE
	caliber = CALIBER_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol
	accuracy_power = 7
	var/empty_icon = TRUE  //If it should change icon when empty
	var/ammo_indicator = FALSE
	base_parry_chance = 10

/obj/item/weapon/gun/projectile/pistol/on_update_icon()
	..()
	if(empty_icon)
		if(ammo_magazine && ammo_magazine.stored_ammo.len)
			icon_state = initial(icon_state)
		else
			icon_state = "[initial(icon_state)]-e"
	if(ammo_indicator)
		if(!ammo_magazine || !LAZYLEN(ammo_magazine.stored_ammo))
			overlays += image(icon, "ammo_bad")
		else if(LAZYLEN(ammo_magazine.stored_ammo) <= 0.5 * ammo_magazine.max_ammo)
			overlays += image(icon, "ammo_warn")
			return
		else
			overlays += image(icon, "ammo_ok")

/obj/item/weapon/gun/projectile/pistol/military
	name = "P20 pistol"
	desc = "The Hephaestus Industries P20 - a mass produced kinetic sidearm in widespread service."
	magazine_type = /obj/item/ammo_magazine/pistol/double/rubber
	allowed_magazines = /obj/item/ammo_magazine/pistol/double
	icon = 'icons/obj/guns/military_pistol.dmi'
	icon_state = "military"
	item_state = "secgundark"
	safety_icon = "safety"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	fire_delay = 0
	ammo_indicator = TRUE
	fire_sound = 'sound/weapons/gunshot/acidpistolmed.ogg'

/obj/item/weapon/gun/projectile/pistol/military/alt
	name = "HT Optimus"
	desc = "The HelTek Optimus, best known as the standard-issue sidearm for the UCG Navy."
	icon = 'icons/obj/guns/military_pistol2.dmi'
	icon_state = "military-alt"
	safety_icon = "safety"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2, TECH_ESOTERIC = 8)
	fire_delay = 0
	fire_sound = 'sound/weapons/gunshot/acidpistolmed.ogg'

/obj/item/weapon/gun/projectile/pistol/sec
	name = "NT Mk58"
	desc = "The NT Mk58 is a cheap, ubiquitous sidearm, produced by a NanoTrasen subsidiary. Found pretty much everywhere humans are."
	icon = 'icons/obj/guns/pistol.dmi'
	icon_state = "secguncomp"
	safety_icon = "safety"
	magazine_type = /obj/item/ammo_magazine/pistol/rubber
	accuracy = -1
	fire_delay = 0
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	fire_sound = 'sound/weapons/gunshot/acidpistolmed.ogg'

/obj/item/weapon/gun/projectile/pistol/sec/lethal
	magazine_type = /obj/item/ammo_magazine/pistol

/obj/item/weapon/gun/projectile/pistol/magnum_pistol
	name = "HT Magnus"
	desc = "The HelTek Magnus, a robust Terran handgun that uses high-caliber ammo."
	icon = 'icons/obj/guns/magnum_pistol.dmi'
	icon_state = "magnum"
	item_state = "magnum"
	safety_icon = "safety"
	force = 9
	caliber = CALIBER_PISTOL_MAGNUM
	fire_delay = 2
	magazine_type = /obj/item/ammo_magazine/magnum
	allowed_magazines = /obj/item/ammo_magazine/magnum
	mag_insert_sound = 'sound/weapons/guns/interaction/hpistol_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/hpistol_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/acidheavypistol.ogg'
	accuracy = 2
	one_hand_penalty = 2
	bulk = 3
	ammo_indicator = TRUE

/obj/item/weapon/gun/projectile/pistol/magnum_pistol/solar
	name = "Eagle"
	desc = "The HI Eagle, a reverse engineered HT Magnus. This one has 'To the Chief of Security Aboard the NTSS Dagon' engraved"
	magazine_type = /obj/item/ammo_magazine/magnum/rubber
	starts_loaded = 1

/obj/item/weapon/gun/projectile/pistol/throwback
	name = "Colt M1911A1"
	desc = "A product of one of thousands of illegal workshops from around the galaxy. Often replicas of ancient Earth handguns, these guns are usually found in hands of frontier colonists and pirates."
	icon = 'icons/obj/guns/pistol_throwback.dmi'
	icon_state = "pistol4"
	magazine_type = /obj/item/ammo_magazine/pistol/throwback
	allowed_magazines = /obj/item/ammo_magazine/pistol/throwback
	accuracy_power = 7
	one_hand_penalty = 3
	fire_delay = 0
	caliber = CALIBER_PISTOL_ANTIQUE
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	fire_sound = 'sound/weapons/gunshot/acidcolt1911.ogg'

/obj/item/weapon/gun/projectile/pistol/throwback/pistol2
	name = "SIG P-220 .45 ACP"
	desc = "A product of one of thousands of illegal workshops from around the galaxy. Often replicas of ancient Earth handguns, these guns are usually found in hands of frontier colonists and pirates."
	icon = 'icons/obj/guns/pistol_throwback.dmi'
	icon_state = "pistol1"
	magazine_type = /obj/item/ammo_magazine/pistol/throwback/pistol2
	allowed_magazines = /obj/item/ammo_magazine/pistol/throwback/pistol2
	accuracy_power = 3
	one_hand_penalty = 2
	fire_delay = 0
	caliber = CALIBER_PISTOL_ANTIQUE
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	fire_sound = 'sound/weapons/gunshot/acidsig220.ogg'

/obj/item/weapon/gun/projectile/pistol/throwback/pistol3
	name = "CZ-75 9mm Parabellum"
	desc = "A product of one of thousands of illegal workshops from around the galaxy. Often replicas of ancient Earth handguns, these guns are usually found in hands of frontier colonists and pirates."
	icon = 'icons/obj/guns/pistol_throwback.dmi'
	icon_state = "pistol2"
	magazine_type = /obj/item/ammo_magazine/pistol/throwback/pistol3
	allowed_magazines = /obj/item/ammo_magazine/pistol/throwback/pistol3
	accuracy_power = 4
	one_hand_penalty = 2
	fire_delay = 0
	caliber = CALIBER_PISTOL_ANTIQUE
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	fire_sound = 'sound/weapons/gunshot/acidcz75.ogg'

/obj/item/weapon/gun/projectile/pistol/throwback/pistol4
	name = "Beretta 92FS 9mm Parabellum"
	desc = "A product of one of thousands of illegal workshops from around the galaxy. Often replicas of ancient Earth handguns, these guns are usually found in hands of frontier colonists and pirates."
	icon = 'icons/obj/guns/pistol_throwback.dmi'
	icon_state = "pistol3"
	magazine_type = /obj/item/ammo_magazine/pistol/throwback/pistol4
	allowed_magazines = /obj/item/ammo_magazine/pistol/throwback/pistol4
	accuracy_power = 5
	one_hand_penalty = 2
	fire_delay = 0
	caliber = CALIBER_PISTOL_ANTIQUE
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	fire_sound = 'sound/weapons/gunshot/acidber92.ogg'

/obj/item/weapon/gun/projectile/pistol/holdout
	name = "P3 Whisper"
	desc = "The Lumoco Arms P3 Whisper. A small, easily concealable gun."
	icon = 'icons/obj/guns/holdout_pistol.dmi'
	icon_state = "pistol"
	item_state = null
	w_class = ITEM_SIZE_SMALL
	caliber = CALIBER_PISTOL_SMALL
	silenced = 0
	fire_delay = 1
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2, TECH_ESOTERIC = 2)
	magazine_type = /obj/item/ammo_magazine/pistol/small
	allowed_magazines = /obj/item/ammo_magazine/pistol/small
	fire_sound = 'sound/weapons/gunshot/acidpistolsmall.ogg'

/obj/item/weapon/gun/projectile/pistol/holdout/attack_hand(mob/user as mob)
	if(user.get_inactive_hand() == src)
		if(silenced)
			if(user.l_hand != src && user.r_hand != src)
				..()
				return
			to_chat(user, "<span class='notice'>You unscrew [silenced] from [src].</span>")
			user.put_in_hands(silenced)
			silenced = initial(silenced)
			w_class = initial(w_class)
			update_icon()
			return
	..()

/obj/item/weapon/gun/projectile/pistol/holdout/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/weapon/silencer))
		if(user.l_hand != src && user.r_hand != src)	//if we're not in his hands
			to_chat(user, "<span class='notice'>You'll need [src] in your hands to do that.</span>")
			return
		if(!user.unEquip(I, src))
			return//put the silencer into the gun
		to_chat(user, "<span class='notice'>You screw [I] onto [src].</span>")
		silenced = I	//dodgy?
		w_class = ITEM_SIZE_NORMAL
		update_icon()
		return
	..()

/obj/item/weapon/gun/projectile/pistol/holdout/on_update_icon()
	..()
	if(silenced)
		icon_state = "pistol-silencer"
	else
		icon_state = "pistol"
	if(!(ammo_magazine && ammo_magazine.stored_ammo.len))
		icon_state = "[icon_state]-e"

/obj/item/weapon/silencer
	name = "silencer"
	desc = "A silencer."
	icon = 'icons/obj/guns/holdout_pistol.dmi'
	icon_state = "silencer"
	w_class = ITEM_SIZE_SMALL

/obj/item/weapon/gun/projectile/pistol/gyropistol
	name = "gyrojet pistol"
	desc = "A bulky pistol designed to fire self propelled rounds."
	icon = 'icons/obj/guns/gyropistol.dmi'
	icon_state = "gyropistol"
	max_shells = 8
	caliber = CALIBER_GYROJET
	origin_tech = list(TECH_COMBAT = 3)
	magazine_type = /obj/item/ammo_magazine/gyrojet
	allowed_magazines = /obj/item/ammo_magazine/gyrojet
	handle_casings = CLEAR_CASINGS	//the projectile is the casing
	fire_delay = 25
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	mag_insert_sound = 'sound/weapons/guns/interaction/hpistol_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/hpistol_magout.ogg'
	empty_icon = FALSE

/obj/item/weapon/gun/projectile/pistol/gyropistol/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "gyropistolloaded"
	else
		icon_state = "gyropistol"