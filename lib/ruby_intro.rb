# When done, submit this entire file to the autograder.
# Sean Neal 1/29/2020 CSCE 431 Software Engineering HW1
# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length < 0
    return 0
  end
  summing = 0
  for item in arr
    summing = summing + item
  end
  return summing
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  return arr.sort.last(2).sum
  
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  
  arr.each_with_index do |items,index1|
    arr.each_with_index do |items2, index2|
      if(items + items2 == n && index1 != index2)
        return true
      end
    end
  end
  return false
  #end of me
end

# Part 2

def hello(name)
  return "Hello, " + name
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false;
  end
  
  #if !(s.chr {|x| x =~ /\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/})
  #  return true
  #end
  if /\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/ =~ s.chr
    return true
  end
  return false
  
  #vowels = ['a','e','i','o','u', 'A', 'E', 'I', 'O', 'U']
  #i = 0
  #loop do
  #  if (vowels.include?(s[0].chr))
  #    return false;
  #  end
  #  if i == s.length
  #    break
  #  end
  #  i = i + 1
  #end
  #return true
end


def binary_multiple_of_4? s
  # YOUR CODE HERE
  i = 0
  numTotal = 0
  
  if !(s.each_char.all? {|x| x =~ /[01]/})
    return false
  end
  
  if s.length == 0
    return false
  end
  
  loop do
    if (s[i].chr == '1') 
      numTotal = numTotal + 2**(s.length - 1 - i)
    end
    i = i + 1
    if(i >= s.length)
      break
    end
  end
  if (numTotal % 4 == 0)
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(n, p)
    raise ArgumentError.new("Expected isbn to be nonempty and price to be above 0") if (n.length == 0 || p <= 0)
    @isbn = n
    @price = p
  end

  attr_writer :isbn
  
  attr_reader :isbn
  
  attr_writer :price

  attr_reader :price
  
  def price_as_string
    priceConverted = format("$%.2f",price) 
    return priceConverted
  end

end
