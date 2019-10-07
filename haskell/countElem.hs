countElem :: [a] -> String
countElem [] = "empty"
countElem (_:[]) = "one"
countElem (_:_:[]) = "two"
countElem [_,_,_] = "three"
countElem _ = "many"