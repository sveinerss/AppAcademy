def partition(arr, num)
    high_arr = arr.select {|ele| ele < num}, low_arr = arr.select {|ele| ele >= num}
end 

def merge (hash_1, hash_2)
    hash_1.merge (hash_2)
end

def censor (sent, array)
    vowels = "aeiou"
    new_sent = ""
    sent.downcase.split().each_with_index do |word|
        if array.include?(word)
            new_word = ""
            word.each_char do |letter|
                if vowels.include?(letter)
                    new_word += "*"
                else
                    new_word +=letter
                end
            end
            new_sent += new_word
        end
    end 
    new_sent
end
