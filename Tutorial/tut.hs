-- Comments 
{-
    This is a test comment
-}
-- To start enviroment run ghci in working dir and :l <filename> :r when you want to reload very vim like i love it

import Data.List
import System.IO

-- Haskell has type inference
-- Haskell is statically typed so can't switch type
-- int -2^63 to 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integers are unboned meaning as big as memory can handle

-- Double is a double precision floating point number
bigFloat = 3.99999999999 + 0.000000000005

-- Bool

-- Char

-- Tuple contain multiple types 

-- Const Values
always5 :: Int
always5 = 5

--------------------------------------------------------------------------------
-- Functions

sumOfNums = sum [1..1000]

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 8 / 4

-- Prefix - operator
modEx = mod 5 4  -- Remainder of 5/4
modEx2 = 5 `mod` 4 -- same as above but infix

negNumEx = 5 + (-4) -- have to surround negative number with parens like math

-- sqrt is floating point
-- revience a value and pops a value 
-- if is int

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999
sinVal = sin 0.5
cosVal = cos 0.5
tanVal = tan 0.5

trueAndFalse = True && False
trueOrFalse = True || False

-- Lists

primeNumbers = [3,5,7,11]

morePrimes = primeNumbers ++ [13,17,19,23,29] --Concatenate lists

favNums = 2 : 7 : 21 : 66 : [] -- : is cons operator combines numbers

multiList = [[3,5,7],[11,13,17],[19,23,29],[31,37,41]]

morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1

firstPrime = head morePrimes2

lastPrime = last morePrimes2

primeInit = init morePrimes2 -- removes last element

first3Primes = take 3 morePrimes2 --[2,3,5]

removedPrimes = drop 3 morePrimes2 --[7,11,13,17,19,23,29]

is7InList = 7 `elem` morePrimes2

maxPrime = maximum morePrimes2

minPrime = minimum morePrimes2

sumOfList = sum morePrimes2

newList = [2,3,5]

prodOfList = product newList -- product of list

zeroToTen = [0..10]

evenList = [2,4..20]

letterList = ['A','C'..'Z']

infinPow10 = [10,20..]

many2s = take 10 (repeat 2)

many3s = replicate 10 3

cycleList = take 10 (cycle [1,2,3,4,5])

listTimes2 = [x * 2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]

listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50] -- [3,6,9,12,15,18,21,24,27,30] values less than 50

divsBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0] -- only want numbers divisible by 9 and 13
                                                                  -- [117,234,351,468]
                                                                  --
sortedList = sort [9,1,8,3,4,7,6] -- [1,3,4,6,7,8,9]

sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10] -- [7,9,11,13,15]

listBiggerThen5 = filter (>5) morePrimes2 -- a list of primes greater than 5

evensUpTo20 = takeWhile (<= 20) [2,4..] -- [2,4,6,8,10,12,14,16,18,20] 
                                        -- uses infinList upto a number 

multOfList = foldl (*) 1 [2,3,4,5] -- multiply all numbers in list left (fold L) to right (120)

-- List comprehension

pow3List = [3^n | n <- [1..10]] -- raises each number in list to power of 3
                                -- [3,9,27,81,243,729,2187,6561,19683,59049]

-- Tuple

randTuple = (1, "Random Tuple")

tuplePair = ("The Arctesian" ,69)

tupleFirst = fst tuplePair

tupleLast = snd tuplePair

names = ["Hello Kitty", "新哆啦A夢", "貓咪"]

addresses = ["Pee Pee", "Poo Poo", "Bum Bum"]

namesNAddresses = zip names addresses -- [(Hello Kitty, Pee Pee), (新哆啦A夢, Poo Poo), (貓咪, Bum Bum)]

-- Functions 

main = do -- main function like c or rust
    putStrLn "What's your name?"
    name <- getLine -- getLine is a function that takes input from user
    putStrLn "Put in name"
    name <- getLine
    putStrLn ("Hello " ++ name)
