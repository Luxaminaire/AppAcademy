def average(num_1, num_2)
    (num_1+num_2) / 2.0
end

def average_array(arr)
   arr.sum(0.0) / arr.length
end

def repeat(str, num)
   str * num
end

def yell(str)
   str.upcase + "!"
end

def alternating_case(str)
    parts = str.split(" ")
    statement = []
    (0...parts.length).each do |i|
        if i % 2 == 0
            statement << parts[i].upcase
        else
            statement << parts[i].downcase
        end
    end
    statement.join(" ")
end

p alternating_case("code never lies, comments sometimes do.")