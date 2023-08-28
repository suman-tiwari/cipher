def self.ceaser_cipher(str, index)
  down_lower, down_upper, up_lower, up_upper = 97, 122, 65, 90
  down_range = (down_lower..down_upper).to_a
  up_range = (up_lower..up_upper).to_a
  val_range = down_range.concat(up_range)
  new_str = ''
  str.split('').each do |charr|
    ascii_val = charr.ord
    unless val_range.include?(ascii_val)
      new_str << charr
    else
      new_ascii_val = ascii_val + index
      if val_range.include?(new_ascii_val)
        new_str << new_ascii_val.chr
      else
        down_upper_diff = new_ascii_val - down_upper
        up_upper_diff = new_ascii_val - up_upper
        
        if down_upper_diff < up_upper_diff
           new_ascii_val = (down_lower + down_upper_diff-1)
        else
           new_ascii_val = (up_lower + up_upper_diff - 1)
        end
        new_str << new_ascii_val.chr        
      end
    end
  end
  return new_str
end

puts ceaser_cipher("What is your name?", 5) #'Bmfy nx dtzw sfrj?'
