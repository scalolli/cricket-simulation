import Test.Hspec
import Lib
import Control.Monad.Random

main :: IO ()
main = hspec $ do
    it "returns numbers based on their probability" $ do
          values <- return (take 10 $ fst $ (generateRandomScore [(1,0), (2,2), (3,3)] (mkStdGen 1)))
          (length $ filter (==2) values) `shouldSatisfy` (< (length $ filter (==3) values))
