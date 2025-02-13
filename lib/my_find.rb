require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length #Step 1: iterate thru each ele in passed in collection
    # Step 2: for each ele in collection, yield to block
    # Step 3 Use return value of the yeild block
    return collection[i] if yield(collection[i]) 
    i += 1
  end
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 } #=> return first ele in array that eva. to true = 15

# As this code executes it will look like this: 
# def my_find(collection)
#   i = 0
#   while i < 100
#     yield(1) #send 1 to the block, evaluate and return false
#       i = i + 1
#   end
# end