# 01 - Add all the natural numbers below one thousand that are multiples of 3 or 5.

puts (1..999).inject(0) { |sum,x| sum + (x % 3 == 0 || x % 5 == 0 ? x : 0) }.to_s
