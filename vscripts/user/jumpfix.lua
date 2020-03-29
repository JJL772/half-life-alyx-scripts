-- Fix for jumping

Convars:RegisterConvar("sv_jump_force", "300", "The force applied to the player when jumping, keep at 300, smaller values cause problems", 0)

Convars:RegisterCommand("jumpfixed", function()
	local player = Entities:GetLocalPlayer()
	if player:GetVelocity().z == 0 then 
		player:ApplyAbsVelocityImpulse(Vector(0,0,Convars:GetFloat("sv_jump_force")))
	end
end, "Jump, but fixed!", 0)
