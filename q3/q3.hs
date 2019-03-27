-- Assignment : 4
-- Author : Maryam Karimi Firozjaei
-- Email : mkarimif@uwo.ca
-- This file includes a function pow' that given a and n, computes a^n
-- This function is recursive and utilizes pattern matching

pow' :: Integer->Integer->Integer
pow' _ 0 = 1
pow' a n = a * pow' a (n-1)