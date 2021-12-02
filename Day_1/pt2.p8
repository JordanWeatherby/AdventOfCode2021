pico-8 cartridge // http://www.pico-8.com
version 33
__lua__
inputs = {199,200,208,210,200,207,240,269,260,263}
function _draw()
	cls()
	increased = 0
	for i=4,#inputs do
		if inputs[i] > inputs[i-3] then
			increased = increased + 1
		end
	end
	print(increased, 40, 40, 8)
end
