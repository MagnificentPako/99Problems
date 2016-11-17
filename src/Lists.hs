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

-- Problem 5
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- Problem 6
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (myReverse xs)

-- Problem 7
data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x

-- Problem 8
compress :: (Eq a) => [a] -> [a]
compress [x] = [x]
compress (x:xs)
  | x `elem` xs = compress xs
  | otherwise   = x: compress xs

-- Problem 9
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first,rest) = span (==x) xs
            in (x:first) : pack rest
