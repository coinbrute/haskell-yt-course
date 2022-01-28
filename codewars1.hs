import Data.List ( sort )
-- https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/haskell
-- evenOrOdd takes one parameter named a of type Integral and spits out a Char array i.e. String 
-- the Integral a to the left of the => symbol strictly types the parameter to Integral data type
evenOrOdd :: Integral a => a -> [Char]
evenOrOdd n
    | odd n = "Odd" -- if odd
    | otherwise = "Even" -- else even

{-
func param
    | case 1 = return this
    | case 2 = return this
-}

evenOrOdd1Line :: Integral a => a -> [Char]
evenOrOdd1Line n = if even n then "Even" else "Odd"

-- using matching and recursion
evenOrOddRecursion :: Integral a => a -> [Char]
evenOrOddRecursion 0 = "Even" -- base case
evenOrOddRecursion 1 = "Odd" -- base case
evenOrOddRecursion n = evenOrOddRecursion (n `mod` 2) -- recursive call to keep making until base exit conditions are met
-- using bar matching
evenOrOddRecursionBars :: Integral a => a -> [Char]
evenOrOddRecursionBars n
    | n == 0 = "Even"
    | n == 1 = "Odd"
    | otherwise = evenOrOddRecursionBars (n `mod` 2)

-- https://www.codewars.com/kata/55f2b110f61eb01779000053/train/haskell
-- getSum takes two Ints and returns one Int
-- looking at the implementation it gets the min and max values between the two ints, creates a list of all Ints between them inclusively and then sums that list
getSum :: Int -> Int -> Int
getSum a b = sum [(min a b)..(max a b)]

-- option using where 
getSumAlt :: Int -> Int -> Int
getSumAlt a b = sum [minValue..maxValue]
    where minValue = min a b
          maxValue = max a b

-- option using recursion and if-then-else 
getSumAlt2 :: Int -> Int -> Int
getSumAlt2 a b =
    if a <= b then sum [a..b]
    else getSum b a

-- https://www.codewars.com/kata/57a429e253ba3381850000fb/train/haskell
bmi :: Float -> Float -> String
bmi weight height
    | n <= 18.5 = "Underweight"
    | n <= 25.0 = "Normal"
    | n <= 30.0 = "Overweight"
    | otherwise = "Obese"
    where n = weight / height ** 2 -- exponent can also be calc'd by height^2

-- case statement option with let declaration returning a tuple of bmi and weight class
bmi2 :: Float -> Float -> (Float,String)
bmi2 w h =
    let bmi = w / h ^ 2
    in case () of
        _
            | bmi <= 18.5 -> (bmi,"Underweight")
            | bmi <= 25.0 -> (bmi,"Normal")
            | bmi <= 30.0 -> (bmi,"Overweight")
            | otherwise -> (bmi,"Obese")

-- https://www.codewars.com/kata/5f70c883e10f9e0001c89673/train/haskell
-- returning list of ints
-- takes two inputs. one Char and a list of ints
gravityFlip :: Char -> [Int] -> [Int]
gravityFlip dir xs
    | dir == 'R' = sort xs
    | otherwise = reverse (sort xs)

-- https://www.codewars.com/kata/5168bb5dfe9a00b126000018/train/haskell
reverseString :: String -> String
reverseString = reverse

-- https://www.codewars.com/kata/5583090cbe83f4fd8c000051/train/haskell
-- convert int into list of ints from its digits and reverse
-- this takes n and passes it into map along with a function 
-- map then reads in each value of n parsing it as x and mapping to a list
-- reverse is then called on the output and returned as the value
digitize :: Int -> [Int]
digitize n = reverse (map (\x -> read [x] :: Int) (show n))