# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"
def prime (num)
    (2...num).each do |div|
        return false if num % div == 0
    end 
        true
end

def largest_prime_factor(number)
    divisors = []
    (2..number).each do |div|
       divisors << div if number % div == 0
    end

    prime_divisors = divisors.select {|ele| prime(ele)}
    prime_divisors[-1]
end
#______________________________________________________________________________________________________

def unique_chars? (str)
    hash = Hash.new(0)

    str.each_char { |letter| hash[letter] += 1}

    hash.values.each { |v| return false if v >1}
    
    true
end

#____________________________________________________________________________

def dupe_indices (arr)
    hash = Hash.new(0)
    array = []
    #go through array and figure out counts
    arr.each {|ele| hash[ele] +=1}
    
    dupes = hash.delete_if {|k,v| v < 2}
    # go through all the keys
    dupes.each_key do |k|
        #create indices array which will replace previous value
        indices = []
        #going through arrray to return indices
        arr.each_with_index {|ele, i| indices << i if ele == k }
        hash [k] = indices
    end
    hash
end
#_________________________________________________________

def ana_array (arr_1,arr_2)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)

    arr_1.each {|ele| hash_1[ele] +=1}
    arr_2.each {|ele| hash_2[ele] +=1}

    hash_1==hash_2
end