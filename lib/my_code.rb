# Your Code Here
def map(source_array)
  dest_array = []
  for element in source_array
    dest_array << yield(element)
  end
  
  return dest_array
end

def reduce(source_array, starting_point = 0)
  total = starting_point
  
  for element in source_array
    total = yield(total, element)
  end
  
  return total
end