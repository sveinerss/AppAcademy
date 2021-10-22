def hipsterfy (word)
    vowels = "aeiou"
    word = word.reverse 
    drow = ""
    word.each_char.with_index do |letter,i|
        if vowels.include?(letter)            
            drow +=  word[i+1..-1]
            break
        end 
        drow += letter
    end
    drow.reverse
end


def vowel_counts (str)
    vowel = Hash.new(0)
    vowels = "aeiou"
    str.downcase.each_char do |letter|
        if vowels.include?(letter)
            vowel [letter] += 1
        end
    end
    vowel
end

def caesar_cipher (msg, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_msg = ""

    msg.each_char do |letter|
        if alphabet.include? (letter)
            ind = alphabet.index(letter)
            new_letter = alphabet [(ind + n) % 26]
            new_msg += new_letter
        else
            new_msg += letter
        end
    end
    new_msg
end 