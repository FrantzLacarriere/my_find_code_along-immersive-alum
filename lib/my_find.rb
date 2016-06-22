require 'pry'

def my_find(collection)
  i = 0
  ret = nil
  while i < collection.length
    if (yield(collection[i]))
      ret = collection[i]
      break
    end
    i += 1
  end
  ret
end