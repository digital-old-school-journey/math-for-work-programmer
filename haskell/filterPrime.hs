filter' :: (a->Bool) -> [a] -> [b]
filter' _ [] = []
filter' f (x:xs)
    | f x       = x : filter' f xs
    | otherwise = filter' f xs