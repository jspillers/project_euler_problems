
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def nth_prime(n)
  primes = []
  x = 2
  while primes.size < n
    primes << x if (2..Math.sqrt(x)).all? {|i| x % i != 0 }
    x += 1
  end
  primes
end

puts nth_prime(10001).last
