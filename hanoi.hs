hanoi :: [Int] -> [(Int, Int)]
hanoi n = hanoi' n 1 2 3
hanoi' 0 _ _ _ = []
hanoi' n beg tmp dest = tops_to_tmp ++ bottom_to_dest : tops_to_dest
    where tops_to_tmp = hanoi' (n-1) beg dest tmp
        bottom_to_dest = (beg, dest)
        tops_to_dest = (hanoi' (n-1) tmp beg dest)
