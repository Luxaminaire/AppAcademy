def select_even_nums(arr)
    arr.select(&:even?)
end

def reject_puppies(arr)
    arr.reject { |ele| ele["age"] < 3}
end

def count_positive_subarrays(array)
    array.count { |arr| arr.sum > 0 }
end

def aba_translate(str)
    vowels = "aeiou"
    newWord = ""
    str.chars.map do |char|
        newWord += char
        if vowels.include?(char) 
            newWord += "b" + char
        end
    end
    newWord
end

def aba_array(arr)
   arr.map {|ele| aba_translate(ele)}
end