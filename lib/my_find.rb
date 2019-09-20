require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length #iterate thru each ele in passed in collection
    yield(collection[i]) #for each ele in collection, yield to block
    i += 1
  end
  binding.pry
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }

# As this code executes it will look like this: 
# def my_find(collection)
#   i = 0
#   while i < 100
#     yield(1) #send 1 to the block, evaluate and return false
#       i = i + 1
#   end
# end