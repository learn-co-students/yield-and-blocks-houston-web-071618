# within the method yield block takes an arugment from the the method and accepts it as a parameter


# in hello_t1 iterate through loop with counter starting at 0
# loop through until the last element of the array
# def hello_t1(array)
# i = 0

#   while i < array.length
#     i = i + 1
#   end

# end
# hello_t1


# in hello_t2 iterate through loop with counter starting at 0
# loop through until the last element of the array and yield to grab each array item, iterate by adding plus one to the counter
# def hello_t2(array)
#   i = 0
 
#   while i < array.length
#     yield array[i]
#     i = i + 1
#   end
# end
# hello_t2


# def hello_t(array)
#   i = 0
 
#   while i < array.length
#     yield array[i]
#     i = i + 1
#   end
# end

# Above fails test because method returns nil, we want to return original array
# added parenth is that needed?
# def hello_t(array)
#   i = 0
 
#   while i < array.length
#     yield (array[i])
#     i = i + 1
#   end
  # returns original array
#   array
# end
# Above fails test because no yield block given

def hello_t(array)
  if block_given?
    # block_given? method - returns true if so
  i = 0
 
    while i < array.length
      yield (array[i])
      i = i + 1
    end

    # returns original array
    array

  else
    puts "Hey! No block was given!"
  end
end

hello_t(["Tim", "Tom", "Jim"]) do | name |
  if name.start_with?("T")
    puts "Hi, #{name}"
   end 
end













