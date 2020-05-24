-- Simple grenade script

Convars:RegisterCommand("throw_grenade", function()
	local player = Entities:GetLocalPlayer()
	
	local grenadetbl = {
		origin = player:EyePosition(),
		enabled = "1"
	}

	local grenade = SpawnEntityFromTableSynchronous("item_hlvr_grenade_frag", grenadetbl)
	
	-- apply damage to the grenade so that it cooks
	local dmg = CreateDamageInfo(player, player, Vector(0,0,0), Vector(0,0,0), 100.0, DMG_BULLET)
	grenade:TakeDamage(dmg)
	DestroyDamageInfo(dmg)
	
	local ang = player:GetAngles()
	grenade:ApplyAbsVelocityImpulse(player:GetForwardVector() * 10)
	
end, "Throws a grenade", 0)

Convars:RegisterCommand("spawn_friendly_combine", function()
	
end)