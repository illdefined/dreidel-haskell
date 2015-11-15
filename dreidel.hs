module Main where

import System.Random

letter :: RandomGen g => g -> (Char, g)
letter gen = (letters !! index, gen')
	where letters = "נגהש"
		(index, gen') = randomR (0, length letters - 1) gen

main :: IO ()
main = newStdGen >>= putStrLn . (:[]) . fst . letter
