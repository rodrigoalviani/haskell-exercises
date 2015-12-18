module Main where
import System.Environment

main :: IO ()
main = do
  [a1, a2] <- getArgs
  putStrLn ("Hello, " ++ a1 ++ " and " ++ a2)