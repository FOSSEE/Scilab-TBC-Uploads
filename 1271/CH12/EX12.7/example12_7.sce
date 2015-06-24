clc 
// Given that
lambda = 4.28e-4 // decay constant in per year
// Sample Problem 7 on page no. 12.34
printf("\n # PROBLEM 7 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n tau = 1/lambda \n")
T = 0.693 / lambda
t = 1 / lambda
printf("\n Half life time is %f years.\n Mean life time is %f years.",T,t)
