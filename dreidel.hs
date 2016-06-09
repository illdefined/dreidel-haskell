module Main where

import Crypto.Random.API

letter :: SystemRandom g => g -> (Char, g)
letter gen = (letters !! index, gen')
	where letters = "נגהש"
		(index, gen') = randomR (0, length letters - 1) gen

main :: IO ()
main = newStdGen >>= putStrLn . (:[]) . fst . letter
