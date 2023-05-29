dofile("../../lua")
if all == nil then
	dofile("init.lua")
end
print(strict.find_word("hola"))
print(strict.find_word("fuck"))
print(strict.find_word("q tal"))
print(strict.find_word("you fuck"))
print(strict.find_word("q puto"))