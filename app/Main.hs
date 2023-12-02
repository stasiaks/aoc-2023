{-# LANGUAGE FlexibleInstances #-}

import Common (getInput)
import qualified Day1
-- import qualified Day2
-- import qualified Day3
-- import qualified Day4
-- import qualified Day5
-- import qualified Day6
-- import qualified Day7
-- import qualified Day8
-- import qualified Day9
-- import qualified Day10
-- import qualified Day11
-- import qualified Day12
-- import qualified Day13
-- import qualified Day14
-- import qualified Day15
-- import qualified Day16
-- import qualified Day17
-- import qualified Day18
-- import qualified Day19
-- import qualified Day20
-- import qualified Day21
-- import qualified Day22
-- import qualified Day23
-- import qualified Day24
-- import qualified Day25

import System.Environment (getArgs)
import Text.Printf (printf)

class Print a where
    printStrAware :: a -> IO ()

instance Print Int where
    printStrAware = print

instance Print [Char] where
    printStrAware = putStrLn

main :: IO ()
main = do
    args <- getArgs
    case args of
      [] -> putStrLn "No day provided"
      n:_ -> runDay n

runDay :: String -> IO ()
runDay ('D' : 'a' : 'y' : n) = runDay n
runDay ('0' : n) = runDay n
runDay "1" = printDay (getInput 1) Day1.solve1 Day1.solve2
-- runDay "2" = printDay (getInput 2) Day2.solve1 Day2.solve2
-- runDay "3" = printDay (getInput 3) Day3.solve1 Day3.solve2
-- runDay "4" = printDay (getInput 4) Day4.solve1 Day4.solve2
-- runDay "5" = printDay (getInput 5) Day5.solve1 Day5.solve2
-- runDay "6" = printDay (getInput 6) Day6.solve1 Day6.solve2
-- runDay "7" = printDay (getInput 7) Day7.solve1 Day7.solve2
-- runDay "8" = printDay (getInput 8) Day8.solve1 Day8.solve2
-- runDay "9" = printDay (getInput 9) Day9.solve1 Day9.solve2
-- runDay "10" = printDay (getInput 10) Day10.solve1 Day10.solve2
-- runDay "11" = printDay (getInput 11) Day11.solve1 Day11.solve2
-- runDay "12" = printDay (getInput 12) Day12.solve1 Day12.solve2
-- runDay "13" = printDay (getInput 13) Day13.solve1 Day13.solve2
-- runDay "14" = printDay (getInput 14) Day14.solve1 Day14.solve2
-- runDay "15" = printDay (getInput 15) Day15.solve1 Day15.solve2
-- runDay "16" = printDay (getInput 16) Day16.solve1 Day16.solve2
-- runDay "17" = printDay (getInput 17) Day17.solve1 Day17.solve2
-- runDay "18" = printDay (getInput 18) Day18.solve1 Day18.solve2
-- runDay "19" = printDay (getInput 19) Day19.solve1 Day19.solve2
-- runDay "20" = printDay (getInput 20) Day20.solve1 Day20.solve2
-- runDay "21" = printDay (getInput 21) Day21.solve1 Day21.solve2
-- runDay "22" = printDay (getInput 22) Day22.solve1 Day22.solve2
-- runDay "23" = printDay (getInput 23) Day23.solve1 Day23.solve2
-- runDay "24" = printDay (getInput 24) Day24.solve1 Day24.solve2
-- runDay "25" = printDay (getInput 25) Day25.solve1 Day25.solve2
runDay x = putStrLn $ printf "No solution for day '%s' exists" x

printDay :: Print a => Print b => IO String -> (String -> a) -> (String -> b) -> IO ()
printDay io solve1 solve2 = do
    input <- io
    putStrLn "Part 1:"
    printStrAware $ solve1 input
    putStrLn "Part 2:"
    printStrAware $ solve2 input

