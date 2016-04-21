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