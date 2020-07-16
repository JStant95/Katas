def next_unique_digit(num)
  sequence = [0]
  i = 0

  (num).times do
    i.next
    sequence.push(num)
  end

 sequence.pop
end
