-- Assignment : 4
-- Author : Maryam Karimi Firozjaei
-- Email : mkarimif@uwo.ca
-- This file includes a function l33t that converts strings to l33t-speak

import Data.Char (ord, chr)

-- Helper function : gets a char and checks whether it's UpperCase/LowerCase/Non-letter
isUpper :: Char -> Char
isUpper c
 | c < '[' && c > '@'   = 'T'
 | c < '{' && c > '`' = 'F'
 | otherwise = 'N'

-- Helper function : gets a char and checks whether it's a vowel or not
isVowel :: Char -> Bool
isVowel c 
 | c == 'a' || c == 'A' || c == 'o' || c == 'O' || c == 'i' || c == 'I' || c == 'u' || c == 'U' || c == 'e' || c == 'E' = True
 | otherwise = False


􏰇-- All consonants are converted to (or left as) uppercase 􏰇 
-- e and E are converted to the number 3
􏰇-- i and I are converted to the number 1
􏰇-- All other vowels are converted to (or left as) lowercase 􏰇 
-- An exclamation mark is translated to !!!111oneone 􏰇 
-- All other characters are left unchanged
l33t :: [Char] -> [Char]
l33t [] = []
l33t (x:xs)
 | isVowel x == False && isUpper x == 'F' = chr (ord x - 32) : l33t xs 
 | x == 'e' || x == 'E' = '3': l33t xs
 | x == 'i' || x == 'I' = '1': l33t xs
 | isVowel x && isUpper x == 'T' = chr (ord x + 32) : l33t xs
 | x == '!' = '!':'!':'!':'1':'1':'1':'o':'n':'e':'o':'n':'e': l33t xs
 | otherwise = x: l33t xs