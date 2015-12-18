# haskell-exercises

## Example 1

```haskell
module Main where
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    putStrLn ("Hello, " ++ args !! 0)
```

### Exercises
1.1 - Change the program so it reads two arguments from the command line, and prints out a message using both of them;

1.2 - Change the program so it performs a simple arithmetic operation on the two arguments and prints out the result. You can use read to convert a string to a number, and show to convert a number back into a string. Play around with different operations;

1.3 - getLine is an IO action that reads a line from the console and returns it as a string. Change the program so it prompts for a name, reads the name, and then prints that instead of the command line value;