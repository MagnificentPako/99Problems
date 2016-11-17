module Lists where

-- Problem 1
myLast :: [a] -> a
myLast [] = error "No empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs
