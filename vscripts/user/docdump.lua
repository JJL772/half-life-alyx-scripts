-- This script dumps VScript documentation into a markdown format
print("Running docdump.lua")

local function doc_dump(name, tbl)
	local file = nil 
	if tbl.FDesc ~= nil or tbl.EDesc ~= nil then
		file = io.open(name..".md", "w")
		io.output(file)
	end 
	if tbl.FDesc ~= nil then
		io.write("# " .. name .. "\n")
		io.write("\n## Methods\n")
		for k,v in pairs(tbl.FDesc) do
			io.write("\n### `"..k.."`\n")
			io.write("```\n"..tostring(v).."\n```")
			io.write("\n------\n")
		end 
	end 
	
	if tbl.EDesc ~= nil then
		io.write("\n## Enums\n")
		io.output(file)
		io.write("```\n")
		for k,v in pairs(tbl) do
			if type(v) == "number" then 
				io.write(k.."\t"..tostring(v).."\n\n")
			end
		end
		io.write("```\n")
	end 

	if tbl.FDesc ~= nil or tbl.EDesc ~= nil then
		io.close(file)
	end

	if tbl.CDesc ~= nil then
		for k,v in pairs(tbl.CDesc) do
			doc_dump(k,v)
		end
	end 
end 

Convars:RegisterCommand("docdump", function()
	doc_dump("globals", _G)

	-- Creates a "directory" markdown file
	local file_ = io.open("Half-Life-Alyx-Script-API.md", "w")
	io.output(file_)
	io.write("# Half-Life: Alyx Scripting API\n\n## Classes\n\n")
	for k,v in pairs(CDesc) do
		io.write("- ["..k.."]("..k..".md)\n")
	end 
	io.write("\n")
	io.write("## Globals\n\n- [Globals](globals.md)\n\n")
	io.close(file_)
end, "Documentation dumping", 0)

