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
uw = {
	"you",
	"u",
	--Spanish
	"tu",
	"el",
	"te",
	"eres",
	"ser",
}
all = {}
strict = {}

for i, name in pairs(bw) do
	if name then -- Register all possible strings for protection
		local str = uw[1]..name
		local str2 = uw[2]..name
		local str3 = uw[1].." "..name
		local str4 = uw[2].." "..name
		local str5 = name.." "..uw[2]
		local str6 = name.." "..uw[1]
		local str7 = name..""..uw[1]
		local str8 = name..""..uw[2]
		table.insert(all, str)
		table.insert(all, str2)
		table.insert(all, str3)
		table.insert(all, str4)
		table.insert(all, str5)
		table.insert(all, str6)
		table.insert(all, str7)
		table.insert(all, str8)
		table.insert(all, name)
	end
end

function strict.find_word(string)
	if type(string) == "string" then
		for i, word in pairs(all) do
			if string:find(word) or string:match(word) or string == word then
				return true, "null"
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










