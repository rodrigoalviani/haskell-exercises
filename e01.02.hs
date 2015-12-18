module Main where
import System.Environment

main :: IO ()
main = do
  [a1] <- getArgs
  putStrLn ("You number plus 1: " ++ show ((read a1 :: Int) + 1))