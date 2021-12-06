
fish = {3,4,3,1,2}
	
for i=1,256 do
  print("day", i)
  print(#fish)
		for j=0,#fish do
			if fish[j] == 0 then
				fish[j] = 6
				table.insert(fish, 8)
			elseif fish[j] then
				fish[j] = fish[j] - 1
			end
		end
	end

print(#fish)
