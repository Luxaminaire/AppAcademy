def hipsterfy(word)
    vowels = "aeiou"
    parts = word.split("")
    (parts.length-1).downto(0) do |idx| 
        if vowels.include?(parts[idx])
            parts.delete_at(idx)
            return parts.join("")
        end
    end
    word
end

def vowel_counts(str)
    hashy = Hash.new(0)
    vowels = "aeiou"

    str.downcase.each_char do |char|
        if vowels.include?(char)
            hashy[char] += 1
        end
    end
    hashy
end

def caesar_cipher(str, num)
    alphabet = "qwertyuiopasdfghjklzxcvbnm"
    crypt = ""

    str.each_char do |char|
        if alphabet.include?(char)
            if char.ord + num > 26
               crypt += (((char.ord - 'a'.ord + num) % 26) + 'a'.ord).chr
            else
            crypt += (char.ord + num).chr
            end
        else
            crypt += char
        end
    end
    crypt
end