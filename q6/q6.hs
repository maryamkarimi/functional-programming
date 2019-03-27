-- Assignment : 4
-- Author : Maryam Karimi Firozjaei
-- Email : mkarimif@uwo.ca
-- This file includes a Haskell implementation of merge sort

-- This function takes two sorted arrays and recursively merges them into a sorted array
merge :: [Int] -> [Int] -> [Int]
merge [] l = l
merge l [] = l
merge (x:xs) (y:ys)
 | x<y = x : merge (xs) (y:ys)
 | otherwise = y : merge (x:xs) (ys)

-- This function divides a list into halves, 
-- recursively merge sorts the two halves,
-- and then merges them back together into a sorted list
msort :: [Int] -> [Int]
msort [] = []
msort [x] = [x]
msort l = merge firstHalf secondHalf
 where firstHalf = msort (take ((length(l))`div`2) l)
       secondHalf = msort (drop ((length(l))`div`2) l)
 

