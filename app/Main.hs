module Main where

import Control.Monad
import AI.Output

main :: IO ()
main = forever $ do
    putStrLn "Choose Rock, Paper or Scissors !"
    putStrLn "The capital is important it is what distinguishes you from the \"ai\" !"
    input <- getLine
    let value = answer
    putStrLn $ input ++ " vs " ++ value
    let winner = sortWinner input value
    putStrLn $ "The winner is " ++ fst winner ++ " with " ++ snd winner
    putStrLn "\n"