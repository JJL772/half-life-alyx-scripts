-- Various test scripts

Convars:RegisterCommand("ent_test_class", function()
	local lighttbl = {
		origin = Vector(0,0,0),
	}

	test_ent = SpawnEntityFromTableSynchronous("sample_entity", lighttbl)
end, "", 0)