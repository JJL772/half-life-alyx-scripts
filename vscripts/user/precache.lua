-- Precache script for easy precache of models/sounds/whatever else
-- This is done via a weird hack. 

precached_models = precached_models or {}
precached_sounds = precached_sounds or {}
precached_mdlfolders = precached_mdlfolders or {}
precached_particles = precached_particles or {}
precached_partfolders = precached_partfolders or {}

function AddPrecachedModelFolder(folder)
	table.insert(precached_mdlfolders, folder)
end 

function AddPrecachedModel(model_name)
	table.insert(precached_models, model_name)
end

function AddPrecachedSound(sound_name)
	table.insert(precached_sounds, sound_name)
end

function AddPrecachedParticle(particle)
	table.insert(precached_particles, particle) 
end 

function AddPrecachedParticleFolder(folder)
	table.insert(precached_partfolders, folder)
end 

-- This will actually perform the precache operations
function PrecacheResources()
	local ent_table = {
		origin = Vector(0,0,0),
		vscripts = "ent_scripts/precache.lua"
	}
	ent = SpawnEntityFromTableSynchronous("prop_physics", ent_table)
	-- Just kill it right after lol
	ent:Kill()
end 

--[[
Example usage:

AddPrecachedModel("models/characters/poop.vmdl")
AddPrecachedSound("sounds/hl1/vox/bruh.vsnd_c")
AddPrecachedParticle("idk/some/particle")

-- This will precache all added to the list of precache resources
PrecacheResources()

]]
