clc 
// Given that
t = 30 // time in years
r = 1 / 64 // ratio of final mass of element to the intial mass of element 
// Sample Problem 8 on page no. 12.34
printf("\n # PROBLEM 8 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n N =N_0*e^(-lambda*t) \n")
lambda = log(1 / r) / t
T = 0.693 / lambda
printf("\n Half life of radioactive material is %d years.",ceil(T))
