module Main where
import System.Environment

main :: IO ()
main = do
  putStrLn ("Type a name:")
  args <- getLine
  putStrLn ("Hello, " ++ args)