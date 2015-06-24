clc 
// Given that 
Z = 12 // No of teeth
d = 100 // Diameter of cutter in mm
N = 60 // Rpm of cutter
f = 25 // Table feed in mm/min
// Sample Problem 25 on page no. 262
printf("\n # PROBLEM 4.25 # \n")
H_max = (f^2)/(4*d*(N^2)*(Z^2))
printf(" \n Maximum height of uneveness = %f mm",H_max)
