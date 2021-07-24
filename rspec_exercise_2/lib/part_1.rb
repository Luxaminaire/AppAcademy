def partition(arr, num)
    mecharray = []
    less = []
    great = []

    arr.each do |ele|
        if ele >= num
            great << ele
        else
            less << ele
        end
    end
    mecharray << less
    mecharray << great

    mecharray
end

def merge(hash_1, hash_2)
    newHash = {**hash_1, **hash_2}
end

def censor(str, arr)
    vowels = "aeiou"
    words = str.split(" ")

    words.each do |word|
        if arr.include?(word.downcase)
            word.each_char.with_index do |char, idx|
                if vowels.include?(char.downcase)
                    word[idx] = '*'
                end
            end
        end
    end
    words.join(" ")
end

def power_of_two?(num)
    powers = [1, 2, 4, 8, 16, 32, 64, 128]
    powers.include?(num)
end

