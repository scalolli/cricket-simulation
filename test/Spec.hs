import Test.Hspec
import Lib
import Control.Monad.Random

main :: IO ()
main = hspec $ do
    describe "test generating numbers based on probability" $ do
        it "number of 2's generated should be less than number of 3's" $ do
            values <- return (take 10 $ fst $ (generateRandomScore [(1,0), (2,2), (3,3)] (mkStdGen 1)))
            (length $ filter (==2) values) `shouldSatisfy` (< (length $ filter (==3) values))
        it "should not generate any 1's" $ do
            values <- return (take 10 $ fst $ (generateRandomScore [(1,0), (2,2), (3,3)] (mkStdGen 1)))
            (length $ filter (==1) values) `shouldBe` 0
        it "should only generate 3's" $ do
            values <- return (take 10 $ fst $ (generateRandomScore [(1,0), (2,0), (3,3)] (mkStdGen 1)))
            (length $ filter (==2) values) `shouldBe` 0
            (length $ filter (==1) values) `shouldBe` 0

