-- Assignment : 4
-- Author : Maryam Karimi Firozjaei
-- Email : mkarimif@uwo.ca
-- This file includes a function hexStrToDec that takes a hexadecimal string and returns the equivalent value as a decimal integer.

import Data.Char (ord, toUpper, toLower)

hexStrToDec :: [Char] -> Int
hexStrToDec (x:y:xs) 
 | x == '0' && (y == 'x' || y== 'X') = hexStrToDec'(xs)
 | otherwise = hexStrToDec' (x:y:xs)

hexStrToDec' :: [Char] -> Int
hexStrToDec' [] = 0
hexStrToDec' (x:xs) 
 | getVal x == -1 = error "Non-hexadecimal digits present"
 | otherwise = ((getVal x) * (16^length xs))  + hexStrToDec' xs

-- Helper function: getVal gets a character and returns its value (e.g. A->10, 0->0, etc)
getVal :: Char -> Int
getVal c 
 | ch > '@' && ch < 'G' = ord ch - 55
 | ord ch > 47 && ord ch < 58 = ord ch - 48
 | otherwise = -1
 where ch = toUpper c