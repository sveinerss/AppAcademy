# Write a method, my_rotate!(array, amt), that accepts an array and a number as args.
# The method should mutate the array by rotating the elements 'amt' number of times. 
# When given a positive 'amt', a single rotation will rotate left, causing the first element to move to the last index
# When given a negative 'amt', a single rotation will rotate right, causing the last element to move to the first index
# The method should return the given array.
# Do not use the built-in Array#rotate
# 
# Note: this method must MUTATE the input array. This means that the object_id of the input array should be identical
# to the object_id of the returned array. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.


def my_rotate!(array, amt)
<<<<<<< Updated upstream
    # creating a variable to capture # rotations 
    count = 0
    #route left rotations
    if amt > 0
        #must rotate to the left amt times 
        while count < amt
            # variable for i that resets after one full rotation to the right
            #captures the first element in the array to start the rotation
            i = 0
            moving =  array [i]
            # does one full array rotation
            while i.abs < array.length
                # temp captures the value of the spot that is being replaced 
                temp =  array [i-1]
                #assigns moving to the next right in array, unless end then assigns to front
                array [i-1] = moving
                #moving is now temp value
                moving = temp
                #itereates through all elements in array
                i -= 1
            end
        #one complete rotation to the right
            count += 1
        end    
    end

    #route for right to left rotations
    if amt < 0
        #must rotate to the right amt times 
        while count < amt.abs
            # variable for i that resets after one full rotation to the right
            #captures the first element in the array to start the rotation
            i = 0
            moving =  array [i]
            # does one full array rotation
            while i < array.length
                # temp captures the value of the spot that is being replaced 
                temp =  array [(i+1) % array.length]
                #assigns moving to the next right in array, unless end then assigns to front
                array [(i+1) % array.length] = moving
                #moving is now temp value
                moving = temp
                #itereates through all elements in array
                i += 1
            end
        #one complete rotation to the right
            count += 1
        end    
    end
    array
end


array_1 = ["a", "b", "c", "d"]
p array_1.object_id                 # => 70354216023780
result_1 = my_rotate!(array_1, 2)
p result_1                          # => ["c", "d", "a", "b"]
p result_1.object_id                # => 70354216023780

array_2 = ["NOMAD", "SOHO", "TRIBECA"]
p array_2.object_id                 # => 70354216019660
result_2 = my_rotate!(array_2, 1)
p result_2                          # => ["SOHO", "TRIBECA", "NOMAD"]
p result_2.object_id                # => 70354216019660


array_3 = ["a", "b", "c", "d"]
p array_3.object_id                 # => 70354216016500
result_3 = my_rotate!(array_3, -3)
p result_3                          # => ["b", "c", "d", "a"]
p result_3.object_id                # => 70354216016500
