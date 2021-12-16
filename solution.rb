def generatePrimes(n)
  primes = [];
  for i in 2..n do
    isPrime = true
    primes.each do |item|
      isPrime = false if (i % item == 0)
    end
    primes.push(i) if isPrime
  end
  primes.unshift(1)
  primes
end

def gap(g, m, n)
  primes = generatePrimes(n)
  primes.each_with_index do |number, index|
    if (number >= m && index < primes.length - 1)
      nextNum = primes[index + 1]
      puts nextNum
      if (nextNum - number == g)
        puts nextNum
        return [number, nextNum]
      end
    end
  end
  nil
end
