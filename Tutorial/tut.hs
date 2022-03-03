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
