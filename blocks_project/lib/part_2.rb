require "byebug"
def all_words_capitalized? (arr)
    arr.all?{|word|word == word.capitalize}
end

def no_valid_url? (arr)
    bad_urls = [".com",".net",".io",".org"]
    arr.none? {|url| url.include?(".com") ||url.include?(".net")||url.include?(".io")||url.include?(".org")}
end

def any_passing_students? (arr)
    arr.any? do |student| 
       (student [:grades].sum / student [:grades].length) >= 75
    end
end