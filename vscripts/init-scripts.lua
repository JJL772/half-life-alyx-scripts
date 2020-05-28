--[[

Unofficial Scripts

]]

Msg( "Initializing unofficial scripts...\n" )

function include_script(script)
	if DoIncludeScript(script, _G) then
		print("...Included script "..script)
	end
end

-- ADD USER SCRIPTS HERE
include_script("user/jumpfix.lua")
include_script("user/flashlight.lua")
include_script("user/docdump.lua")
-- include_script("user/playermodels.lua")
-- include_script("user/precache.lua") -- Currently broken
-- include_script("user/testbed.lua")
-- include_script("user/grenade.lua") -- WIP

Msg( "...done\n" )
