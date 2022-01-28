a :: [Char]
a = "Hello World"

b :: [Char]
b = "Back at 8 est for Code Wars Challenge Problems!!!"

-- 1) practice practice practice
-- 2) Look up stuff on your own. stackoverflow, documentation
-- 3) other peoples solutions, don't reinvent the wheel. opens the door to new functions and syntax

-- DATA TYPES
-- 
-- Num
-- includes Double Float Int Integer and more
--
-- Float(single precision), Double (double precision)
-- 0.999, 1.3, -3.2, 0.0 etc
-- sqrt 99 :: Float, sqrt 99 :: Double
-- 
-- Int, Integer
-- -99, 23, 0, 838383 etc
-- 2^63, 2^63 :: Int, 2^63 :: Integer, 9223372036854775808 :: Int (this will give a warning)
--
-- Char
-- 'a', 'c', '\t', '\n', '\8371' etc
-- Unicode: Try running "putStr ['\t', '\8371', '\n']" 
-- 
-- Bool
-- True, False
--
-- List
-- [] [1,2,3] ['a','b','c'] ["andrew","david"] [(4,"age"), (5,"age")]
-- [[0,0], [0,4], [5,0]]
--
-- Tuples - strictly defined as opposed to lists
-- (0,0) := (0,0,0)

-- MATH OPERATIONS
{-

    + addition
    - subtraction / negation -> negation requires () around number
    ^ or ** exponents ^ for ints unless inputting a floating point ** or ^^ for floating points
    / division returns floating point. For integer division use `div` function
    mod returns remainder of integer division
    abs takes absolute value i.e. positive value
    sqrt returns square root
    pi returns pi
    signum returns whether input is pos 1 or neg -1 

-}

-- LIST OPERATIONS
{-

    ++ concats two lists
        i.e. "Hello" ++ " " ++ "World" -> returns "Hello World"
        i.e. "Hello " ++ name -> assumes name is a String/[Char]
    concat combines multiple list object
        i.e. concat["Hello", " ", "World"] -> returns "Hello World"
    reverse will reverse a list
        i.e. "Hello" -> "olleH" or [1,2,3,4,5] -> [5,4,3,2,1]
    head grabs the first value in list
    tail grabs all except the first value in list
    init grabs all items in list before last item
    last grabs the last item in a list

-}

-- MORE LIST OPERATIONS
{-

    length gets length of a list
    (!!) retrieve a value at index x
        i.e. "hello world" !! 4 -> returns out 'o' as index is 0 based
    (:) append an item to the front of a list
    [..] creates a ranged list
        i.e. [1..5] -> creates [1,2,3,4,5]
             [1,3..9] -> creates [1,3,5,7,9]
             [1..] -> creates infinite list from 1 onward. may be used with something like "take 5 [1..]"
             ['A'..'Z'] -> creates list of A-Z
    (<-) list comprehension generator
                        this generates values
                    n pulls out values generated 
               n value is passed to this statement
               result is put into beginning of final list         
        i.e. [n^2 | n <- [1..10]] -> creates a list of 1-10 but each number is squared
            inner list [1,2,3,4,5,6,7,8,9,10]
            so first n = 1 so n^2 would be 1^2 -> final list = [1]
            then n = 2 so n^2 would be 2^2 -> final list = [1,4]
            then n = 3 so n^2 would be 3^2 -> final list = [1,4,9]
            so on and so forth until final list = [1,4,9,16,25,36,49,64,81,100]

-}

-- BOOL COMPARISONS
{-

    NOTE: output of all following operations will be type Bool
    (==) check for equality
    (/=) check for inequality
    (>) greater than
    (<) less than
    (>=) greater than or equal to
    (<=) less than or equal to
    :info will give you operation priority
        
-}