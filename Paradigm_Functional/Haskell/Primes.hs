divisors:: Int -> [Int]
divisors n = [i | i <- [1..n] mod n i == 0]

isPrime:: Int -> Bool
isPrime n
    | n >= 0    = length (divisors n) == 2
    | otherwise = False
