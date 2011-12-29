import System.IO
import System.Random
import Data.Char

main = do
	hSetBuffering stdout LineBuffering
	putStrLn "What is your name?"
	name <- getLine
	k <- insults
	let s = lines (map toLower k)
	i <- randomRIO (0,length s -1)
	putStrLn ("You " ++ s !! i ++ ", " ++ name)

insults :: IO String
insults = readFile "insults.txt"