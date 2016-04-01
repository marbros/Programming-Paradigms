-- Fibonacci.

fibonacci :: (Int,Int) -> (Int,Int)
fibnacci (x,y) = (y,x+y)

fibPair :: Int -> (Int,Int)
fibPair n
    | n == 0         = (0,1)
    | otherwise      = fibonacci (fibPair (n - 1))

optiParams :: Int -> Int
optiParams = fst . fibPair