module Lib
    ( generateRandomScore,
      someFunc
    ) where

import Control.Monad.Random

generateRandomScore :: RandomGen g => [(Int, Rational)] -> g -> ([Int], g)
generateRandomScore weights g = runRand (sequence . repeat $ fromList weights) g

someFunc :: IO ()
someFunc = putStrLn "Hello"

