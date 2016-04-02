--Exercise 4.1

maxThree :: Int -> Int -> Int -> Int
maxThree a b c
    | a >= b && a >= c  = a
    | b >= c            = b
    | otherwise         = c

maxFour1 :: Int -> Int -> Int -> Int -> Int
maxFour1 a b c d 
    | a >= maxThree b c d  = a
    | otherwise            = maxThree b c d

    maxFour2 :: Int -> Int -> Int -> Int -> Int
    maxFour2 a b c d = max (max (max a b) c) d

    maxFour3 :: Int -> Int -> Int -> Int -> Int
    maxFour3 a b c d = max (maxThree a b c) d

--Exercise 4.5

rangeProduct :: Int -> Int -> Int
rangeProduct a b
  | a < b      = a * rangeProduct (a + 1) b
  | a == b     = a
  | otherwise  = 0

--Exercise 4.6

fac :: Int -> Int
fac n = rangeProduct 1 n

--Exercise 4.7

mult :: Int -> Int -> Int
mult 0 y = 0
mult x y = mult (x - 1) y + y

--Exercise 4.8

findroot :: Int -> Int -> Int
findroot n s
  | s^2 > n    = s - 1
  | otherwise  = findroot n (s + 1)

intsqrt :: Int -> Int
intsqrt n = findroot n 1

--Exercise 4.13

hcf :: Int -> Int -> Int
hcf x 0 = x
hcf x y = hcf y (rem x y)

--Exercise 4.14

twon :: Int -> Int
twon 0 = 1
twon 1 = 2
twon n = 2 * (twon (n - 1))

--Exercise 5.11

matches :: Int -> [Int] -> [Int]
matches i lst = [n | n <- lst, n == 1]

elemt :: Int -> [Int] -> Bool
elemt i lst = length (matches i lst) > 0

--Exercise 5.21

onThreeLines :: String -> String -> String -> String
onThreeLines a b c = a++"\n"++b++"\n"++c

--Exercise 5.22

onSeparateLines :: [String] -> String
onSeparateLines [] = ""
onSeparateLines lines
  | length lines == 1  = head lines
  | otherwise          = (head lines) ++ "\n" ++ (onSeparateLines (tail lines))

  --Exercise 5.23

duplicate :: String -> Int -> String
duplicate s 1 = s
duplicate s n
  | n <= 0     = ""
  | otherwise  = s ++ (duplicate s (n-1))

-- Function Trim

whitespace :: String
whitespace = ['\n', '\t', ' ']

trim :: String -> String
trim [] = []
trim (x:xs) 
    | elem x whitespace    = trim xs
    | otherwise            = (x:xs)