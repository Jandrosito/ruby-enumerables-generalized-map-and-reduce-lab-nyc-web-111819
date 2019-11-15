# Your Code Here
def map(array)
  new_array = []
  i = 0
  while i < array.length
    new_array.push(yield(array[i]))
    i += 1
  end
  new_array
end

def reduce(array, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = array[0]
    i = 1
  end
  while i < array.length
    accum = yield(accum, array[i])
    i += 1
  end
  accum
end