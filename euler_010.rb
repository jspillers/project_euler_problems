# problem 10
# Calculate the sum of all the primes below two million.
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

def primes(n)
  return [] if n == 1
  (2..n).select do |x|
    (2..Math.sqrt(x)).all? do |i|
      x % i != 0
    end
  end
end

puts primes(2000000).inject(0){|sum, x| sum + x }
