dictionary = ["below","down","go","going","horn","how","howdy",
                "it","i","low","own","part","partner","sit"]
def substrings(string_input, array_input)
included = Hash.new(0)

    array2 = string_input.downcase.split(" ") #string to array & make it not case sensitive
    array2.find_all { |word| 
        array_input.each { |x| 
        
        if word.include?(x)
            included[x] += 1
        end
        }   
    }
    
    return included
    
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)





