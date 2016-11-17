module Main where

import qualified Lists as LISTS

main :: IO ()
main = putStrLn $ show LISTS.myLast [1,2,3]
