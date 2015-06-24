clc 
// Given that
d = 5 // Diameter of hole in micro meter
h = 100 // Depth of hole in micro meter
// Sample Problem 2 on page no. 440
printf("\n # PROBLEM 7.2 # \n")
t = 31.58*(d*(exp(h/(60*d))-1))
printf("\n Time required to machine the hole = %f min",t)

