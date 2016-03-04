-- Problema 1.
{-
    Escriba una funcion en haskell llamada todosIguales que verifique que
    los cuatros enteros de entrada son todos iguales.
-}
todosIguales:: Int ->Int ->Int ->Int ->Bool
todosIguales a b c d = (a==b) && (b==c) && (c==d)

todosIgualesV2:: Int ->Int ->Int ->Int ->Bool
todosIgualesV1   a     b     c     d
    | (a==b) && (b==c) && (c==d) = True
    | otherwise                  = False


-- Problema 2.
{-
     Escriba una funcion llamada todosDiferentes que verifique que los cuatro
     enteros de entrada son todos diferentes.
-}
tresDiferentes:: Int -> Int -> Int -> Bool
tresDiferentes a b c = (a/=b) && (b/=c) && (a/=c)

todosDiferentes:: Int ->Int ->Int ->Int ->Bool
todosDiferentes a b c d = (a/=b) && (a/=c) && (a/=d) && (tresDiferentes b c d)

-- Problema 3.
{-
    Escriba una funcion en Haskell llamada cuantosDebajoPromedio,la cual
    retorna cuantos de los cuatro enteros de entrada son menores que su
    valor promedio.
-}
promedio:: Int ->Int ->Int ->Int ->Int
promedio a b c d = (a + b + c + d) `div` 4

cuantosDebajoPromedio ::Int -> Int -> Int -> Int -> Int
cuantosDebajoPromedio a b c d = length $ filter (< avg) cuatro
    where avg = promedio a b c d
          cuatro = [fromIntegral a, fromIntegral b,fromIntegral c,fromIntegral d]

-- Problema 4.
{-
    Escriba una funcion en Haskell llamada negativos, esta funcion revisa un
    arreglo de enteros y cuenta cuantos numeros negativos existe en una lista.
-}
negativos:: [Int] ->Int
negativos list = length $ filter (< 0) list

-- Problema 5.
{-
    Escriba una funcion en Haskell llamada fib que define los numeros
    de Fibonacci mediante la regla:
    f0 = 0, f1 = 1, fn+2 = fn + fn+1 para todo n >= 0..
-}
fib :: Integer -> Integer
fib n
    | n==0     = 0
    | n==1     = 1
    | n>1      = fib (n - 2) + fib (n - 1)

-- Problema 6.
{-
    Escribir una funcion en Haskell llamada absoluto (Valor absoluto)
    que devuelve el valor absoluto de un entero.
-}
absoluto:: Integer ->Integer
absoluto n 
        | n >= 0 = n
        | n < 0 = - n

-- Problema 7.
{-
    Escriba una funcion llamada intercambio de modo que
    flip(curry f ) = curry( f.intercambio) Para todo 
    f :: (alfa; beta) -> y
-}
-- intercambio:: flip(currificacion) -> currificacion (flip)
intercambio:: (a,b) -> (b,a)
intercambio (x,y) = (y,x)

-- Test con resta 
resta:: (Integer,Integer) -> Integer
resta (x,y) = x - y

-- resta':: Integer -> Integer -> Integer
-- resta' = intercambio resta

-- Problema 8.
{-
    Escriba una funcion en haskell llamada secuenciaMaxLarga, esta funcion
    revisa un arreglo de enteros y encuentra la secuencia consecutiva mas larga.
-}
secuenciaMaxLarga::[Int] ->Int
secuenciaMaxLarga []     = 0
secuenciaMaxLarga (x:xs) = secuencia 1 1 x xs where
    secuencia maxLarga actual _ [] = max maxLarga actual
    secuencia maxLarga actual prev (x:xs)
        | x == prev = secuencia maxLarga (actual + 1) prev xs
        | otherwise = secuencia (max maxLarga actual) 1 x xs