# Algorithm
# for each letter, find the ascii value of the letter.
# If the shift value is greater than ascii value then use modulo(%) to find remainder of 26. Eg: 33%26=7
# If the obtained value is less than ascii value then add the value to the current ascii val. 
# If the result is greater than 122 or less than 97 and same for capital, then find the difference between them with the lower or higher range. 
# Eg: If result is 127 then subtract it with 122 and add it to the lower range 97. Same for capital letter.
# Finally, convert it to string using chr method.

def ceaser_cipher(str, shift)
	final_string = []
	str.chars.each do |letter|
		ascii_val = letter.ord
		downcased_letter = letter.downcase
		is_upcase = (97..122).include?(ascii_val) ? false : true
		ascii_val = is_upcase ? downcased_letter.ord : ascii_val
		if ascii_val < 97 || ascii_val > 122
			final_string << letter
		elsif ascii_val.between?(97, 122)
			result = ascii_val+(shift%26)
			if result > 122
				diff = result - 122 -1
				result = 97 + diff
			end
			final_letter = is_upcase ? result.chr.upcase : result.chr
			final_string.push(final_letter)
		end
	end
	puts final_string.join('')
end

ceaser_cipher('hello', 26) #hello
ceaser_cipher('HeLlO', 20) #ByFfI
ceaser_cipher('Hey how do you do? Im fine thank you!', 200) #Zwq zgo vg qgm vg? Ae xafw lzsfc qgm!
