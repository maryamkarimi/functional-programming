-- Assignment : 4
-- Author : Maryam Karimi Firozjaei
-- Email : mkarimif@uwo.ca
-- This file includes a function pow that given a and n, computes a^n
-- This function is recursive and utilizes guard expressions - no built-in power operators

pow :: Integer->Integer->Integer
pow a n
 | n==0 = 1
 | otherwise = a * pow a (n-1)