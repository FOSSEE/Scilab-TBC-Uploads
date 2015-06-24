clc 
// Given that
t = 3.8 // half-life for radon in days
r = 60 // percentage fraction of sample which decayed 
// Sample Problem 6 on page no. 12.33
printf("\n # PROBLEM 6 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n N =N_0*e^(-lambda*t) \n")
lambda = 0.693 / t
T = (1 / lambda) * (log(100 / (100 - r)))
printf("\n Time taken for 60 percent decay of sample is %f days.",T)
