def map(array)
  new_array = []
  i = 0
  while i < array.length 
    new_array << yield(array[i])
    i += 1
  end
  new_array
end 

def reduce(array, startingpoint = nil)
  i = 0 
  if startingpoint
    while i < array.length do
      startingpoint = yield(startingpoint, array[i])
      i += 1 
    end
  else 
    startingpoint = array[0]
    i = 1
    while i < array.length do
      startingpoint = yield(startingpoint, array[i])
      i += 1
    end
  end 
  startingpoint 
end 