-- Assignment : 4
-- Author : Maryam Karimi Firozjaei
-- Email : mkarimif@uwo.ca
-- This file includes some finite and infinite lists using list comprehensions 

-- Part (a) : a list of all odd numbers from 1 to 10
odds = [2*x+1 | x <- [0..4]]

-- Part (b) : an in􏰂finite list of all positive, even numbers.
positiveEvens = [2*y | y <- [1..]]

-- Part (c) : an in􏰂nite list of the numbers 2^0,2^1,2^2,2^3,...
powersOfTwo = [2^y | y <- [0..]]

-- Helper for part (d)
isPrime x
  | x <= 1 = False
  | otherwise = null [k | k <- [2..x-1], x `mod` k == 0]

-- Part (d) : Build an infi􏰂nite list of primes & Return the 􏰂first n primes 
firstNPrimes n = take n primes
  where primes = [p | p<-[2..], isPrime p]