--Clase 13

--Funcion de apertura unzip
apertura:: [(a,b)] -> ([a],[b])
apertura = par (map f s t , map snd )
           where par (f,g) xs = ( f xs , g xs )

--Funcion de reduccion (fold)
foldr:: (a -> b -> b) -> b -> [a] -> b
foldr f e [ ] = e
foldr f e (x:xs) = f x (foldr f e xs)

--Funci´on de reducci´on foldl
foldl:: ( b -> a -> b ) -> b -> [ a ] -> b
foldl f e = e
foldl f e (x:xs) = foldl f (f e x) xs

--La funcion scanl
inits = foldr f [[]] where f x xss = [] : map (x:) xss

scanl:: ( a -> b -> b ) -> b -> [ a ] -> [ a ]
scanl f e = map (foldl f e ) . inits

--Función tails
tails [] = [ [ ] ]
tails (x:xs) = x:xs : tails xs

scanr f a [] = [a]
scanr f a (x:xs) = f x (head ys):ys
            where ys = scanr f a xs

--Numbers of hamming

union u v w = (u <|> v) <|> w
    where (x:xs) <|> (y:ys) |x == y == x : (xs <|> ys)
                            |x < y = z : (xs <|> (y:ys))
                            |y < x = y : ((x:xs) <|> ys)