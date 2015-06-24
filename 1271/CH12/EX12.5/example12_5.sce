clc 
// Given that
t = 15 // half-life of radioactive element in years
r = 0.025 // ratio of mass of element present in specimen to the intial mass of element 
// Sample Problem 5 on page no. 12.33
printf("\n # PROBLEM 5 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n N =N_0*e^(-lambda*t) \n")
lambda = 0.693 / t
T = (1 / lambda) * log(1 / r)
printf("\n Period in which 2.5 percent of the initial quantity left over is %f years.",T)
