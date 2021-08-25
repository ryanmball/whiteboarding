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


# Count Votes
# Given an array of strings, return a hash that provides of a count of how many times each string occurs.

# Input: ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

# Output: {"Dewey" => 6, "Truman" => 5}

# Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

def vote_count(votes)
  vote_count = Hash.new(0)
  votes.each { |candidate| vote_count[candidate] += 1 }
  return vote_count
end

p vote_count(["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"])


# Order the Whole Menu
# Given a hash, where the keys are strings representing food items, and the values are numbers representing the price of each food, return the amount someone would pay if they'd order one of each food from the entire menu.

# Input: {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}

# Output: 14

# Explanation: If someone would order one of everything on the menu, they'd pay a total of 14 (the sum of all the hash's values).

def order_menu(menu)
  total = 0
  menu.each do |_item, price|
    total += price
  end
  return total
end


p order_menu({"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2})


# Array Max
# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

def max(numbers)
  max = 0
  numbers.each do |number|
    if number > max
      max = number
    end
  end
  return max
end

p max([5, 17, -4, 20, 12])


# Reduce: Product
# Write a function that accepts an array of numbers and returns the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24

# Explanation: (1 x 2 x 3 x 4) = 24

def product(numbers)
  product = 1
  numbers.each { |number| product *= number }
  return product
end

p product([1, 2, 3, 4])

p [1, 2, 3, 4].reduce(:*)


# Popular Posts

# Given an array of hashes that represent a list of social media posts, return a new array that only contains the posts that have at least 1000 likes.

posts = [
{title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
{title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
{title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
{title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
]

# Output: [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# ]

def popular(posts)
  popular_posts = []
  posts.each do |post|
    if post[:likes] >= 1000
      popular_posts << post
    end
  end
  popular_posts
end

p popular(posts)


# RNA Transcription

# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

# Input: 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

def transcription(strand)
  rna = []
  dna_arr = strand.split("")
  dna_arr.each do |nucleotide|
    if nucleotide == "G"
      rna << "C"
    elsif nucleotide == "C"
      rna << "G"
    elsif nucleotide == "T"
      rna << "A"
    elsif nucleotide == "A"
      rna << "U"
    end
  end
  rna.join
end

p transcription("ACGTGGTCTTAA")


# Complete the Data I

# Given an array of social media posts and a hash of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

posts_arr = [
{title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
{title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
{title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
{title: 'Mondays are the worst', submitted_by: 403, likes: 644}
]

# And this hash of users (the key is the id number and the value is the user's real name):

users_hash = {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."}

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

# def add_user_name(posts, users)
#   posts.each do |post|
#     post[:submitted_by] = users[post[:submitted_by]]
#   end
#   posts
# end

def add_user_name(posts, users)
  posts.each { |post| post[:submitted_by] = users[post[:submitted_by]] }
  posts
end

p add_user_name(posts_arr, users_hash)


# ETL #1

# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1
keys_arr = ["a", "e", "i", "o", "u"]
value_int = 1

# Output:
# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }

def hash_combination(keys, value)
  hash_combo = {}
  keys.each { |key| hash_combo[key] = value }
  hash_combo
end

p hash_combination(keys_arr, value_int)


# Flatten Hash

# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

def flatten_hash(hash)
  keys = hash.keys
  values = hash.values
  flattened_arr = []
  i = 0
  while i < keys.length
    flattened_arr << keys[i]
    flattened_arr << values[i]
    i += 1
  end
  flattened_arr
end

p flatten_hash({"a" => 1, "b" => 2, "c" => 3, "d" => 4})