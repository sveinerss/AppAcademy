def partition(arr, num)
    high_arr = arr.select {|ele| ele < num}, low_arr = arr.select {|ele| ele >= num}
end 

def merge (hash_1, hash_2)
    hash_1.merge (hash_2)
end

def censor (sent, array)
    vowels = "aeiouAEIOU"
    new_sent = ""
    # select word in array to check if it's in sentence
    sent.split.each do |word|

        # makes sent lower to compare to lower word, not saved mutations
        if array.map{|ele|ele.downcase}.include? (word.downcase)
            new_word = ""
            # go through word to replace vowels
            word.each_char do |letter|
                if vowels.include? (letter)
                    new_word += "*"
                else
                    new_word +=letter
                end
            end
            new_sent += (" "+ new_word)

        else 
            new_sent += (" "+ word)
        end
    end
    new_sent.split(" ").join(" ")
end

def power_of_two? (power)
    i = 0

    while i < power
        if power / (2.0**i) == 1
            return  true
        end

        if (2**i) > power
            break
        end
        i += 1
    end

    return false
end
