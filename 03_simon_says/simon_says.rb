def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num = 1)
	if num == 1
		newString = (string + " ") * 2
	else
		newString = (string + " ") * num
	end
	newString.rstrip()
end

def titleize(string, num = 1)
	string.capitalize!  
   words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
   phrase = string.split(" ").map {|word| 
       if words_no_cap.include?(word) 
           word
       else
           word.capitalize
       end
   }.join(" ") 
 phrase
end

def start_of_word(string, num = 1)
	string[0...num]
end

def first_word(string, num = 1)
	newString = string.split
	newString[0]
end

