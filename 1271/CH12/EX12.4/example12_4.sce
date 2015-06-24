clc 
// Given that
t = 4 // half-life of radioactive element in years
r = 1 / 64 // ratio of mass of element present in specimen to the initial mass of element 
// Sample Problem 4 on page no. 12.33
printf("\n # PROBLEM 4 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n N =N_0*e^(-lambda*t) \n")
lambda = 0.693 / t
T = (1 / lambda) * log(1 / r)
printf("\n Time after which element present in specimen reduce to 1/64 of its original value is %d years.",T)
