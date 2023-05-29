bw = {
	"FUCK",
	"Fuck",
	"fuck",
	"fvck",
	"fvk",
	"fvc",
	"fuc",
	"fu",
	"BITCH",
	"Bitch",
	"bitch",
	"bitc",
	"bish",
	"bihc",
	"bih",
	"FRICK",
	"Frick",
	"frick",
	"frik",
	"fric",
	"ASSHOLE",
	"Asshole",
	"asshole",
	"ashole",
	"asole",
	"SHIT",
	"shit",
	"shiet",
	"shlt",
	"sh1t",
	"shi",
	"sh1",
}
sbw = {
	-- Spanish section
	"PUTO",
	"PVTO",
	"pto",
	"pu**",
	"pu*",
	"puta",
	"pvta",
	"hdp",
	"idp",
	"pu",
	"mierda",
	"mirda",
	"merda",
	"mie*",
	"mi*",
}
--[[
uw = {
	"you",
	"u",
}
suw = {
	--Spanish
	"tu",
	"el",
	"te",
	"eres",
	"ser",
}--]]
all = {}
sall = {}
strict = {}

for i, name in pairs(bw) do
	if name then -- Register all possible strings for protection
		table.insert(all, name)
	end
end

for _, word in pairs(sbw) do
	if word then
		table.insert(all, word)
	end
end

function strict.process_str(str)
	local words = {}
	for word in str:gmatch("%w+") do
		table.insert(words, word)
	end
	return words
end

function strict.find_word(string3)
	local string1 = tostring(string3)
	local string = string1:lower()
	if type(string) == "string" then
		for i, word in pairs(all) do
			for _, hword in pairs(strict.process_str(string)) do
				local word2 = hword:lower()
				local to_check = word:lower()
				if word2:find(to_check) or word2 == to_check then
					return true, "null"
				end
			end
		end
		for i, word in pairs(sall) do
			for _, hword in pairs(strict.process_str(string)) do
				local word2 = hword:lower()
				local to_check = word:lower()
				if word2:find(to_check) or word2 == to_check then
					return true, "null"
				end
			end
		end
		return false, "not_found"
	else
		return false, "not_string"
	end
end

function strict.random_word()
	return all[math.random(#all)] or bw[math.random(#bw)] or "fvc"
end










