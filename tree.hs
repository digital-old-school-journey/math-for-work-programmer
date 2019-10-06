data Tree a = EmptyTree | Node a (Tree a) (Tree a)
    deriving(Show)

singletonNode :: a -> Tree a
singletonNode x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singletonNode x
treeInsert x (Node a left right)
    | x == a = Node x left right
    | x < a = Node a (treeInsert x left) right
    | x > a = Node a left (treeInsert x right)

flatten :: Tree a -> [a]
flatten EmptyTree = []
flatten (Node a left right) = [a] ++ flatten left ++ flatten right

count :: Tree a -> Int
count t = (length . flatten) t

isElem :: (Eq a) = a -> Tree a -> Bool
isElem x t = ((elem x) . flatten) t

-- nums = [8,6,4,1,5,5,6,7,3,5]
-- tree = foldr treeInsert EmptyTree nums
