# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.

def fib_sequence_to(limit, sequence=[0,1])

  sequence << sequence[-1] + sequence[-2]

  if sequence[-1] + sequence[-2] < limit
    sequence = fib_sequence_to(limit, sequence)
  else
    return sequence
  end
end

puts fib_sequence_to(4000000).inject(0) { |sum, i| sum + (i % 2 == 0 ? i : 0) }.to_s

