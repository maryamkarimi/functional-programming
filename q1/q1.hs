-- Assignment : 4
-- Author : Maryam Karimi Firozjaei
-- Email : mkarimif@uwo.ca
-- This file includes a function mult that multiplies two numbers using only addition
-- This function is recursive and utilizes guard expressions

mult :: Integer->Integer->Integer
mult a b
 | b==0 = 0
 | otherwise = a + mult a (b-1)
