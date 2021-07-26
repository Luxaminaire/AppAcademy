def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(str, &prc)
    parts = str.split(" ")
    newArr =[]
    parts.each {|word| newArr << prc.call(word)}
    newArr.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    if prc1.call(num) > prc2.call(num)
        return prc1.call(num)
    end

    prc2.call(num)
end

def and_selector(arr, prc1, prc2)
    newArr = []
    arr.each do |ele|
        if prc1.call(ele) && prc2.call(ele)
            newArr << ele
        end
    end
    newArr
end

def alternating_mapper(arr, prc1, prc2)
    newArr = []
    arr.each.with_index do |ele, idx|
        if idx % 2 == 0
            newArr << prc1.call(ele)
        else
            newArr << prc2.call(ele)
        end
    end
    newArr
end