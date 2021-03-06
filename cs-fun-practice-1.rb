# Problem #1

def print_array(array)
  # if array.class != Array
  #   raise ArgumentError.new "Argument Is Not Array"
  # end

  print "["
  for i in 0...array.length
    # if array[i].class != Fixnum
      # raise ArgumentError.new "Element of Argument Is Not Integer"
    # end
    print array[i]
    unless i == array.length - 1
      print ","
    end
  end
  print "]"
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print_array(list)
# => [3,19,27,4,98,304,-9,72]

# Problem #2

def stretch(array)
  new_arr = []
  # can assign array to an variable and do only /2 once
  for i in 0...array.length
    # if element is a even number
    if array[i] % 2 == 0
      # add 1/2 value of the element for twice into the new array
      new_arr << array[i]/2
    # if element is an odd number
    else
      new_arr << array[i]/2 + 1
    end
      new_arr << array[i]/2
  end
  return new_arr
end

puts "\n============="
list = [18, 7, 4, 24, 11]
puts stretch(list).inspect
# => [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]

# Solution 2: Recursion:
#
# def stretch(line)
#   if line.length == 1
#     if line[0] % 2 != 0
#       return [line[0]/2 + 1, line[0]/2]
#     else
#       return [line[0]/2, line[0]/2]
#     end
#   else
#     if line[0] % 2 != 0
#       return [line[0]/2 + 1, line[0]/2] + stretch(line[1..line.length])
#     else
#       return [line[0]/2, line[0]/2] + stretch(line[1..line.length])
#     end
#   end
# end
#
# # Solution 3 without if statement
#
# def stretch(array)
#   new_arr = []
#   for i in 0...array.length
#     new_arr << array[i]/2 + array[i] % 2
#     new_arr << array[i]/2
#   end
#   return new_arr
# end

# Problem #3
# liniar operation
# this solution does not require to be in order.
def numUnique(array)
  uniq_nums = {}
  if array.length == 0
    uniq_nums = {}
  end
  for i in 0...array.length
    uniq_nums[array[i]] = true
  end
  return uniq_nums.keys.length
end


# another solution:
# def numUnique(arr)
#   h = {}
#   arr.each do |i|
#     if h[i]
#       h[i] += 1
#     else
#       h[i] = 1
#     end
# end


puts "\n============="
list_1 = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts numUnique(list_1)
# => 9
list_2 = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
puts numUnique(list_2)
# => 15
list_3 = []
puts numUnique(list_3)
# => 0

# Problem #4
def numUnique2(array)
  uniq_length = 0
  for i in 0...array.length
    if array[i+1] != array[i]
      uniq_length += 1
    end
  end
  return uniq_length
end

puts "\n============="
list_1 = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts numUnique(list_1)
# => 9
list_2 = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
puts numUnique(list_2)
# => 15
list_3 = []
puts numUnique(list_3)
# => 0
