clc 
// Given that 
shi = 30 // Side cutting edge angle in Degree
lambda = 7 // End cutting edge angle in Degree
r = 0.7 // Nose radius in mm
f = 0.125 // Feed in mm
// Sample Problem 24 on page no. 260
printf("\n # PROBLEM 4.24 # \n")
H_max = f/(tand(shi)+cotd(lambda))
H_max_ = (f^2)/(8*r)
printf(" \n Maximum height of uneveness in first tool case = %f mm,\n In second tool case = %f mm",H_max,H_max_)
