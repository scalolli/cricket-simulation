module Lib
    ( generateRandomScore,
      someFunc
    ) where

import Control.Monad.Random

generateRandomScore :: RandomGen g => [(Int, Rational)] -> g -> ([Int], g)
generateRandomScore weights g = runRand (sequence . repeat $ fromList weights) g

someFunc :: IO ()
someFunc = putStrLn "Hello"

-- Add models
data BallOutcome = DotBall | One | Two | Three | Four | Five | Six | Out deriving (Eq, Show)
data Player = Player deriving (Eq, Show)
data GameState = GameState Player Player deriving (Eq, Show)
