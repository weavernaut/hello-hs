import System.IO
import System.Random
import Data.Char

main = do
  hSetBuffering stdout LineBuffering
  putStrLn "What is your name?"
  name <- getLine
  insults <- fmap (lines . map toLower) getInsults
  i <- randomRIO (0, length insults - 1)
  putStrLn ("You " ++ insults !! i ++ ", " ++ name)

getInsults :: IO String
getInsults = readFile "insults.txt"
