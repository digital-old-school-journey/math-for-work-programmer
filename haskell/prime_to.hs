prime_to :: Int -> [Int]
prime_to n = sieve [2..n]
    where sieve [] = []
          sieve (x:xs) = x : sieve [y | y <- xs, (y `rem` x) /= 0]