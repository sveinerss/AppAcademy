def palindrome? (str)
    new_string = ""
    i = -1

    while (i + 1).abs < str.length
        new_string += str[i]
        i -= 1
    end
    str == new_string
end

def substrings (substr)
    #create method to collect all possible combinations
    arrays = []
    i = 0

    while i < substr.length 
        
        substr[i..-1].split.each do
            n = 0
            while n < substr[i..-1].length
                arrays << substr[i..i+n]
                n += 1
            end    
        end

        i += 1
    end

    arrays
end

def palindrome_substrings (bigdaddystr)
    all_arrays = substrings(bigdaddystr)

    all_arrays.select {|ele| palindrome?(ele) && ele.length > 1 }
    
end