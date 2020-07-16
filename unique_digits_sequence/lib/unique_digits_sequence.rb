def next_unique_digit(num)
  sequence = [0]
  i = 0

  num.times do
    i += 1
    string_last_num = sequence.last.to_s
    string_current_num = i.to_s

    if !includes_digit(string_last_num, string_current_num) && !sequence.include?(string_current_num.to_i)
      sequence.push(i)
    else
      j = 0
      until !includes_digit(string_last_num, string_current_num) && !sequence.include?(string_current_num.to_i)
        j += 1
        string_current_num = j.to_s
      end
      sequence.push(string_current_num.to_i)
      i -= 1
    end
  end

 sequence.pop
end

def includes_digit(last_num, current_num)
  last_num.each_char do |dig|
    if current_num.include?(dig)
      return true
    end
  end
  false
end
