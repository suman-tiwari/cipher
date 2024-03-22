def my_ceaser_cipher(str, shift)
    new_str = ''
    str.chars.each do |charr|
        down_charr = charr.downcase
        ascii_val = down_charr.ord
        unless (97..122).include? (ascii_val)
            new_str << charr
        else
            diff = 122 - ascii_val
            actual_shift = ((shift - diff)%26).abs
            final_ascii = actual_shift == 0 ? 122 : (97 + actual_shift - 1)
            if down_charr == charr 
                new_str << final_ascii.chr
            else
                new_str << final_ascii.chr.upcase
            end
        end
    end
    new_str
end

