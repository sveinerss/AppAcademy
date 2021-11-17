def my_map (arr, &prc)
  new_arr = []
    arr.each do |ele|
    new_arr << prc.call(ele)
  end
  new_arr
end

def my_select (arr, &prc)
 new_arr = []
      arr.each do |ele|
        if prc.call(ele) == true
            new_arr << ele
        end
    end
    new_arr
end

def my_count (arr, &prc)
    i = 0
      arr.each do |ele|
        if prc.call(ele) == true
            i += 1
        end
    end
    i
end

def my_any? (arr, &prc)
    arr.each do |ele|
        return true if prc.call(ele) == true
    end
    false
end

def my_all? (arr, &prc)
    arr.each do |ele|
        return false if prc.call(ele) != true
    end
    true
end

def my_none? (arr,&prc)
    arr.each do |ele|
        return false if prc.call(ele) == true
    end
    true
end