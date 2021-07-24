# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def unique_chars?(str)
    hashy = Hash.new(0)

    str.each_char do |char|
        hashy[char] += 1
        if hashy[char] > 1
            return false
        end
    end
    true
end

def dupe_indices(arr)
    hashy = Hash.new {|h, k| h[k] = []}

    arr.each_with_index do |char, idx|
       hashy[char] << idx
    end

    hashy.select {|ele, array| array.length > 1}
end

def ana_array(arr1, arr2)
    hashly = Hash.new(0)
    hashy = Hash.new(0) 

    arr1.each do |ele|
        hashly[ele] += 1
    end

    arr2.each do |ele|
        hashy[ele] += 1
    end

    hashly == hashy
end