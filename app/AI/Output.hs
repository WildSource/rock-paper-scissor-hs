module AI.Output (
answer,
sortWinner
) where 

import System.Random

output :: Int -> String
output 1 = "rock"
output 2 = "paper"
output 3 = "scissors"

rng :: Int
rng = 
    let gen = mkStdGen 2023
    in fst $ randomR (1, 3) gen
    
answer :: String
answer = output rng

type User = String
type Component = String

sortWinner :: String -> String -> (User, Component)
sortWinner "Rock" "scissors" = ("Player", "Rock")
sortWinner "Rock" "paper" = ("AI","paper")
sortWinner "Rock" "rock" = ("Nobody","Rock")
sortWinner "Paper" "scissors" = ("AI","scissors")
sortWinner "Paper" "rock" = ("Player","Paper")
sortWinner "Paper" "paper" = ("Nobody","Paper")
sortWinner "Scissors" "paper" = ("Player","scissors")
sortWinner "Scissors" "rock" = ("AI","rock")
sortWinner "Scissors" "scissors" = ("Nobody","Scissors")

