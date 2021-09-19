# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.


# #defining method/ establishing parameters
# def coprime?(num_1,num_2)
#     hash = Hash.new(0)
# #running through range for first agrguement
# #brute force
# #if modular 0, then divisor gets added to hash
#     (2..num_1).each do |num|
#         if num_1 % num == 0
#             hash[num] += 1
#         end
#     end
# #same as before
# #if same divisor is used then hash count for number becomes 2
#     (2..num_2).each do |num|
#         if num_2 % num == 0
#             hash[num] += 1
#         end
#     end
# #checks to see if value of 2 exists    
#     if hash.has_value?(2)
#         return false
#     end

#     return true
# end

def coprime?(num1,num2)
    (2..num1).none? {|factor| (num1 % factor == 0) && (num2 % factor == 0)}
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
