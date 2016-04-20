--Clase 13

--Funcion de apertura unzip
apertura:: [(a,b)] -> ([a],[b])
apertura = par (map f s t , map snd )
           where par (f,g) xs = ( f xs , g xs )

--Funcion de reduccion (fold)
foldr:: (a -> b -> b) -> b -> [a] -> b
foldr f e [ ] = e
foldr f e (x:xs) = f x (foldr f e xs)