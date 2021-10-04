# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort (arr)
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
                arr[i], arr[i+1] = arr[i+1],arr[i] 
                sorted = false
            end
        end
    end
    return arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]