-- Assignment : 4
-- Author : Maryam Karimi Firozjaei
-- Email : mkarimif@uwo.ca
-- This file includes a Haskell implementation of insertion sort using insert function

-- insert takes a number x and a sorted list of numbers l. 
insert :: Int -> [Int] -> [Int]

-- This function returns a list of numbers with x inserted at the correct location in l
-- guards are used here
insert x [] = [x]
insert x (y:ys)
 | x <= y = x:y:ys
 | otherwise = y : insert x ys


-- isort takes a list of numbers l.
isort :: [Int] -> [Int]

--  Using recursion and the insert function, this function returns a list of numbers l′ sorted in ascending order
isort [] = []
isort l = insert (last(l)) (isort (take (length(l)-1) l))
