clc 
// Given that
t = 10 // time in days
r = 15 // percentage fraction of sample which remain 
// Sample Problem 14 on page no. 12.36
printf("\n # PROBLEM 14 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n N =N_0*e^(-lambda*t) \n")
lambda = log(100 / 15) / t
T = 0.693 / lambda
printf("\n Half life of sample is %f days.",T)
