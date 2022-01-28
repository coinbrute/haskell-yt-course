import Data.List (delete)
import Text.Printf (printf)


-- https://www.codewars.com/kata/55a70521798b14d4750000a4/train/haskell
greeting :: String -> String
greeting name = "Hello, " ++ name ++ " how are you doing today?"

-- Alternative using string formatting
greetingFormatted :: String -> String
greetingFormatted = printf "Hello, %s how are you doing today?"

-- Alternative using dot inputs to pass output of one function as input into another
greetingTwoParts :: String -> String
greetingTwoParts = ("Hello, " ++) . (++ " how are you doing today?")

-- https://www.codewars.com/kata/57a0885cbb9944e24c00008e/train/haskell
removeExclamationMarks :: String -> String
removeExclamationMarks str = [c | c <- str, c /= '!' ]

-- Alternate
removeExclamationMarksWithFilter :: String -> String
removeExclamationMarksWithFilter = filter (/='!')

-- Alternate 2
removeExclamationMarksRecursion :: String -> String
removeExclamationMarksRecursion str =
    -- `elem` checks if '!' is in str 
    -- then recursively call function and delete '!' from str else return str
    if '!' `elem` str then removeExclamationMarks (delete '!' str) else str

-- https://www.codewars.com/kata/57a0e5c372292dd76d000d7e/train/haskell
-- _ is a throwaway value used during the count up
repeatStr :: Int -> String -> String
repeatStr n str = concat [str | _ <- [1..n]]

-- using sequencing
repeatStrSqn :: Int -> String -> String
repeatStrSqn n str = [1..n] >> str

-- using application operator and replicate function
-- $ works for higher order functions so -> a $ b $ c = a(b(c)) 
-- i.e. do everything on the right before the left
-- very similar to the dot operator
repeatStrReplicate :: Int -> String -> String
repeatStrReplicate n s = concat $ replicate n s -- same as concat (replicate n s)

repeatStrReplicate' :: Int -> String -> String
repeatStrReplicate' n s = concat (replicate n s)

repeatStrReplicate'' :: Int -> String -> String
repeatStrReplicate'' n  = concat . replicate n



-- https://www.codewars.com/kata/5966e33c4e686b508700002d/train/haskell
-- show takes input and converts to string
-- read takes input and will attempt to read as value typed as. 
sumStr :: String -> String -> String
sumStr a b = show $ readInt a + readInt b

readInt :: String -> Int
readInt "" = 0
readInt a = read a