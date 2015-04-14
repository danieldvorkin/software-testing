VOWELS = %w[a e i o u]

def translate_word(s)
	while !VOWELS.include? s[0]
		if s[0..1] == "qu" 
			s = s[2..-1] + s[0..1]
		else
			s = s[1..-1] + s[0]
		end
	end
	s << "ay"
end

def translate(s)
	words = s.split
	latin_words = words.map do |word|
		translate_word(word)
	end
	latin_words.join(" ")
end