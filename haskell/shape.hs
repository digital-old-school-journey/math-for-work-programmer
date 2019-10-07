data Shape = Circle Radius | Square Side
    deriving (Show)

type Radius = Float
type Side = Float
type Area = Float

area :: Shape -> Area
area (Circle r) = pi * r * r
area (Square s) = s * s