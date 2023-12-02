module Day1 (solve1, solve2) where

import Common.Parser (number)

import Data.List

solve1 :: String -> Int
solve1 s = foldr (+) 0
    $ map read
    $ map takeFirstLast
    $ map getDigits (lines s)

solve2 :: String -> Int
solve2 s = solve1
    $ replaceDigits
    $ s

sumHighest :: Int -> [[Int]] -> Int
sumHighest n xs = sum $ take n $ (reverse . sort) $ map sum xs

getDigits :: String -> [Char]
getDigits = filter (\x -> x >= '0' && x <= '9')

joinDigits :: [Char] -> Int
joinDigits = read

takeFirstLast :: [a] -> [a]
takeFirstLast xs = [head xs, last xs]

replaceDigits :: String -> String
replaceDigits = replaceDigitsTR []

replaceDigitsTR :: String -> String -> String
replaceDigitsTR acc ('o' : 'n' : 'e' : xs) = replaceDigitsTR (acc ++ "1") ("ne" ++ xs)
replaceDigitsTR acc ('t' : 'w' : 'o' : xs) = replaceDigitsTR (acc ++ "2") ("wo" ++ xs)
replaceDigitsTR acc ('t' : 'h' : 'r' : 'e' : 'e' : xs) = replaceDigitsTR (acc ++ "3") ("hree" ++ xs)
replaceDigitsTR acc ('f' : 'o' : 'u' : 'r' : xs) = replaceDigitsTR (acc ++ "4") ("our" ++ xs)
replaceDigitsTR acc ('f' : 'i' : 'v' : 'e' : xs) = replaceDigitsTR (acc ++ "5") ("ive" ++ xs)
replaceDigitsTR acc ('s' : 'i' : 'x' : xs) = replaceDigitsTR (acc ++ "6") ("ix" ++ xs)
replaceDigitsTR acc ('s' : 'e' : 'v' : 'e' : 'n' : xs) = replaceDigitsTR (acc ++ "7") ("even" ++ xs)
replaceDigitsTR acc ('e' : 'i' : 'g' : 'h' : 't' : xs) = replaceDigitsTR (acc ++ "8") ("ight" ++ xs)
replaceDigitsTR acc ('n' : 'i' : 'n' : 'e' : xs) = replaceDigitsTR (acc ++ "9") ("ine" ++ xs)
replaceDigitsTR acc (x : xs) = replaceDigitsTR (acc ++ [x]) xs
replaceDigitsTR acc [] = acc
