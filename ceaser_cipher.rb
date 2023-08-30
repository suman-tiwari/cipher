def test_ceaser_cipher(str, shift)
  alphabet = ('a'..'z').to_a
  new_str = ''
  str.split('').each do |charr|
    down_charr = charr.downcase
    if alphabet.include?(down_charr)
      index = alphabet.index(down_charr)
      index = (index + shift)%26

      if down_charr == charr
        new_str << alphabet[index]
      else
        new_str << alphabet[index].upcase
      end
    else
      new_str << charr
    end
  end
  new_str
end

puts test_ceaser_cipher("What is your name?", 5) #'Bmfy nx dtzw sfrj?'
