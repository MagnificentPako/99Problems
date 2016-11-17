module Lists where

-- Problem 1
myLast :: [a] -> a
myLast [] = error "No empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

-- Problem 2
myButLast :: [a] -> a
myButLast = last . init

-- Problem 3
elementAt :: [a] -> Int -> a
elementAt x i = last $ take i x

-- Problem 4
myLength :: [a] -> Integer
myLength [_] = 1
myLength (_:xs) = 1 + myLength xs

--Problem 5
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]
