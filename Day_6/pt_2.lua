
DAYS_TO_RUN = 80
INPUT = {3,4,3,1,2}

function inputToList(input)
  -- converts the puzzle input (days per fish to give birth day) to my solving list (grouped fish by days to birth day)
  -- puzzle input: 3,4,3,1,2 (3days, 4days, 3days, 1day, 2days)
  -- solving list: 0,1,1,2,1,0,0,0,0 (0xday0, 1xday1, 1xday2, 2xday3, 1xday4, 0xday5, 0xday6, 0xday7, 0xday8)

  transformed = {0,0,0,0,0,0,0,0,0}
  for i=1,#input do
    if transformed[input[i]+1] then
      transformed[input[i]+1] = transformed[input[i]+1] + 1
    end
  end
print(transformed[1], transformed[2], transformed[3], transformed[4], transformed[5], transformed[6], transformed[7], transformed[8], transformed[9])
  return transformed
  
end


fish = inputToList(INPUT)

for i=1,DAYS_TO_RUN do
  print("day", i)
  print(fish[1], fish[2], fish[3], fish[4], fish[5], fish[6], fish[7], fish[8], fish[9])

  newfish = fish[1] -- birth day fish

  for j=1,#fish do
    fish[j] = fish[j+1] -- all fish get 1 day closer to birth day
  end

  if newfish then
    fish[7] = fish[7] + newfish -- existing fish take 6 days to birth day
    fish[9] = newfish -- new fish take 8 days to birth day
  end

end

-- calculate fish left 
sum = 0
for i=1,#fish do
  sum = sum + fish[i]
end

print(sum);