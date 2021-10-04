# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str (str)
i = 0 
count = 1
new = ""
    while i < str.length
        
        if str[i] == str[i+1]    
            count += 1 
        else
            new += count.to_s + str[i] 
            count = 1
        end
        i += 1
    end
    new.split("1").join()
end


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
