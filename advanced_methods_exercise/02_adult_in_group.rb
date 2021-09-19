# Write a method, adult_in_group?(people), that accepts an array containing people.
# The method should return true if there is at least 1 person with an age of 18 or greater.
# The method should return false otherwise.

# #defined the method
# def adult_in_group?(x)
# #separating out hashes
#     x.each do |person|
# #if hash has age value above 18 then it returns true
#         if person[:age] >= 18
#                 return true
#         end
#     end
# #otherwise, loop finishes then returns false
#     return false
# end

def adult_in_group? (peoples)
    return peoples.any? {|people| people[:age] >= 18}
end

people_1 = [
    {name: "Jack", age: 17},
    {name: "Jill", age: 21},
    {name: "Alice", age: 15},
    {name: "Bob", age: 16}
]
p adult_in_group?(people_1)    # => true

people_2 = [
    {name: "Jane", age: 12},
    {name: "John", age: 13},
    {name: "Ashley", age: 10},
    {name: "Bill", age: 16}
]
p adult_in_group?(people_2)    # => false
