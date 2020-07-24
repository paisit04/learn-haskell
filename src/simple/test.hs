main :: IO ()
main = putStrLn (greet "World")

greeting = "Hello"
greet who = greeting ++ ", " ++ who

add :: Int -> Int -> Int
add = (+)

data Compass = North | South | East | West
  deriving (Eq, Ord, Enum, Show)

data Expression = Number Int
                | Add Expression Expression
                | Subtract Expression Expression
              deriving (Eq, Ord, Show)

calculate :: Expression -> Int
calculate (Number x) = x
calculate (Add x y) = (calculate x) + (calculate y)
calculate (Subtract x y) = (calculate x) - (calculate y)

newHead :: [a] -> a
newHead [] = error "empty list"
newHead (x:xs) = x

newTail :: [a] -> [a]
newTail [] = error "empty list"
newTail (x:xs) = xs
