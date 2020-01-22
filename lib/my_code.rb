# Your Code Here
def map(source_array)
  new_array = []
  index = 0
  while index < source_array.length do
    new_array << yield(source_array[index])
    index += 1
  end
  new_array
end

def reduce(source_array, starting_point = 0)
  result = starting_point
  index = 0
  while index < source_array.length do
    result = yield(result, source_array[index])
    index += 1
  end
  result
end
