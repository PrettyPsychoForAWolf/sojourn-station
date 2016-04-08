/spell/targeted/equip_item/dyrnwyn
	name = "Summon Dyrnwyn"
	desc = "Summons the legendary sword of Rhydderch Hael, said to draw in flame when held by a worthy man."

	charge_type = Sp_HOLDVAR
	holder_var_type = "fireloss"
	holder_var_amount = 30
	school = "evocation"
	invocation = "anrhydeddu fi"
	invocation_type = SpI_SHOUT
	spell_flags = INCLUDEUSER
	range = -1
	level_max = list(Sp_TOTAL = 1, Sp_SPEED = 0, Sp_POWER = 1)
	duration = 300 //30 seconds
	max_targets = 1
	equipped_summons = list("active hand" = /obj/item/weapon/material/sword)
	delete_old = 0
	var/material = "gold"

	hud_state = "gen_immolate"


/spell/targeted/equip_item/dyrnwyn/summon_item(var/new_type)
	var/obj/item/weapon/W = new new_type(null,material)
	W.name = "\improper Dyrnwyn"
	W.damtype = BURN
	W.hitsound = 'sound/items/welder2.ogg'
	W.slowdown = 1
	return W

/spell/targeted/equip_item/dyrnwyn/empower_spell()
	if(!..())
		return 0

	material = "silver"
	return "Dyrnwyn has been made pure: it is now made of silver."