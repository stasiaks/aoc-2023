import Test.Tasty
import Test.Tasty.HUnit
import Text.Printf (printf)

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

main :: IO ()
main = defaultMain tests

getTestFile :: String -> IO String
getTestFile s =
    readFile $ printf "test/inputs/%s" s

tests :: TestTree
tests = testGroup "Tests" [ solutions ]

solutions :: TestTree
solutions = testGroup "Daily solutions"
    [ day1
--    , day2
--    , day3
--    , day4
--    , day5
--    , day6
--    , day7
--    , day8
--    , day9
--    , day10
--    , day11
--    , day12
--    , day13
--    , day14
--    , day15
--    , day16
--    , day17
--    , day18
--    , day19
--    , day20
--    , day21
--    , day22
--    , day23
--    , day24
--    , day25
    ]

day1 :: TestTree
day1 = testGroup "Day 1"
    [ testCase "Part 1" $ getTestFile "Day1_1" >>= (@?= 142) . Day1.solve1
    , testCase "Part 2" $ getTestFile "Day1_2" >>= (@?= 281) . Day1.solve2
    ]

