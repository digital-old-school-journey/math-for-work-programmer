permute :: (Eq a) => [a] -> [[a]]
permute [] = [[]]
permute xs = [x:ys | x <- xs, ys <- permute (delete x xs)]