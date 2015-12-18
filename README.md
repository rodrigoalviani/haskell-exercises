# haskell-exercises


## First Steps

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


## Writing a Simple Parser

### Exercises
2.1 - Rewrite parseNumber, without liftM, using:
	2.1.1 - do-notation;
	2.1.2 - explicit sequencing with the >>= operator;

2.2 - Our strings aren't quite R5RS compliant, because they don't support escaping of internal quotes within the string. Change parseString so that \" gives a literal quote character instead of terminating the string. You may want to replace noneOf "\"" with a new parser action that accepts either a non-quote character or a backslash followed by a quote mark;

2.3 - Modify the previous exercise to support \n, \r, \t, \\, and any other desired escape characters;

2.4 - Change parseNumber to support the Scheme standard for different bases. You may find the readOct and readHex functions useful;

2.5 - Add a Character constructor to LispVal, and create a parser for character literals as described in R5RS;

2.6 - Add a Float constructor to LispVal, and support R5RS syntax for decimals. The Haskell function readFloat may be useful;

2.7 - Add data types and parsers to support the full numeric tower of Scheme numeric types. Haskell has built-in types to represent many of these; check the Prelude. For the others, you can define compound types that represent eg. a Rational as a numerator and denominator, or a Complex as a real and imaginary part (each itself a Real);
