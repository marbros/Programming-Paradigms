-- Problema 1.
{-
    Escriba una funcion en haskell llamada todosIguales
    que verifique que los cuatros enteros de entrada 
    son todos iguales.
-}
todosIgualesV1:: Int ->Int ->Int ->Int ->Bool
todosIgualesV1   a     b     c     d
    | (a==b) && (b==c) && (c==d) = True
    | otherwise                  = False

todosIgualesV2:: Int ->Int ->Int ->Int ->Bool
todosIgualesV2 a b c d = (a==b) && (b==c) && (c==d)

-- Problema 2.
{-
     Escriba una funcion llamada todosDiferentes que verifique
     que los cuatros enteros de entrada son todos iguales.
-}
tresDiferentes :: Int -> Int -> Int -> Bool
tresDiferentes a b c = (a/=b) && (b/=c) && (a/=c)

todosDiferentes:: Int ->Int ->Int ->Int ->Bool
todosDiferentes a b c d = (a/=b) && (a/=c) && (a/=d) && (tresDiferentes b c d)

-- Problema5. (fib :: Integer ->Integer)
{-
    Escriba una funcion en Haskell llamada fib que
    define los numeros de Fibonacci mediante la regla:
    f0 = 0, f1 = 1, fn+2 = fn + fn+1 para todo n >= 0..
-}
fib :: Integer -> Integer
fib n
    | n==0     = 0
    | n==1     = 1
    | n>1      = fib (n - 2) + fib (n - 1)