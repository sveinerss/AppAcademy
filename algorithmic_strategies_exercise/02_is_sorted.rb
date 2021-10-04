# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)
def is_sorted (arr)
    
    # creating varibale for while, if it is not sorted...
    sorted = false
    #while this is unsorted
    while !sorted
        #set sorted to true, in case no more pass is necessary
        sorted = true 
        #run through all indices by finding length of array, excluding the last bc it'll create comparison between last indice and +1 (which doesn't exist)
        (0...arr.length-1).each do |i|
            #creat the comparison which if true returns false cause it's unsorted
            if arr[i] > arr[i+1]
                return false
            end
        end
    end
    return true
end 

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
