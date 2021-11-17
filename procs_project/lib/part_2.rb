def reverser (str, &prc)
    return prc.call(str.reverse)
end

def word_changer (str, &prc)
    new_arr = str.split(" ").map {|word| prc.call(word)}
    new_arr.join(" ")
end

def greater_proc_value (num, proc_1, proc_2)
    return proc_1.call(num) if proc_1.call(num) > proc_2.call(num)

    return proc_2.call(num)
end

def and_selector (arr, proc_1, proc_2)
    arr.select {|ele| proc_1.call(ele) && proc_2.call(ele)}
end

def alternating_mapper (arr, proc_1, proc_2)
    new_arr = []
    arr.each_with_index do |ele,i|
        if i.even?
            new_arr << proc_1.call(ele)
        else
            new_arr << proc_2.call(ele)
        end
    end
    new_arr
end