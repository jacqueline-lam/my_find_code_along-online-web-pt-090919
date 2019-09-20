require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length #iterate thru each ele in passed in collection
    yield(collection[i]) #for each ele in collection, yield to block
    i += 1
  end
  binding.pry
end