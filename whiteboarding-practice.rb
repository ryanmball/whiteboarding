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

def less_than_100(numbers)
  new_arr = []
  numbers.each do |number|
    if number < 100
      new_arr << number
    end
  end
  return new_arr
end

p less_than_100([99, 101, 88, 4, 2000, 50])