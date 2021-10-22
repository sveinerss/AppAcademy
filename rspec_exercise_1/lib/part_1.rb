def average (num1,num2)
    (num1 + num2) / 2.0
end



def average_array (arr) 
    arr.inject {|acc,ele| acc + ele } / (arr.length * 1.0)
end



def repeat (str,rep)
    new_str = ""
    rep.times do
        new_str += str
    end
    new_str
end


def yell (loud)
  loud.upcase() + "!"
end

def alternating_case (sent)
    arr = sent.split(" ")
    new_arr= []

    arr.each_with_index do |word, i|
        if (i+1) % 2 == 0
            new_arr << word.downcase()
        else
           new_arr << word.upcase()
        end
    end

    new_arr.join(" ")
end