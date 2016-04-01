-- Fibonacci.

fibonacci :: (Int,Int) -> (Int,Int)
fibonacci (x,y) = (y, x + y)

fiboPair :: Int -> (Int,Int)
fiboPair n
    | n == 0         = (0,1)
    | otherwise      = fibonacci (fiboPair (n - 1))

optiParams :: Int -> Int
optiParams = fst . fiboPair