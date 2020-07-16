def next_unique_digit(num)
  sequence = [0]
  i = 0

  num.times do
    i.next
    string_last_num = sequence.last.to_s
    sequence.push(num)
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
