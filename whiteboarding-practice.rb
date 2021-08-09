# Reverse a string algorithm
# Input - "hello"
# Output - "olleh"

def reverse_string(str)
  i = str.length - 1
  new_string = ""
  while i >= 0
    new_string += str[i]
    i -= 1
  end
  new_string
end

p reverse_string("hello")


# Less than 100
# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

# Visualize
# Loop over the array and compare each number to 100
# If number is less than 100, add to new array
# Print/return new array

def less_than100(numbers)
  new_arr = []
  numbers.each do |number|
    if number < 100
      new_arr << number
    end
  end
  return new_arr
end

p less_than100([99, 101, 88, 4, 2000, 50])

# Reduce: Sum
# Input: [1, 2, 3, 4]
# Output: 10

# Explanation: (1 + 2 + 3 + 4) = 10

def reduce(numbers)
  i = 0
  sum = 0
  while i < numbers.length
    sum += numbers[i]
    i += 1
  end
  return sum
end

p reduce([5, 20, 88, 10, 4, 3, 3])

# Map: Double
# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

def double(numbers)
  # numbers.map { |number| number * 2 }
  # OR
  i = 0
  doubled = []
  while i < numbers.length
    doubled << numbers[i] * 2
    i += 1
  end
  return doubled
end

p double([4, 2, 5, 99, -4])