quicksort [] = []
quicksort (x:xs) = quicksort less ++ [x] ++ quicksort more
    where less = [y | y <- xs, y < x]
          more = [y | y <- xs, y >= x]