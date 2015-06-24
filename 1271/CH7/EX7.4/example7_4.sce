clc 
// Given that
A = 0.06 // amplitude in meter
T = 6 // time period of S.H.M. in sec
x = 0.03 // position of particle in meter
// Sample Problem 4 on page no. 7.23
printf("\n # PROBLEM 4 # \n")
delta = asin(1) // by the formula x=Asin(wt+delta) and (at t = 0,x=A) 
t = x / (A * sin(((2 * %pi) / T) + delta))
printf("\n Standard formula used \n x=Asin(wt+delta). \n ")
printf("\n Time taken by the particle = %f sec",t)
