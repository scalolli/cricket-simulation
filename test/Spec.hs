import Test.Hspec
import Lib
import Control.Monad.Random

main :: IO ()
main = hspec $ do
    it "returns numbers based on their probability" $ do
           (fst $ take 10 (generateRandomScore [(1,0), (2,2), (3,3)] (mkStdGen 1))) `shouldBe` [2,3]
