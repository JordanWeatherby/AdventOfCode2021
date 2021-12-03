pico-8 cartridge // http://www.pico-8.com
version 33
__lua__
inputs = {199,200,208,210,200,207,240,269,260,263}

increased = 0
frame = 0

function _init()
	cls()
	for i=2,#inputs do
		prev = inputs[i-1]
		if prev < inputs[i] then
			increased = increased + 1
		end	
	end
end

function _update()
	d = frame%128
	i = frame%#inputs
end

function wrap(num)
	if inputs[num] then
		return inputs[num]%128
	end
end

function _draw()
	cls()
	print(increased, 40, 40, 8)
	print(inputs[i], 50, 50, 8)
	pset(d, wrap(i), 8)
	frame+=1
end
